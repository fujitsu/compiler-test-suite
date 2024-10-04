#include<stdio.h>
int main()
{
  printf("********** \n");
  {
    struct sttag1 { int a; int b; } static *st1,st11 = { 1,2 };
    st1 = &st11;

    if ((*st1).b == 2)
        printf("***** \n");
  }
  {
    union  untag1 { int a; int b; } static *un1,un11 = { 3 };
    un1 = &un11;

    if ((*un1).a == 3)
        printf("***** \n");
  }
  {
    enum   entag1 { emem1, emem2  } static *en1,en11 = 1;
    en1 = &en11;

    if (*en1 == emem2)
        printf("***** \n");
  }
  {static
    struct sttag2 { int a; int b; } volatile *st2,st22 = { 4,5 };
    st2 = &st22;

    if ((*st2).a == 4)
        printf("***** \n");
  }
  {static
    union  untag2 { int a; int b; } volatile *un2,un22 = { 6 };
    un2 = &un22;

    if ((*un2).b == 6)
        printf("***** \n");
  }
  {
    static enum   entag2 { emem3, emem4  } volatile *en2,en22 = 0;
    en2 = &en22;

    if (*en2 == emem3)
        printf("***** \n");
  }
  {
    static struct sttag3 { int a; int b; } const *st3,st33={ 7,8 };
    st3 = &st33;

    if ((*st3).b == 8)
        printf("***** \n");
  }
  {
    static union  untag3 { int a; int b; } const *un3,un33 = { 9 };
    un3 = &un33;

    if ((*un3).a == 9)
        printf("***** \n");
  }
  {
    static enum   entag3 { emem5, emem6  } const *en3,en33 = 0;
    en3 = &en33;

    if (*en3 == emem5)
        printf("***** \n");
  }
  {
    struct sttag4 { int a; int b; } typedef *tyst;
    static struct sttag4 st44 = { 0,1 };
    tyst st4 = &st44;

    if ((*st4).a == 0)
        printf("***** \n");
  }
  {
    union  untag4 { int a; int b; } typedef *tyun;
    static union untag4 un44 = { 2 };
    tyun un4 = &un44;

    if ((*un4).a == 2)
        printf("***** \n");
  }
  {
    enum   entag4 { emem7, emem8  } typedef *tyen;
    static enum entag4 en44 = 0;
    tyen en4 = &en44;

    if (*en4 == emem7)
        printf("***** \n");
  }
  printf("********** \n");
}
