//
// Created by willian on 16/03/2022.
//

#ifndef SHARED_BUFFER_C_SHARED_BUFFER_H
#define SHARED_BUFFER_C_SHARED_BUFFER_H
#define TEXT_SZ 2048

struct shared_use_st {
    int written_by_you;
    char some_text[TEXT_SZ];
};


#endif //SHARED_BUFFER_C_SHARED_BUFFER_H
