#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <sys/times.h>


#define MAX 200
typedef long time_t;
struct tms time_info;

long	Begin_time,End_time;

struct AAA_{
  int  number;
  int  ary[MAX+1];
  struct AAA_ *next;
};
struct AAA_ Table[MAX+1];

void init();
char check();
int main(){
  struct AAA_ *base=NULL;
  int i,k,l,type;
  char ngflag = 0;
  
  printf("********** 002 TEST BEGIN  **********\n");
  init(&base);
  times(&time_info);
  Begin_time = (long) time_info.tms_utime;

  for (i=0 ; i<MAX; i++){
    if (base && base->number > 5 ||
	base && base->ary[i] == 2 ||
	base && base->next && base->next->ary[i] == 1 ||
	base && base->next && base->ary[i] == base->next->ary[i]){
      if (base && base->ary[i] == -1 || base && base->next &&
	  base->ary[i] != base->next->ary[i]){
	type = base->number;
	k = base->next->ary[i];
	l = base->next->ary[i+1];
      }else if (base && base->next && base->next->ary[i] ==base->ary[i] ){
	type = base->number;
	k = base->next->ary[i] > base->next->ary[i+1] 
	  ?  base->next->ary[i+1]:  base->next->ary[i] + i;
	l = base->ary[i+1] > base->ary[i] 
	  ? base->ary[i+1] : base->ary[i];
      }else {
	type = base->number ;
	l = base->next->ary[MAX-1];
	k = base->next->ary[MAX-2];
      }
    }else if (base && base->number < 4 ||
	      base && base->next && base->ary[i] != base->next->ary[i]){
      type = base->number;
      if (base && base->next && base->ary[i] != base->next->ary[i]){
	l = (base->ary[i] > base->next->ary[i]
	     ? base->ary[i] : base->next->ary[i]);
	k = base->ary[i] - base->next->ary[i] ;
      }else if (base && base->number < 4 ){
	l = (base->ary[i] < base->next->ary[i]
	     ? base->ary[i] : base->next->ary[i]);
	k =  base->ary[i] + base->next->ary[i] ;
      }else{
	k = 1;
	l = 2;
      }
    }
    if (check(type,k,l) == 0){
      printf("NG\n");
      ngflag = 1;
      break; 
    }
    base++;
  }

  if (ngflag == 0){
    printf("OK\n");
  }
  printf("********** 002 TEST END  **********\n");

exit (0);
}

char check(i,j,k)
int i,j,k;
{
  return ( i == k-1 && j == (k-1) * 2);
}

void init(p)
struct AAA_ **p;
{
  int i,j;
  for (i=0;i<MAX+1;i++){
    Table[i].number= i;
    Table[i].next = (struct AAA_ *)malloc(sizeof(struct AAA_));
    Table[i].next->next = NULL;
    for (j=0;j<MAX+1;j++){
      Table[i].ary[j] = j;
      Table[i].next->ary[j] = j;
    }
  }
  *p = &(Table[0]);
  return ;
}

