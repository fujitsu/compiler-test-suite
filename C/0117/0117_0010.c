#include <stdio.h>
#include <string.h>
union uni{
  long long bit8:4;
  struct st{
    int bit2_1:1;
    int bit2_2:1;
    int bit2_3:1;
    int bit2_4:1;
  } st1;
};

int sub(int c){return(c>5)?1:0;}

void struct_sub(union uni *uni1,int value)
{
  uni1->bit8=(value*value*value)%8;
}

int judge_char1(char *ch1){return (!strcmp(ch1,"aaa")) ? 1 : 0;}
int judge_char2(char *ch1){return (!strcmp(ch1,"bbb")) ? 1 : 0;}
int judge_char3(char *ch1){return (!strcmp(ch1,"ccc")) ? 1 : 0;}
int judge_char4(char *ch1){return (!strcmp(ch1,"ddd")) ? 1 : 0;}
int judge_char5(char *ch1){return (!strcmp(ch1,"eee")) ? 1 : 0;}
int judge_char6(char *ch1){return (!strcmp(ch1,"fff")) ? 1 : 0;}
int judge_char7(char *ch1){return (!strcmp(ch1,"ggg")) ? 1 : 0;}
int judge_char8(char *ch1){return (!strcmp(ch1,"hhh")) ? 1 : 0;}
int judge_char9(char *ch1){return (!strcmp(ch1,"iii")) ? 1 : 0;}
int judge_char10(char *ch1){return (!strcmp(ch1,"jjj")) ? 1 : 0;}
int main()
{
  int a=1,b=0,c=1;
  int i;
  union uni uni1;
  char *ch1[10]={"aaa","bbb","ccc","ddd","eee","fff","ggg","hhh","iii","jjj"};

  uni1.bit8=0;

  for(i=0;i<10;i++){
    if(sub(c))
#if defined(sparc)
      if (uni1.st1.bit2_4 && uni1.st1.bit2_3  && uni1.st1.bit2_2 &&
	  judge_char1(ch1[0]) && judge_char2(ch1[1]) &&
	  judge_char3(ch1[2]) && judge_char4(ch1[3]) &&
	  judge_char5(ch1[4]) && judge_char6(ch1[5]) &&
	  judge_char7(ch1[6]) && judge_char8(ch1[7]) &&
	  judge_char9(ch1[8]) && judge_char10(ch1[9]))
#else
      if (uni1.st1.bit2_3 && uni1.st1.bit2_2  && uni1.st1.bit2_1 &&
	  judge_char1(ch1[0]) && judge_char2(ch1[1]) &&
	  judge_char3(ch1[2]) && judge_char4(ch1[3]) &&
	  judge_char5(ch1[4]) && judge_char6(ch1[5]) &&
	  judge_char7(ch1[6]) && judge_char8(ch1[7]) &&
	  judge_char9(ch1[8]) && judge_char10(ch1[9]))
#endif
	break;
      else{
	c+=1;
	struct_sub(&uni1,c);
      }
    else if(a==0 && b==1){
      c+=1;
      struct_sub(&uni1,c);
    }
    else
      a=0;b=1;
  }

  if(c==7)
    printf("ok\n");
  else
    printf("ng c=%d\n",c);
}

