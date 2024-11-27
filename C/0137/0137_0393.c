#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

#include <stdio.h>
#include <string.h>

 static char *okng ="OK";
int main()
 {
#ifdef __STDC__
   char *func1(int *),*func2(int *),*func3(int *);
#else
   char *func1(),*func2(),*func3();
#endif

   static int exi=0;
   char      *str;

     printf("*** mptest08 start ***\n");
     printf("    * CALL func1 *\n");
     str = func1(&exi);
     if(!strcmp(str,"    * OUT func1 *")){
        if(exi==1){
           printf("     +++ OK exi=%d +++\n",exi);
        } else {
           printf("     +++ ng exi=%d +++\n",exi);
           strcpy(okng,"ng");
        }
     } else {
        printf("     +++ ng func1 STRING str=%s\n",str);
     }
     printf("    * CALL func2 *\n");
     str = func2(&exi);
     if(!strcmp(str,"    * OUT func2 *")){
        if(exi==3){
           printf("     +++ OK exi=%d +++\n",exi);
        } else {
           printf("     +++ ng exi=%d +++\n",exi);
           strcpy(okng,"ng");
        }
     } else {
        printf("     +++ ng func2 STRING str=%s\n",str);
     }
     printf("    * CALL func3 *\n");
     str = func3(&exi);
     if(!strcmp(str,"    * OUT func3 *")){
        if(exi==6){
           printf("     +++ OK exi=%d +++\n",exi);
        } else {
           printf("     +++ ng exi=%d +++\n",exi);
           strcpy(okng,"ng");
        }
     } else {
        printf("     +++ ng func3 STRING str=%s\n",str);
     }

     printf("   ** mptest08 %s %s %s ** \n",okng,okng,okng);
     printf("*** mptest08 end ***\n\n");
exit (0);
 }

 char * func1(p)
   int *p;
 {
     *p = *p+1;
     return("    * OUT func1 *");
 }

 char * func2(p)
   int *p;
 {
    static int i=0;

     if(++i <= 2){
        *p = *p+1;
        func2(p);
     }
     return("    * OUT func2 *");
 }

 char * func3(p)
   int *p;
 {
    static int i=0;

     if(++i <= 3){
        *p = *p+1;
        func3(p);
     }
     return("    * OUT func3 *");
 }
