#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()
{
   int    *wk;
 
   printf("*** CATEGORY ** TEST ** STARTED ***\n");
 
   {
      int       *pa;
      int        ia = 1;
      static int ib[3] = { 0,1,2 };
      pa = ib;
      wk = pa + ia;
 
      if(*wk == 1)
          printf("*** CATEGORY-01 *** O     K ***\n");
      else
          printf("*** CATEGORY-01 **** N   G ****\n");
   }
   {
      static int arr1[3] = { 0,1,2 };
      int        id = 1;
      wk = arr1 + id;
 
      if(*wk == 1)
          printf("*** CATEGORY-02 *** O     K ***\n");
      else
          printf("*** CATEGORY-02 **** N   G ****\n");
   }
   {
      int        ie = 1;
      int       *pc;
      static int ig[3] = { 0,1,2 };
      int        ih = 5;
      pc = ig;
      wk = (ih,pc) + ie;
 
      if(*wk == 1)
          printf("*** CATEGORY-03 *** O     K ***\n");
      else
          printf("*** CATEGORY-03 **** N   G ****\n");
   }
   {
      int      ii = 1;
      struct tag {
                  int arr[3];
                } *pst,st1;
      pst = &st1;
      pst->arr[0] = 0;
      pst->arr[1] = 1;
      pst->arr[2] = 2;
 
      wk = pst->arr+ii;
      if(*wk == 1)
          printf("*** CATEGORY-04 *** O     K ***\n");
      else
          printf("*** CATEGORY-04 **** N   G ****\n");
   }
   {
      int      ij = 1;
      struct tag {
                  int arr1[3];
                } st2;
      st2.arr1[0] = 0;
      st2.arr1[1] = 1;
      st2.arr1[2] = 2;
 
      wk = st2.arr1+ij;
      if(*wk == 1)
          printf("*** CATEGORY-05 *** O     K ***\n");
      else
          printf("*** CATEGORY-05 **** N   G ****\n");
   }
   {
      int      ik = 1;
      int      arr2[5] = { 0,1,2,3,4 };
 
      wk = arr2+ik;
      if(*wk == 1)
          printf("*** CATEGORY-06 *** O     K ***\n");
      else
          printf("*** CATEGORY-06 **** N   G ****\n");
   }
   {
      int        il = 1;
      static int arr3[5] = { 0,1,2,3,4 };
      int       *ptr2;
      ptr2 = arr3;
 
      wk = ptr2+1+il;
      if(*wk == 2)
          printf("*** CATEGORY-07 *** O     K ***\n");
      else
          printf("*** CATEGORY-07 **** N   G ****\n");
   }
   {
      int        im = 1;
      static int arr4[5] = { 0,1,2,3,4 };
      int       *ptr3;
      ptr3 = &(arr4[3]);
 
      wk = ptr3-1+im;
      if(*wk == 3)
          printf("*** CATEGORY-08 *** O     K ***\n");
      else
          printf("*** CATEGORY-08 **** N   G ****\n");
   }
   {
      int       wk1;
      int       in=1;
      int      *ptr4;
      ptr4 = 0;
      wk1 = !ptr4 + in;
 
      if(wk1 == 2)
          printf("*** CATEGORY-09 *** O     K ***\n");
      else
          printf("*** CATEGORY-09 **** N   G ****\n");
   }
   {
      int        io=1;
      static int arr5[5] = { 0,1,2,3,4 };
 
      wk = &(arr5[1]) + io;
      if(*wk == 2)
          printf("*** CATEGORY-10 *** O     K ***\n");
      else
          printf("*** CATEGORY-10 **** N   G ****\n");
   }
   {
      int        ip=1;
      static int arr6[5] = { 0,1,2,3,4 };
      int      rrr=1,*qqq=&rrr,**ppp=&qqq;
      int      wk4=1,*wk3=&wk4,**wk2=&wk3;
      ppp = &(*ppp);
      *ppp = arr6;
 
      wk2 = &(*wk2);
      *wk2 = *ppp + ip;
      if(**wk2 == 1)
          printf("*** CATEGORY-11 *** O     K ***\n");
      else
          printf("*** CATEGORY-11 **** N   G ****\n");
   }
   printf("*** CATEGORY ** TEST ** ENDED ***\n");
exit (0);
}
