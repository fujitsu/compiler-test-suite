#include  <stdio.h>
#define num 10
 struct chain_int
  {
     int        value ;
     struct  chain_int  *next_value ;
  } ;
void sort1 (struct chain_int *for_value, struct chain_int *add_value);
int 
main (void)
 {
 struct  chain_int   next_ptr[num] ;
 struct  chain_int   head_ptr ;
 struct  chain_int  *addr ;
 int     number ,ng;
     printf("<<<<<<< start >>>>>>>\n");
     printf("*******  input  ******\n");
     head_ptr.next_value = 0 ;
     for (number = 0 ;number <= num-1; number += 1)
      {
       next_ptr[number].value = num - number ;
       printf("----value(%d)=%d   ----\n",number+1,next_ptr[number].value);
       sort1 (&head_ptr,&next_ptr[number]);
      }
     addr = head_ptr.next_value ;
     number = 1 ;
     ng  = 0 ;
     printf("*******  output  ******\n");
     while ((addr!=0))
      {
         if (addr->value!= number)
             ng=1;
         printf("----value(%d)=%d   ----\n",number++,addr->value);
         addr = addr->next_value ;
      }
     if (ng == 1)
        printf("????? ng ?????\n");
     else
        printf("***** ok *****\n");
     printf("<<<<<<< end >>>>>>>\n");
 }
 void 
sort1 (struct chain_int *for_value, struct chain_int *add_value)
 {
    if ((for_value->next_value!=0)
     && ((for_value->next_value)->value<add_value->value))
         sort1 (for_value->next_value,add_value);
     else
      {
         add_value->next_value = for_value->next_value ;
         for_value->next_value = add_value ;
      }
 }
