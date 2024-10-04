#include <stdio.h>

#if defined(i386)
#define LITTLE_ENDIAN 1
#endif
int main()
{
    int            *pia;
    int            **ppib;
    int            ic = 2147483647;

    struct tag1 {
                  char       stca;
                  int        stia;
                  double     stda;
                } *pst,st1;

    union  tag2 {
                  char       unca;
                  short int  unsa;
                  int        unia;
                } *pun,un1;

    static int    arr[10] = { 0,1,2,3,4,5,6,7,8,9 };

    enum   tag3 { a,b,c,d,e,f,g,h,i,j,k,l,m,n } en,*pen;

    int    (*pfunc)(),func1();

    st1.stca  =  127;
    st1.stia  =  2147483647;
    st1.stda  =  1234567890000e-4;

    un1.unia  =  2147483647;


    printf("*** TEST FOR EXPRESSION *** STARTED\n\n");

    pia = &ic;
    ppib = &pia;
    if(**ppib == 2147483647)
        printf("***-01*** O     K ***\n");
    else
        printf("***-01*** N     G ***\n");

    pst = &st1;
    if((*pst).stca == 127)
        printf("***-02*** O     K ***\n");
    else
        printf("***-02*** N     G ***\n");

    if((*pst).stia == 2147483647)
        printf("***-03*** O     K ***\n");
    else
        printf("***-03*** N     G ***\n");

    if((*pst).stda == 1234567890000e-4)
        printf("***-04*** O     K ***\n");
    else
        printf("***-04*** N     G ***\n");

    pun = &un1;

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if((*pun).unca == -1)
#else
    if((*pun).unca == 127)
#endif
        printf("***-05*** O     K ***\n");
    else
        printf("***-05*** N     G ***\n");

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if((*pun).unsa ==  -1)
#else
    if((*pun).unsa ==  32767)
#endif
        printf("***-06*** O     K ***\n");
    else
        printf("***-06*** N     G ***\n");

    if((*pun).unia == 2147483647)
        printf("***-07*** O     K ***\n");
    else
        printf("***-07*** N     G ***\n");

    if(arr[5] == 5)
        printf("***-08*** O     K ***\n");
    else
        printf("***-08*** N     G ***\n");

    pen = &en;
    *pen = c;
    if(*pen == 2)
        printf("***-09*** O     K ***\n");
    else
        printf("***-09*** N     G ***\n");

    pfunc = func1;
    (*(&pfunc))();
}

int  func1()
{
    printf("***-10*** O     K ***\n");
}
