#include <stdio.h>

#if defined(i386)
#define LITTLE_ENDIAN 1
#endif
int main()
{
    const struct tag1 {
                        char        cstca;
                        int         cstia;
                        double      cstda;
                      } cst1 = { 255,2147483647,128000e-3};

    struct       tag2 {
                        short int         stsia;
                        unsigned int      stuia;
                        long long int     stllia;
                      } st2;

    volatile union tag3 {
                          char       vunca;
                          short int  vunsia;
                          long int   vunlia;
                        } vun3;

    union          tag4 {
                          int        unia;
                          short int  unsia;
                          char       unca;
                        } un4;

    volatile struct tag5 {
                           float       vstfa;
                           double      vstda;
                           long double vstlda;
                         } *vst5,vst5a;

    struct          tag6 {
                           char       stca;
                           int        stia;
                           long int   stlia;
                         } *st6,st6a;

    const static union tag7 {
                           char       cunca;
                           short int  cunsia;
                           int        cunia;
                         } cun7a = { 2147483647 },*cun7;

    union           tag8 {
                           int        unia;
                           short int  unsia;
                           char       unca;
                         } *un8,un8a;

    st2.stsia  = 32767;
    st2.stuia  = 4294967295;
    st2.stllia = 9223372036854775807LL;

    vun3.vunca  = 255;
    vun3.vunsia = 32767;
    vun3.vunlia = 2147483647;

    un4.unia    = -2147483648;
    un4.unsia   = -32768;
    un4.unca    = -128;

    vst5 = &vst5a;
    vst5->vstfa  = 0.256e+3;
    vst5->vstda  = 51200000e-5;
    vst5->vstlda = 0.0000001024e+10;

    st6 = &st6a;
    st6->stca  = 127;
    st6->stia  = 2147483647;
    st6->stlia = -2147483648;

    un8 = &un8a;
    un8->unia  = 0;
    un8->unsia = 0;
    un8->unca  = 0xff;

    printf("*** TEST FOR EXPRESSION ***STARTED\n");

    if(cst1.cstca == -1)
        printf("***-01*** O     K ***\n");
    else
        printf("***-01*** N     G *** : %llx\n",cst1.cstca);

#if defined(S_CHAR) || defined(__GNUC__)
    if((&cst1)->cstca == -1)
#else
    if((&cst1)->cstca == 255)
#endif
        printf("***-02*** O     K ***\n");
    else
        printf("***-02*** N     G ***\n");

    if(cst1.cstia == 2147483647)
        printf("***-03*** O     K ***\n");
    else
        printf("***-03*** N     G ***\n");
    if((&cst1)->cstia == 2147483647)
        printf("***-04*** O     K ***\n");
    else
        printf("***-04*** N     G ***\n");

    if(cst1.cstda == 128)
        printf("***-05*** O     K ***\n");
    else
        printf("***-05*** N     G ***\n");
    if((&cst1)->cstda == 128)
        printf("***-06*** O     K ***\n");
    else
        printf("***-06*** N     G ***\n");

    if(st2.stsia == 32767)
        printf("***-07*** O     K ***\n");
    else
        printf("***-07*** N     G ***\n");
    if((&st2)->stsia == 32767)
        printf("***-08*** O     K ***\n");
    else
        printf("***-08*** N     G ***\n");

    if(st2.stuia == 4294967295)
        printf("***-09*** O     K ***\n");
    else
        printf("***-09*** N     G ***\n");
    if((&st2)->stuia == 4294967295)
        printf("***-10*** O     K ***\n");
    else
        printf("***-10*** N     G ***\n");

    if(st2.stllia == 9223372036854775807LL)
        printf("***-11*** O     K ***\n");
    else
        printf("***-11*** N     G ***\n");
    if((&st2)->stllia == 9223372036854775807LL)
        printf("***-12*** O     K ***\n");
    else
        printf("***-12*** N     G ***\n");

#if INT64||LONG64  
    if(vun3.vunca == 0)
        printf("***-13*** O     K ***\n");
    else
        printf("***-13*** N     G *** : %llx\n",vun3.vunca);
#elif LITTLE_ENDIAN ||__x86_64__ || __aarch64__
    if(vun3.vunca == -1)
        printf("***-13*** O     K ***\n");
    else
        printf("***-13*** N     G *** : %x\n",vun3.vunca);
#else
    if(vun3.vunca == 127)
        printf("***-13*** O     K ***\n");
    else
        printf("***-13*** N     G *** : %x\n",vun3.vunca);
#endif

#if INT64||LONG64  
    if((&vun3)->vunca == 0)
        printf("***-14*** O     K ***\n");
    else
        printf("***-14*** N     G *** : %llx\n",(&vun3)->vunca);
#elif LITTLE_ENDIAN ||__x86_64__ || __aarch64__
    if((&vun3)->vunca == -1)
        printf("***-14*** O     K ***\n");
    else
        printf("***-14*** N     G *** : %x\n",(&vun3)->vunca);
#else
    if((&vun3)->vunca == 127)
        printf("***-14*** O     K ***\n");
    else
        printf("***-14*** N     G *** : %x\n",(&vun3)->vunca);
#endif

#if INT64||LONG64  
    if(vun3.vunsia == 0)
        printf("***-15*** O     K ***\n");
    else
        printf("***-15*** N     G *** : %llx\n",vun3.vunsia);
#elif LITTLE_ENDIAN ||__x86_64__ || __aarch64__
    if(vun3.vunsia == -1)
        printf("***-15*** O     K ***\n");
    else
        printf("***-15*** N     G *** : %x\n",vun3.vunsia);
#else
    if(vun3.vunsia == 32767)
        printf("***-15*** O     K ***\n");
    else
        printf("***-15*** N     G *** : %x\n",vun3.vunsia);
#endif

#if INT64||LONG64  
    if((&vun3)->vunsia == 0)
        printf("***-16*** O     K ***\n");
    else
        printf("***-16*** N     G *** : %llx\n",(&vun3)->vunsia);
#elif LITTLE_ENDIAN ||__x86_64__ || __aarch64__
    if((&vun3)->vunsia == -1)
        printf("***-16*** O     K ***\n");
    else
        printf("***-16*** N     G *** : %x\n",(&vun3)->vunsia);
#else
    if((&vun3)->vunsia == 32767)
        printf("***-16*** O     K ***\n");
    else
        printf("***-16*** N     G *** : %x\n",(&vun3)->vunsia);
#endif

    if(vun3.vunlia == 2147483647)
        printf("***-17*** O     K ***\n");
    else
        printf("***-17*** N     G ***\n");
    if((&vun3)->vunlia == 2147483647)
        printf("***-18*** O     K ***\n");
    else
        printf("***-18*** N     G ***\n");

#if INT64
    if(un4.unia == 0x8000ffff80000000)
        printf("***-19*** O     K ***\n");
    else
        printf("***-19*** N     G *** : %llx\n",un4.unia);
#elif LITTLE_ENDIAN ||__x86_64__ || __aarch64__
    if(un4.unia == 0x80008080)
        printf("***-19*** O     K ***\n");
    else
        printf("***-19*** N     G *** : %x\n",un4.unia);
#else
    if(un4.unia == -2147483648)
        printf("***-19*** O     K ***\n");
    else
        printf("***-19*** N     G *** : %x\n",un4.unia);
#endif

#if INT64
    if((&un4)->unia == 0x8000ffff80000000)
        printf("***-20*** O     K ***\n");
    else
        printf("***-20*** N     G *** : %llx\n",(&un4)->unia);
#elif LITTLE_ENDIAN ||__x86_64__ || __aarch64__
    if((&un4)->unia == 0x80008080)
        printf("***-20*** O     K ***\n");
    else
        printf("***-20*** N     G *** : %x\n",(&un4)->unia);
#else
    if((&un4)->unia == -2147483648)
        printf("***-20*** O     K ***\n");
    else
        printf("***-20*** N     G *** : %x\n",(&un4)->unia);
#endif

#if LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(un4.unsia == 0xffff8080)
#else
    if(un4.unsia == -32768)
#endif
        printf("***-21*** O     K ***\n");
    else
        printf("***-21*** N     G ***\n%x\n",un4.unsia);

#if LITTLE_ENDIAN  || __x86_64__ || __aarch64__
    if((&un4)->unsia == 0xffff8080)
#else
    if((&un4)->unsia == -32768)
#endif
        printf("***-22*** O     K ***\n");
    else
        printf("***-22*** N     G ***\n");

#if defined(S_CHAR) || defined(__GNUC__)
    if(un4.unca == -128)
#else
    if(un4.unca == 128)
#endif
        printf("***-23*** O     K ***\n");
    else
        printf("***-23*** N     G ***\n");

#if defined(S_CHAR) || defined(__GNUC__)
    if((&un4)->unca == -128)
#else
    if((&un4)->unca == 128)
#endif
        printf("***-24*** O     K ***\n");
    else
        printf("***-24*** N     G ***\n");

    if(vst5->vstfa == 256)
        printf("***-25*** O     K ***\n");
    else
        printf("***-25*** N     G ***\n");
    if((*vst5).vstfa == 256)
        printf("***-26*** O     K ***\n");
    else
        printf("***-26*** N     G ***\n");

    if(vst5->vstda == 512)
        printf("***-27*** O     K ***\n");
    else
        printf("***-27*** N     G ***\n");
    if((*vst5).vstda == 512)
        printf("***-28*** O     K ***\n");
    else
        printf("***-28*** N     G ***\n");

    if(vst5->vstlda == 1024)
        printf("***-29*** O     K ***\n");
    else
        printf("***-29*** N     G ***\n");
    if((*vst5).vstlda == 1024)
        printf("***-30*** O     K ***\n");
    else
        printf("***-30*** N     G ***\n");

    if(st6->stca == 127)
        printf("***-31*** O     K ***\n");
    else
        printf("***-31*** N     G ***\n");
    if((*st6).stca == 127)
        printf("***-32*** O     K ***\n");
    else
        printf("***-32*** N     G ***\n");

    if(st6->stia == 2147483647)
        printf("***-33*** O     K ***\n");
    else
        printf("***-33*** N     G ***\n");
    if((*st6).stia == 2147483647)
        printf("***-34*** O     K ***\n");
    else
        printf("***-34*** N     G ***\n");

    if(st6->stlia == -2147483648)
        printf("***-35*** O     K ***\n");
    else
        printf("***-35*** N     G ***\n");
    if((*st6).stlia == -2147483648)
        printf("***-36*** O     K ***\n");
    else
        printf("***-36*** N     G ***\n");

    cun7 = &cun7a;
#if INT64
    if(cun7->cunca == 0xffffffffffffffff)
#else
    if(cun7->cunca == 0xffffffff)
#endif
        printf("***-37*** O     K ***\n");
    else
        printf("***-37*** N     G *** : %llx\n",cun7->cunca);

#if INT64
    if((*cun7).cunca == 0xffffffffffffffff)
#else
    if((*cun7).cunca == 0xffffffff)
#endif
        printf("***-38*** O     K ***\n");
    else
        printf("***-38*** N     G *** : %llx\n",(*cun7).cunca);

#if INT64
    if(cun7->cunsia == 0xffffffffffffff00)
#elif LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(cun7->cunsia == 0xff)
#else
    if(cun7->cunsia == 0xffffff00)
#endif
        printf("***-39*** O     K ***\n");
    else
        printf("***-39*** N     G ***\n%x\n",cun7->cunsia);

#if INT64
    if((*cun7).cunsia == 0xffffffffffffff00)
#elif LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if((*cun7).cunsia == 0xff)
#else
    if((*cun7).cunsia == 0xffffff00)
#endif
        printf("***-40*** O     K ***\n");
    else
        printf("***-40*** N     G ***\n");

#if INT64
    if(cun7->cunia == 0xff00000000000000)
        printf("***-41*** O     K ***\n");
    else
        printf("***-41*** N     G *** : %llx\n",cun7->cunia);
#elif LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(cun7->cunia == 0xff)
        printf("***-41*** O     K ***\n");
    else
        printf("***-41*** N     G *** : %x\n",cun7->cunia);
#else
    if(cun7->cunia == 0xff000000)
        printf("***-41*** O     K ***\n");
    else
        printf("***-41*** N     G *** : %x\n",cun7->cunia);
#endif

#if INT64
    if((*cun7).cunia == 0xff00000000000000)
#elif LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if((*cun7).cunia == 0xff)
#else
    if((*cun7).cunia == 0xff000000)
#endif
        printf("***-42*** O     K ***\n");
    else
        printf("***-42*** N     G ***\n");

#if INT64
    if(un8->unia == 0xff00000000000000)
#elif LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(un8->unia == 0xff)
#else
    if(un8->unia == 0xff000000)
#endif
        printf("***-43*** O     K ***\n");
    else
        printf("***-43*** N     G ***\n");

#if INT64
    if((*un8).unia == 0xff00000000000000)
#elif LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if((*un8).unia == 0xff)
#else
    if((*un8).unia == 0xff000000)
#endif
        printf("***-44*** O     K ***\n");
    else
        printf("***-44*** N     G ***\n");

#if INT64
    if(un8->unsia == 0xffffffffffffff00)
#elif LITTLE_ENDIAN || __x86_64__ || __aarch64__
    if(un8->unsia == 0xff)
#else
    if(un8->unsia == 0xffffff00)
#endif
        printf("***-45*** O     K ***\n");
    else
        printf("***-45*** N     G ***\n");

#if INT64
    if((*un8).unsia == 0xffffffffffffff00)
#elif LITTLE_ENDIAN || __x86_64__  || __aarch64__
    if((*un8).unsia == 0xff)
#else
    if((*un8).unsia == 0xffffff00)
#endif
        printf("***-46*** O     K ***\n");
    else
        printf("***-46*** N     G ***\n");

#if INT64
    if(un8->unca == 0xffffffffffffffff)
#else
    if(un8->unca == 0xffffffff)
#endif
        printf("***-47*** O     K ***\n");
    else
        printf("***-47**** N   G ****\n");
#if INT64
    if((*un8).unca == 0xffffffffffffffff)
#else
    if((*un8).unca == 0xffffffff)
#endif
        printf("***-48*** O     K ***\n");
    else
        printf("***-48**** N   G ****\n");

    printf("*** TEST FOR EXPRESSION ***ENDED\n");

}
