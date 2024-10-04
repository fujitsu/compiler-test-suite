#include <stdio.h>
int main()
{
    struct tag1 {
           int  stia;
           struct {
                int  stib;
                struct {
                     int  stic;
                     struct {
                          int  stid;
                          struct {
                               int  stie;
                               struct {
                                    int  stif;
                                    struct {
                                         int  stig;
                                         struct {
                                              int  stih;
                                              struct {
                                                   int  stii;
                                                   struct {
                                                        int  stij;
                                                        struct {
                                                             int  stik;
                                                               } st11;
                                                          } st10;
                                                     } st9;
                                                } st8;
                                           } st7;
                                      } st6;
                                 } st5;
                            } st4;
                       } st3;
                  } st2;
             } st1;

    union tag2 {
           int  unia;
           union {
                int  unib;
                union {
                     int  unic;
                     union {
                          int  unid;
                          union {
                               int  unie;
                               union {
                                    int  unif;
                                    union {
                                         int  unig;
                                         union {
                                              int  unih;
                                              union {
                                                   int  unii;
                                                   union {
                                                        int  unij;
                                                        union {
                                                             int  unik;
                                                               } un11;
                                                          } un10;
                                                     } un9;
                                                } un8;
                                           } un7;
                                      } un6;
                                 } un5;
                            } un4;
                       } un3;
                  } un2;
             } un1;

    st1.stia = 1;
    st1.st2.stib = 2;
    st1.st2.st3.stic = 3;
    st1.st2.st3.st4.stid = 4;
    st1.st2.st3.st4.st5.stie = 5;
    st1.st2.st3.st4.st5.st6.stif = 6;
    st1.st2.st3.st4.st5.st6.st7.stig = 7;
    st1.st2.st3.st4.st5.st6.st7.st8.stih = 8;
    st1.st2.st3.st4.st5.st6.st7.st8.st9.stii = 9;
    st1.st2.st3.st4.st5.st6.st7.st8.st9.st10.stij = 10;
    st1.st2.st3.st4.st5.st6.st7.st8.st9.st10.st11.stik = 11;

    un1.un2.un3.un4.un5.un6.unif = 2147483647;

    printf("*** TEST FOR EXPRESSION *** STARTED\n");

    if(st1.stia == 1)
        printf("***-01*** O     K ***\n");
    else
        printf("***-01*** N     G ***\n");

    if(st1.st2.stib == 2)
        printf("***-02*** O     K ***\n");
    else
        printf("***-02*** N     G ***\n");

    if(st1.st2.st3.stic == 3)
        printf("***-03*** O     K ***\n");
    else
        printf("***-03*** N     G ***\n");

    if(st1.st2.st3.st4.stid == 4)
        printf("***-04*** O     K ***\n");
    else
        printf("***-04*** N     G ***\n");

    if(st1.st2.st3.st4.st5.stie == 5)
        printf("***-05*** O     K ***\n");
    else
        printf("***-05*** N     G ***\n");

    if(st1.st2.st3.st4.st5.st6.stif == 6)
        printf("***-06*** O     K ***\n");
    else
        printf("***-06*** N     G ***\n");

    if(st1.st2.st3.st4.st5.st6.st7.stig == 7)
        printf("***-07*** O     K ***\n");
    else
        printf("***-07*** N     G ***\n");

    if(st1.st2.st3.st4.st5.st6.st7.st8.stih == 8)
        printf("***-08*** O     K ***\n");
    else
        printf("***-08*** N     G ***\n");

    if(st1.st2.st3.st4.st5.st6.st7.st8.st9.stii == 9)
        printf("***-09*** O     K ***\n");
    else
        printf("***-09*** N     G ***\n");

    if(st1.st2.st3.st4.st5.st6.st7.st8.st9.st10.stij == 10)
        printf("***-10*** O     K ***\n");
    else
        printf("***-10*** N     G ***\n");

    if(st1.st2.st3.st4.st5.st6.st7.st8.st9.st10.st11.stik == 11)
        printf("***-11*** O     K ***\n");
    else
        printf("***-11*** N     G ***\n");

    if(un1.unia == 2147483647)
        printf("***-12*** O     K ***\n");
    else
        printf("***-12*** N     G ***\n");

    if(un1.un2.unib == 2147483647)
        printf("***-13*** O     K ***\n");
    else
        printf("***-13*** N     G ***\n");

    if(un1.un2.un3.unic == 2147483647)
        printf("***-14*** O     K ***\n");
    else
        printf("***-14*** N     G ***\n");

    if(un1.un2.un3.un4.unid == 2147483647)
        printf("***-15*** O     K ***\n");
    else
        printf("***-15*** N     G ***\n");

    if(un1.un2.un3.un4.un5.unie == 2147483647)
        printf("***-16*** O     K ***\n");
    else
        printf("***-16*** N     G ***\n");

    if(un1.un2.un3.un4.un5.un6.unif == 2147483647)
        printf("***-17*** O     K ***\n");
    else
        printf("***-17*** N     G ***\n");

    if(un1.un2.un3.un4.un5.un6.un7.unig == 2147483647)
        printf("***-18*** O     K ***\n");
    else
        printf("***-18*** N     G ***\n");

    if(un1.un2.un3.un4.un5.un6.un7.un8.unih == 2147483647)
        printf("***-19*** O     K ***\n");
    else
        printf("***-19*** N     G ***\n");

    if(un1.un2.un3.un4.un5.un6.un7.un8.un9.unii == 2147483647)
        printf("***-20*** O     K ***\n");
    else
        printf("***-20*** N     G ***\n");

    if(un1.un2.un3.un4.un5.un6.un7.un8.un9.un10.unij == 2147483647)
        printf("***-21*** O     K ***\n");
    else
        printf("***-21*** N     G ***\n");

    if(un1.un2.un3.un4.un5.un6.un7.un8.un9.un10.un11.unik == 2147483647)
        printf("***-22*** O     K ***\n");
    else
        printf("***-22*** N     G ***\n");

    printf("*** TEST FOR EXPRESSION *** ENDED\n");
}
