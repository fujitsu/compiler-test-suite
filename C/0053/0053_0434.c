#include<stdio.h>
int main()
{
    printf("*** \n");

     {
     struct  tag1 {
                    int     stia;
                    char    stca;
                  } st1 ;

     int  ia;
     ia = sizeof(struct tag1);
#if INT64
     if(ia == 16)
#else
     if(ia == 8)
#endif
         printf("*** \n");
     }
     {
     union   tag2 {
                    int     unia;
                    char    unca;
                  } un1 ;

     int  ib;
     ib = sizeof(union tag2);
#if INT64
     if(ib == 8)
#else
     if(ib == 4)
#endif
         printf("*** \n");
     }
     {
     enum  tag3{ a=100, b, c, d=20, e, f, g } en1;
     int   ic;
     ic = sizeof(enum tag3);
#if INT64
     if(ic == 8)
#else
     if(ic == 4)
#endif
         printf("*** \n");
     }
     {
     struct  tag4 {
                    int     stia;
                    char    stca;
                  } st4 ;

     int  id;
     id = sizeof(struct tag4 *);
#if INT64 || LONG64  || __x86_64__ || __aarch64__
     if(id == 8)
#else
     if(id == 4)
#endif
         printf("*** \n");
     }
     {
     union   tag5 {
                    int     unia;
                    char    unca;
                  } un5 ;

     int  ie;
     ie = sizeof(union tag5 *);
#if INT64 || LONG64  || __x86_64__ || __aarch64__
     if(ie == 8)
#else
     if(ie == 4)
#endif
         printf("*** \n");
     }
     {
     enum  tag6{ a=100, b, c, d=20, e, f, g } en6;
     int   ig;
     ig = sizeof(enum tag6 *);
#if INT64 || LONG64  || __x86_64__ || __aarch64__
     if(ig == 8)
#else
     if(ig == 4)
#endif
         printf("*** \n");
     }
     {
     int   ih;
     struct tag7 {
     	int    stia;
     	char   stca;
     };
     ih = sizeof(struct tag7);
#if INT64
     if(ih == 16)
#else
     if(ih == 8)
#endif
         printf("*** \n");
     }
     {
     int   ii;
     union  tag8 {
     	int    unia;
     	char   unca;
     };
     ii = sizeof(union  tag8);
#if INT64
     if(ii == 8)
#else
     if(ii == 4)
#endif
         printf("*** \n");
     }
     {
     int   ij;
     enum   tag9 { a,b,c,d,e,f,g } ;
     ij = sizeof(enum   tag9);
#if INT64
     if(ij == 8)
#else
     if(ij == 4)
#endif
         printf("*** \n");
     }
    printf("*** \n");
}
