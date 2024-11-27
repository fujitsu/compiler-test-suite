#include <stdlib.h>
#include <stdio.h>
#include <math.h>
  
 
 
 
 
 
 
 
 

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

    printf("\n");

    if(st1.stia == 1)
        printf("***\n");
    else
        printf("***\n");

    if(st1.st2.stib == 2)
        printf("***\n");
    else
        printf("***\n");

    if(st1.st2.st3.stic == 3)
        printf("***\n");
    else
        printf("***\n");

    if(st1.st2.st3.st4.stid == 4)
        printf("***\n");
    else
        printf("***\n");

    if(st1.st2.st3.st4.st5.stie == 5)
        printf("***\n");
    else
        printf("***\n");

    if(st1.st2.st3.st4.st5.st6.stif == 6)
        printf("***\n");
    else
        printf("***\n");

    if(st1.st2.st3.st4.st5.st6.st7.stig == 7)
        printf("***\n");
    else
        printf("***\n");

    if(st1.st2.st3.st4.st5.st6.st7.st8.stih == 8)
        printf("***\n");
    else
        printf("***\n");

    if(st1.st2.st3.st4.st5.st6.st7.st8.st9.stii == 9)
        printf("***\n");
    else
        printf("***\n");

    if(st1.st2.st3.st4.st5.st6.st7.st8.st9.st10.stij == 10)
        printf("***\n");
    else
        printf("***\n");

    if(st1.st2.st3.st4.st5.st6.st7.st8.st9.st10.st11.stik == 11)
        printf("***\n");
    else
        printf("***\n");

    if(un1.unia == 2147483647)
        printf("***\n");
    else
        printf("***\n");

    if(un1.un2.unib == 2147483647)
        printf("***\n");
    else
        printf("***\n");

    if(un1.un2.un3.unic == 2147483647)
        printf("***\n");
    else
        printf("***\n");

    if(un1.un2.un3.un4.unid == 2147483647)
        printf("***\n");
    else
        printf("***\n");

    if(un1.un2.un3.un4.un5.unie == 2147483647)
        printf("***\n");
    else
        printf("***\n");

    if(un1.un2.un3.un4.un5.un6.unif == 2147483647)
        printf("***\n");
    else
        printf("***\n");

    if(un1.un2.un3.un4.un5.un6.un7.unig == 2147483647)
        printf("***\n");
    else
        printf("***\n");

    if(un1.un2.un3.un4.un5.un6.un7.un8.unih == 2147483647)
        printf("***\n");
    else
        printf("***\n");

    if(un1.un2.un3.un4.un5.un6.un7.un8.un9.unii == 2147483647)
        printf("***\n");
    else
        printf("***\n");

    if(un1.un2.un3.un4.un5.un6.un7.un8.un9.un10.unij == 2147483647)
        printf("***\n");
    else
        printf("***\n");

    if(un1.un2.un3.un4.un5.un6.un7.un8.un9.un10.un11.unik == 2147483647)
        printf("***\n");
    else
        printf("***\n");

    printf("\n");
exit (0);
}
