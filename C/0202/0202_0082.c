#include <stdio.h>

#if defined(__STDC_VERSION__) && __STDC_VERSION__ < 199901L
#define II 10
#else 
int II = 10;
#endif 


int *vla[10];
int i=0;



void func_nest_2()
{
  i=0;
  switch (i) {
  case 0:;
    int array_1[II];

    switch (i) {
    case 0:;
      int array_2[II];
      
      if (vla[0]==NULL) vla[0] = (int *)array_2;
      break;
#if error
    case 1:;
      int array_3[10];
  
      
      if (vla[5]==NULL) vla[5] = (int *)array_3;
      break;
#endif
    } 

    switch (i) {
    case 0:;
      int array_2[II];
      
      if (vla[9]==NULL) vla[9] = (int *)array_2;
      break;
    } 

    
    if (vla[1]==NULL) vla[1] = (int *)array_1;
  } 
}


void func_nest_3()
{
  i=0;
  switch (i) {
  case 0:;
    int array_1[II];
    
    switch (i) {
    case 0:;
      int array_3[II];
  
      switch (i) {
      case 0:;
        int array_2[II];
    
        
        if (vla[2]==NULL) vla[2] = (int *)array_2;
      } 
  
      
      if (vla[3]==NULL) vla[3] = (int *)array_3;
    } 

    
    if (vla[4]==NULL) vla[4] = (int *)array_1;
  } 
}


void func_break()
{
  i=0;
  switch (i) {
  case 0:;
    int array_1[II];

    
    if (vla[5]==NULL) vla[5] = (int *)array_1;
    break;
  } 
}


void func_goto()
{
  i=0;
  switch (i) {
  case 0:;
    int array_1[II];

    
    if (vla[6]==NULL) vla[6] = (int *)array_1;
    goto L1;
  } 
L1:;
}

#if error

void func_continue()
{
  i=0;
  switch (i) {
  case 0:;
    int array_1[II];

    
    if (vla[7]==NULL) vla[7] = (int *)array_1;
    continue;
  } 
}
#endif


void func_return()
{
  i=0;
  switch (i) {
  case 0:;
    int array_1[II];

    
    if (vla[8]==NULL) vla[8] = (int *)array_1;
    return;
  } 
}

int main()
{
  
  for ( i=0 ; i<10 ; i++) {
    vla[i] = NULL;
  }

  
  func_nest_2();

  
  func_nest_3();

  
  func_break();

  
  func_goto();

#if error
  
  func_continue();
#endif

  
  func_return();

#if CFE
  
  if (vla[0] == vla[9] && vla[6] == vla[8]) {
    printf("OK\n");
  } else {
    printf(" 0:%x\n 1:%x\n 2:%x\n 3:%x\n 4:%x\n 5:%x\n 6:%x\n 7:%x\n 8:%x\n 9:%x\n",
            vla[0],vla[1],vla[2],vla[3],vla[4],vla[5],vla[6],vla[7],vla[8],vla[9]);
    printf("NG\n");
  }
#else
  printf("OK\n");
#endif


  return 0;
}
