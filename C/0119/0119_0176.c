#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
#define count 10
 struct nums
  {
     int        number ;
     struct  nums  *next_number ;
  } ;
int sort1 (struct nums *for_number, struct nums *add_number);
int 
main (void)
 {
 struct  nums   next_ptr[count] ;
 struct  nums   head_ptr ;
 struct  nums  *addr ;
 int     number ,ng;
     printf("<<<<<<< scqtp01 start >>>>>>>\n");
     printf("*******   input  ******\n");
     head_ptr.next_number = 0 ;
     for (number = 0 ;number <= count-1; number += 1)
      {
       next_ptr[number].number = count - number ;
       printf("----number(%d)=%d   ----\n",number+1,next_ptr[number].number);
       sort1 (&head_ptr,&next_ptr[number]);
      }
     addr = head_ptr.next_number ;
     number = 1 ;
     ng  = 0 ;
     printf("*******   output  ******\n");
     while ((addr!=0))
      {
         if (addr->number!= number)
             ng=1;
         printf("----number(%d)=%d   ----\n",number++,addr->number);
         addr = addr->next_number ;
      }
     if (ng == 1)
        printf("????? ng ?????\n");
     else
        printf("***** ok *****\n");
     printf("<<<<<<< scqtp01   end >>>>>>>\n");
exit (0);
 }
 int 
sort1 (struct nums *for_number, struct nums *add_number)
 {
    if ((for_number->next_number!=0)
     && ((for_number->next_number)->number<add_number->number))
         sort1 (for_number->next_number,add_number);
     else
      {
         add_number->next_number = for_number->next_number ;
         for_number->next_number = add_number ;
      }
    return 0;
 }
