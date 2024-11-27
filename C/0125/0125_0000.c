#include<stdio.h>
#include<string.h>
int main() {
 
   int a;
 
   printf("TEST START \n");
 
#if 1
   printf(" *** O K (13-01) *** \n");
#else
   printf(" *** N G (13-01) *** \n");
#endif
 
 # if 1
   printf(" *** O K (13-02) *** \n");
#else
   printf(" *** N G (13-02) *** \n");
#endif
 
	#	if 1
   printf(" *** O K (13-03) *** \n");
#else
   printf(" *** N G (13-03) *** \n");
#endif
 
/* abcd */#/* efgh */if 1
   printf(" *** O K (13-04) *** \n");
#else
   printf(" *** N G (13-04) *** \n");
#endif
 
/* abcdefg
abc*/#/*kdsjdhfskjdfskd
*/if 1
   printf(" *** O K (13-05) *** \n");
#else
   printf(" *** N G (13-05) *** \n");
#endif
 
 
#undef  abc
#define abc 9
#ifdef  abc
   printf(" *** O K (13-09) *** \n");
#else
   printf(" *** N G (13-09) *** \n");
#endif
 
#ifdef	abc
   printf(" *** O K (13-10) *** \n");
#else
   printf(" *** N G (13-10) *** \n");
#endif
 
#ifdef/*hjkl;asdfg*/abc
   printf(" *** O K (13-11) *** \n");
#else
   printf(" *** N G (13-11) *** \n");
#endif
 
#ifdef/*hjkl;a
dkfeijgkjnvkclx */abc
   printf(" *** O K (13-12) *** \n");
#else
   printf(" *** N G (13-12) *** \n");
#endif
 
 
#undef aaa
#ifndef  aaa
   printf(" *** O K (13-14) *** \n");
#else
   printf(" *** N G (13-14) *** \n");
#endif
 
#if    0
#elif  1
   printf(" *** O K (14-01) *** \n");
#else
   printf(" *** N G (14-01) *** \n");
#endif
 
a = 0;
 
#if    0
#else
   a++;
#endif
 
if (a == 1)
   printf(" *** O K (14-02) *** \n");
else
   printf(" *** N G (14-02) *** \n");
 
 
a = 0;
 
#if    1
    #if    0
    #endif
   a++;
#endif
 
if (a == 1)
   printf(" *** O K (14-03) *** \n");
else
   printf(" *** N G (14-03) *** \n");
 
{
   #include <stdio.h>
   #ifdef EOF
      printf(" *** O K (14-04) *** \n");
   #else
      printf(" *** N G (14-04) *** \n");
   #endif
}
 
#define b 1
   #ifdef b
      printf(" *** O K (14-05) *** \n");
   #else
      printf(" *** N G (14-05) *** \n");
   #endif
 
#undef b
#ifndef b
   printf(" *** O K (14-06) *** \n");
#else
   printf(" *** N G (14-06) *** \n");
#endif
 
#line 1 "a"
   if ( __LINE__ == 1 )
      if (!memcmp(__FILE__,"a",1))
         printf(" *** O K (14-07) *** \n");
      else
         printf(" *** N G (14-07)A*** \n");
   else
         printf(" *** N G (14-07)B*** \n");
 
#   /* null directive (14-10)   */
 
   printf("TEST END \n");
 
}
