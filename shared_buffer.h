//
// Created by willian on 16/03/2022.
//

#ifndef SHARED_BUFFER_C_SHARED_BUFFER_H
#define SHARED_BUFFER_C_SHARED_BUFFER_H
#define VECTOR_SZ 10000

struct shared_use_st {
    int flag_lock;
    char some_text[VECTOR_SZ];
};

#endif //SHARED_BUFFER_C_SHARED_BUFFER_H
