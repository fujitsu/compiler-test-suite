#include<stdio.h>

int main() {
 
   printf(" TEST START \n");
 
#define    u   1
#define  U  2
#define    l   3
#define  L  4
 
#define  UL    5
#define  UL 5
#define  Ul    6
#define  uL    7
#define  ul       8
 
#define  LU    9
#define  LU 9
#define  Lu   10
#define  lU   11
#define  lu      12
 
 
#if  1u == 1
   printf(" *** O K (04-01) *** \n");
#else
   printf(" ***N   G(04-01) *** \n");
#endif
 
#if  1U == 1
   printf(" *** O K (04-02) *** \n");
#else
   printf(" ***N   G(04-02) *** \n");
#endif
 
#if 1l == 1
   printf(" *** O K (04-03) *** \n");
#else
   printf(" ***N   G(04-03) *** \n");
#endif
 
#if 1L == 1
   printf(" *** O K (04-04) *** \n");
#else
   printf(" ***N   G(04-04) *** \n");
#endif
 
#if 1UL == 1
   printf(" *** O K (04-05) *** \n");
#else
   printf(" ***N   G(04-05) *** \n");
#endif
 
#if 1UL == 1
   printf(" *** O K (04-06) *** \n");
#else
   printf(" ***N   G(04-06) *** \n");
#endif
 
#if 1Ul == 1
   printf(" *** O K (04-07) *** \n");
#else
   printf(" ***N   G(04-07) *** \n");
#endif
 
#if 1uL == 1
   printf(" *** O K (04-08) *** \n");
#else
   printf(" ***N   G(04-08) *** \n");
#endif
 
#if 1ul == 1
   printf(" *** O K (04-09) *** \n");
#else
   printf(" ***N   G(04-09) *** \n");
#endif
 
#if 1LU == 1
   printf(" *** O K (04-10) *** \n");
#else
   printf(" ***N   G(04-10) *** \n");
#endif
 
#if 1LU == 1
   printf(" *** O K (04-11) *** \n");
#else
   printf(" ***N   G(04-11) *** \n");
#endif
 
#if 1Lu == 1
   printf(" *** O K (04-12) *** \n");
#else
   printf(" ***N   G(04-12) *** \n");
#endif
 
#if 1lU == 1
   printf(" *** O K (04-13) *** \n");
#else
   printf(" ***N   G(04-13) *** \n");
#endif
 
#if 1lu == 1
   printf(" *** O K (04-14) *** \n");
#else
   printf(" ***N   G(04-14) *** \n");
#endif
 
#if  u == 1
 #if  U == 2
  #if  l == 3
   #if  L == 4
    #if  UL == 5
     #if  UL == 5
      #if  Ul == 6
       #if  uL == 7
        #if  ul == 8
         #if  LU == 9
          #if  LU == 9
           #if  Lu == 10
            #if  lU == 11
             #if  lu == 12
               printf(" *** O K (04-15) *** \n");
             #endif
            #endif
           #endif
          #endif
         #endif
        #endif
       #endif
      #endif
     #endif
    #endif
   #endif
  #endif
 #endif
#endif
 
   printf(" TEST END \n");
 
}
