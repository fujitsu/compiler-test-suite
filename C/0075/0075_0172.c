#include <stdio.h>

int input_act[100];
void sub();
int main()
{
  int *receiver;
  int *sender,*end_sender;
  int i,z=0;
  
  printf("**********  TEST START **********\n");
  for(i=0;i<100;i++)
    input_act[i] = i;
  sub(&receiver,&z);
  sender = &input_act[0];
  end_sender= &input_act[99];
  for (; sender <= end_sender; )
    *receiver += (*sender++) ;
  if (*receiver == 4950)
    printf("OK\n");
  else
    printf("NG\n");
  printf("**********  TEST  END  **********\n");
}
void sub(pr,pz)
int **pr;
int *pz;
{
  *pr = pz;
}
