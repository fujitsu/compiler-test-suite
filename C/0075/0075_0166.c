#include <string.h>
#include <stdio.h>
int main( ) {
  struct  t {
           signed int      status :8;
           signed int      cc     :8;
           signed int      dummy  :16;
         } ;
  struct t *p;
  struct t aa;
  printf("**********  TEST START **********\n"); 
  memset(&aa,0,sizeof(struct t));
  p=&aa;
  p->status = 1; 
  p->cc = -1; 
  if (p->status== 1)
    printf("OK-1\n");
  else {
    printf("NG-1\n");
    printf ("%x\n",p->status); }
  if (p->cc    == -1)
    printf("OK-2\n");
  else {
    printf("NG-2\n");
    printf ("%x\n",p->cc); }
  printf("**********  TEST  END  **********\n");
}
