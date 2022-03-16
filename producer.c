#include <stdio.h>
#include "shared_buffer.h"
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <time.h>
#include <stdbool.h>

int main() {
    void *shared_memory = (void *) 0;
    struct shared_use_st *shared_stbuff;
    srand((unsigned int) time(NULL));

    int shmid = shmget((key_t)1234, sizeof(struct shared_use_st), 0666 | IPC_CREAT);

    shared_memory = shmat(shmid, (void *)0, 0);

    printf("Memoria anexada em %X\n", (int)shared_memory);

    while(true){


    }

}
