#include<stdio.h>
int main()
{
    printf("*** \n");

     {
     struct  tag1 {
                    int     stia;
                    char    stca;
                  } ;

     static struct tag1 const stcoa = { 10,20 };
     if(stcoa.stia == 10)
         printf("*** \n");
     }
     {
     union   tag2 {
                    int     unia;
                    char    unca;
                  };

     static union tag2  const uncoa = { 10 };
     if(uncoa.unia == 10)
         printf("*** \n");
     }
     {
     enum  tag3{ a=100, b, c, d=20, e, f, g };
     enum  tag3  const uncoa;
     if(b == 101)
         printf("*** \n");
     }
     {
     struct  tag4 {
                    int     stia;
                    char    stca;
                  } ;

     struct  tag4 typedef st1;
     st1 sttya ;
     sttya.stia = 5;
     sttya.stca = 9;
     if(sttya.stia == 5)
         printf("*** \n");
     }
     {
     union   tag5 {
                    int     unia;
                    char    unca;
                  };

     union  tag5  typedef un1;
     un1 untya;
     untya.unia = 10;
     if(untya.unia == 10)
         printf("*** \n");
     }
     {
     enum  tag6{ a=100, b, c, d=20, e, f, g };
     enum  tag6 typedef en1;
     en1 entya;
     if(c == 102)
         printf("*** \n");
     }
     {
     struct tag7 {
                   int  stia;
                   char stca;
                 } st7;
     struct tag7 (*psta);
     st7.stia = 10;
     st7.stca = 100;
     psta = &st7;
     if(psta->stia == 10)
         printf("*** \n");
     }
     {
     union  tag8 {
                   int  unia;
                   char unca;
                 } un8;
     union  tag8  (*puna);
     un8.unia = 9;
     puna = &un8;
     if(puna->unia == 9)
         printf("*** \n");
     }
     {
     enum tag9 { a,s,d,f,g,h,j } en1;
     enum tag9  (*pena);
     pena = &en1;
     if(s == 1)
         printf("*** \n");
     }
     {
     struct tag10;
     static struct tag10 {
                    int   stia;
                    char  stca;
                  } st11 = { 30,40 };
     if(st11.stia == 30)
         printf("*** \n");
     }
    printf("*** \n");
}
