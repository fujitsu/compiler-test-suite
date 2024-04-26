#include <stdlib.h>

#include <stdio.h>
#define EQUAL 0
#define SMALL 1
#define LARGE 2

static char num[] = {"5876543210a2b4c6d8e1f3579"};
struct tree {
    int value;
    struct tree *small,*big;
    }sort[50],*rsp,*sp,*setns(struct tree **ap, int val, int type);
int main()
{
   char   *cp;
   int realval,newval,nchk(int rval, int nval),getch(char *p);
   void opnum(struct tree *p);

   cp = num;
   sp =  &sort[0];
   rsp = &sort[0];
   rsp->value = realval = getch(cp);
   rsp->small = NULL;
   rsp->big   = NULL;
   cp++;
   printf("NOW SET NUMBER = %d\n",rsp->value);

   for(;(newval=getch(cp)) != EOF;cp++)
   {
      switch(nchk(realval,newval))
      {
        case EQUAL:
          break;
        case SMALL: case LARGE:
          rsp = setns(&rsp,newval,nchk(realval,newval));
          printf("NOW SET NUMBER = %d\n",rsp->value);
          break;
        default:
          printf("*** THIS TEST PROGRAM IS MISSING| ***\n");
          exit(0);
      }
      rsp = &sort[0];
   }
   opnum(&sort[0]);
   printf("SORT OK\n");
}

int getch(char *p)
{
   switch(*p){
      case '0': return 0;
      case '1': return 1;
      case '2': return 2;
      case '3': return 3;
      case '4': return 4;
      case '5': return 5;
      case '6': return 6;
      case '7': return 7;
      case '8': return 8;
      case '9': return 9;
      case 'a': return 10;
      case 'b': return 11;
      case 'c': return 12;
      case 'd': return 13;
      case 'e': return 14;
      case 'f': return 15;
      case '\0': return EOF;
   }
   return EOF;
}

int nchk(int rval, int nval)
{
   if(rval == nval)
      return EQUAL;
   else
   if(rval > nval)
      return SMALL;
   else
      return LARGE;
}

struct tree *setns(struct tree **ap, int val, int type)
{
   if(type == SMALL)
   {
      if((*ap)->small == NULL)
      {
         sp = sp+1;
         sp->value = val;
         sp->small = NULL;
         sp->big = NULL;
         (*ap)->small = sp;
      }
      else
      {
        if((*ap)->small->value > val)
           return setns(&((*ap)->small),val,SMALL);
        else
        {
           if((*ap)->small->value == val)
             return (*ap);
           sp = sp+1;
           sp->value = val;
           sp->small = (*ap)->small;
           sp->big = NULL;
           (*ap)->small = sp;
        }
      }
    }
    else
    {
      if((*ap)->big == NULL)
      {
        sp = sp+1;
        sp->value = val;
        sp->small = NULL;
        sp->big = NULL;
        (*ap)->big = sp;
      }
      else
      {
        if((*ap)->big->value < val)
           return setns(&((*ap)->big),val,LARGE);
        else
        {
           if((*ap)->big->value == val)
             return (*ap);
           sp = sp+1;
           sp->value = val;
           sp->big = (*ap)->big;
           sp->small = NULL;
           (*ap)->big = sp;
        }
       }
    }
     return sp;
}
void opnum(struct tree *p)
{
      if(p->small == NULL)
      {
         printf("%d ",p->value);
         if(p->big == NULL)
           return;
         else
           opnum(p->big);
      }
      else
      {
         opnum(p->small);
         printf("%d ",p->value);
         if(p->big == NULL)
           return;
         else
           opnum(p->big);
      }
      printf("\n");
}
