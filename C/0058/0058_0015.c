

#include <stdio.h>
#include <assert.h>
#include <unistd.h>

#define FILE_NAME "test_w_bx.txt"

void test(){ 
    if (access(FILE_NAME, 0)==0){  
        remove(FILE_NAME);
    }
    FILE* fp = fopen(FILE_NAME, "w+bx");
    assert (fp!=NULL);
    fclose(fp);      
    remove(FILE_NAME);
}

int main(){
    test();
}