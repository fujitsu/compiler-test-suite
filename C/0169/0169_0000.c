#include <stdio.h>
 struct tag1 {
   int i;
   char *p;
 };

void fnc1(struct tag1 st)
 {
   printf("fnc1\n");
 }
int main()
 {
   struct tag1 st1;

   fnc1(st1);
   printf("finish\n");
 }


