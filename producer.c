#include <stdio.h>
#include "shared_buffer.h"
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <stdbool.h>

struct shared_use_st* shared_stbuff;


int main() {

    int shmid = shmget((key_t)1234, sizeof(shared_stbuff), 0666 | IPC_CREAT);
    printf("%d\n", shmid);

    shared_stbuff =(struct shared_use_st *) shmat(shmid, NULL, 0);
    printf("Memoria anexada em %X\n", (int)shared_stbuff);

    shared_stbuff->in = 0;
    shared_stbuff->out = 0;
    shared_stbuff->count = 0;
    char strchar[VECTOR_SZ];

    while(true){

        while (shared_stbuff->count == BUFFER_SZ);
        // Wait

        printf("Digite a mensagem a ser consumida: ");

        fgets(strchar, VECTOR_SZ, stdin);

        strncpy(shared_stbuff[shared_stbuff->in].some_text, strchar, sizeof(strchar));
        printf("Produtor: %s at index %d\n", strchar, shared_stbuff->in);

        shared_stbuff->in = (shared_stbuff->in +1) % BUFFER_SZ;
        shared_stbuff->count++;
        sleep(1);
    }

}
