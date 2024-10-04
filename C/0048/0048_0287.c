
#include <stdio.h>
#include <string.h>
int main()
{
    char  *chara  =  "abcdefghijklmnopqrstuvwxyz";
    char  *charb  =  "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuv\
wxyz";
    char   charc  =  'a';
#if defined(__GNUC__)
    char   chard  =  'ba';
    char   chare  =  'cba';
    char   charf  =  'dcba';
#else
    char   chard  =  'ab';
    char   chare  =  'abc';
    char   charf  =  'abcd';
#endif

    printf(" START\n");

    if (strcmp(chara,  "abcdefghijklmnopqrstuvwxyz"))
        printf("ng1: %s\n",chara);
    if (strcmp(charb,  "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"))
        printf("ng2: %s\n",charb);
    if (charc != 'a') printf("ng3: %c\n",charc);
    if (chard != 'a') printf("ng4: %c\n",chard);
    if (chare != 'a') printf("ng5: %c\n",chare);
    if (charf != 'a') printf("ng6: %c\n",charf);

    printf(" END\n");
}
