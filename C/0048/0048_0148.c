#include <stdio.h>

#if defined(i386)
#define LITTLE_ENDIAN 1
#endif
int main()
{
   static struct tag1 {
                        int    ia;
                        char   ca;
                      } st[10] = { 2147483647,255 };

          union  tag2 {
                        char   ca;
                        int    ia;
                      } un[10] = { 255 };

    st[1] = st[2] = st[3] = st[4] = st[5] = st[6] = st[7]=
    st[8] = st[9] = st[0];

    un[1] = un[2] = un[3] = un[4]
    = un[5]= un[6]= un[7]= un[8] = un[9] = un[0];

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(st[3].ia == 2147483647)
        printf("***-01*** O     K ***\n");
    else
        printf("***-01*** N     G ***\n");

    if((&st[5])->ia == 2147483647)
        printf("***-02*** O     K ***\n");
    else
        printf("***-02*** N     G ***\n");

#if defined(S_CHAR) || defined(__GNUC__)
    if(st[7].ca == -1)
#else
    if(st[7].ca == 255)
#endif
        printf("***-03*** O     K ***\n");
    else
        printf("***-03*** N     G ***\n");

#if defined(S_CHAR) || defined(__GNUC__)
    if((&st[9])->ca == -1)
#else
    if((&st[9])->ca == 255)
#endif
        printf("***-04*** O     K ***\n");
    else
        printf("***-04*** N     G ***\n");

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(un[3].ia == 0xff)
#else
    if(un[3].ia == 0xff000000)
#endif
        printf("***-05*** O     K ***\n");
    else
        printf("***-05*** N     G ***\n");

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if((&un[5])->ia == 0xff)
#else
    if((&un[5])->ia == 0xff000000)
#endif
        printf("***-06*** O     K ***\n");
    else
        printf("***-06*** N     G ***\n");

#if defined(S_CHAR) || defined(__GNUC__)
    if(un[7].ca == -1)
#else
    if(un[7].ca == 255)
#endif
        printf("***-07*** O     K ***\n");
    else
        printf("***-07*** N     G ***\n");

#if defined(S_CHAR) || defined(__GNUC__)
    if((&un[9])->ca == -1)
#else
    if((&un[9])->ca == 255)
#endif
        printf("***-08*** O     K ***\n");
    else
        printf("***-08*** N     G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
