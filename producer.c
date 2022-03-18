#include <stdio.h>
#include "shared_buffer.h"
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <time.h>
#include <stdbool.h>

struct shared_use_st* shared_stbuff;

int main() {
    void *shared_memory = (void *) 0;

    srand((unsigned int) time(NULL));

    int shmid = shmget((key_t)1234, sizeof(shared_stbuff), 0666 | IPC_CREAT);
    printf("%d\n", shmid);

    shared_stbuff =(struct shared_use_st *) shmat(shmid, NULL, 0);
    printf("Memoria anexada em %X\n", (int)shared_stbuff);

    shared_stbuff->in = 0;
    shared_stbuff->out = 0;
    shared_stbuff->count = 0;

    while(true){

        int np = rand()%1000;

        while (shared_stbuff->count == VECTOR_SZ);
        // Wait

        shared_stbuff->some_text[shared_stbuff->in] = np;
        printf("Producer : wrote, %d at index %d\n", np, shared_stbuff->in);
        shared_stbuff->in = (shared_stbuff->in +1) % VECTOR_SZ;
        shared_stbuff->count++;
        sleep(1);
    }

}
