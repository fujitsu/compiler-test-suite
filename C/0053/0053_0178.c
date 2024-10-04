#include<stdio.h>
int main()
{
   printf("*** \n");

   {
     struct sttag1;
     union  untag1;

     struct sttag1 {
           short  s;
           long   l;
     } ;
     union untag1 {
           int    i;
           long   l;
     } ;
     enum entag1 {
           ena,  enb,  enc
     } ;

     static volatile const struct sttag1 st1={-1,0};
     static volatile const union untag1 un1={-1};
     static volatile enum entag1 en1=ena;
     static struct sttag1 st2={0x7fff,0x7fffffff};


     if (st1.s!=-1 || st1.l!=0)
         printf(" *** \n");
     else
         printf(" *** \n");

#if LONG64 
     if (un1.i!=-1 || un1.l!=0xffffffff00000000L)
#elif __x86_64__ || __aarch64__
     if (un1.i!=-1 || un1.l!=0x00000000ffffffffL)
#else
     if (un1.i!=-1 || un1.l!=-1)
#endif
         printf(" *** \n");
     else
         printf(" *** \n");

     if (en1!=0 || ena!=0 || enb!=1 || enc!=2)
         printf(" *** \n");
     else
         printf(" *** \n");

     if (st2.s!=32767 || st2.l!=2147483647)
         printf(" *** \n");
     else
         printf(" *** \n");
   }

   printf("*** \n");
}
