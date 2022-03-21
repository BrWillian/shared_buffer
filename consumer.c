//
// Created by willian on 16/03/2022.
//

#include <stdio.h>
#include "shared_buffer.h"
#include <sys/ipc.h>
#include <sys/shm.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>
#include <stdbool.h>

struct shared_use_st* shared_stbuff;


int main(){
    int shmid = shmget((key_t)1234, sizeof(shared_stbuff), 0666 | IPC_CREAT);
    printf("%d\n", shmid);

    shared_stbuff =(struct shared_use_st *) shmat(shmid, NULL, 0);
    printf("Memoria anexada em %X\n", (int)shared_stbuff);

    while(true)
    {
        printf("Consumer : attempting to read\n");
        while(shared_stbuff->count == 0)
            ;	//WAIT

        shared_stbuff->count-- ;
        int nc = shared_stbuff->some_text[shared_stbuff->out];

        printf("Consumer: %s ant index %d\n", shared_stbuff[shared_stbuff->out].some_text, shared_stbuff->out);

        shared_stbuff->out = (shared_stbuff->out + 1) % BUFFER_SZ;

        sleep(1);
    }

}
