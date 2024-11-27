#include <string.h>
#include <stdio.h>


#include <stdlib.h>

char *ok[] = {
  "###  ------------------- START ###\n",
  "###  -------------------  END  ###\n"
};

void K124001(int i);
void K124002(int i);
void K124003(int i);
void K124004(int i);
void K124005(int i);
void K124006(int i);
void K124007(int i);
void K124008(int i);
void K124009(int i);
void K124010(int i);
void K124011(int i);
void K124012(int i);
void K124013(int i);
void K124014(int i);
void K124015(int i);
void K124016(int i);
void K124017(int i);
void K124018(int i);
void K124019(int i);
void K124020(int i);
void K124021(int i);
void K124022(int i);
void K124023(int i);
void K124024(int i);
void K124025(int i);
void K124026(int i);

void K124039(int i);
void K124040(int i);

void foo(int *i) {*i++;}
void myprint() {}
void myerror() {exit(1);}

void loops();
void functrail();
void seldom();
void branch1();
void branch2();
void prior();
int main()
{
  printf(ok[0]);
  loops();
  functrail();
  seldom();
  branch1();
  branch2();
  prior();
  printf(ok[1]);
}

char *ok_loop[] = {
  "### BRANCH PROB TEST (LOOP) 1 ---- OK  ###\n",
  '\0',	
  "### BRANCH PROB TEST (LOOP) 2 ---- OK  ###\n",
  '\0',		
  "### BRANCH PROB TEST (LOOP) 3 ---- OK  ###\n",
  '\0',
};

void
loops()
{
  K124001(1);
  K124002(2);
  K124003(3);
}

void
K124001(int i)
{
  for (i--; ok_loop[i] != '\0'; i++)
    printf(ok_loop[i]);
}


void
K124002(int i)
{
  for (; ok_loop[i] != '\0'; i--)
    printf(ok_loop[i]);
}



void
K124003(int i)
{
  int j;

  if (i == 0) {
    foo(&i);
    return;
  }
  else 
    i++;
  while (1) {
    if (ok_loop[i] == '\0')
      break;
    printf(ok_loop[i++]);
  } 
}


char *ok_ft[] = {
  "### BRANCH PROB TEST (FUNC) 1 ---- OK  ###\n",
  "### BRANCH PROB TEST (FUNC) 2 ---- OK  ###\n",
  '\0',
  "### BRANCH PROB TEST (FUNC) 3 ---- OK  ###\n",
};

void
functrail()
{
  K124004(1);
  K124005(2);
  K124006(3);
}


void
K124004(int i)
{
  if (i == 0)
    abort();
  else 
    i--;
  printf(ok_ft[i]);
}


void
K124005(int i)
{
  int j;

  if (i == 0) {
    foo(&i);
    return;
  }
  else 
    i--;
  while (1) {
    if (ok_ft[i] == '\0')
      break;
    printf(ok_ft[i++]);
  } 
}


void
K124006(int i)
{
  if (i == 0)
    myerror();
  else 
    i--;
  printf(ok_ft[++i]);
}


char *ok_seldom[] = {
  "### BRANCH PROB TEST (FUNC) 4 ---- OK  ###\n",
  "### BRANCH PROB TEST (FUNC) 5 ---- OK  ###\n",
};

void
seldom()
{
  K124007(1);
  K124008(2);
}


void
K124007(int i)
{
  int n;
  char buf[100];
  char *p, *q;

  if (i == 0) {
    p = (char*)malloc(sizeof(char)*100);
    strcpy(p, ok_seldom[0]);
  }
  else {
    for (p = ok_seldom[0], q = buf; (*q = *p) != '\0'; p++, q++)
      ;

    p = buf;
  }
  printf(p);
}
 

void
K124008(int i)
{
  if (i == 0)
    myprint();
  else 
    i--;
  printf(ok_seldom[i]);
}


char *ok_branch1[] = {
  "### BRANCH PROB TEST (BRANCH) ---- NG  ###\n",
  "### BRANCH PROB TEST (BRANCH) 1 -- OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 2 -- OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 3 -- OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 4 -- OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 5 -- OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 6 -- OK  ###\n",
};

void
branch1()
{
  K124009(1);
  K124010(2);
  K124011(3);
  K124012(4);
  K124013(5);
  K124014(6);
}


void
K124009(int i)
{
  i = (i != 0) ? 1 : 0;
  printf(ok_branch1[i]);
}


void
K124010(int i)
{
  i = (i == 0) ? 0 : 2;
  printf(ok_branch1[i]);
}


void
K124011(int i)
{
  i = (i < 0) ? 0 : 3;
  printf(ok_branch1[i]);
}


void
K124012(int i)
{
  i = (i <= 0) ? 0 : 4;
  printf(ok_branch1[i]);
}


void
K124013(int i)
{
  i = (i > 0) ? 5 : 0;
  printf(ok_branch1[i]);
}


void
K124014(int i)
{
  i = (i >= 0) ? 6 : 0;
  printf(ok_branch1[i]);
}



char *ok_branch2[] = {
  "### BRANCH PROB TEST (BRANCH) ---- NG  ###\n",
  "### BRANCH PROB TEST (BRANCH) 7 -- OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 8 -- OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 9 -- OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 10 - OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 11 - OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 12 - OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 13 - OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 14 - OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 15 - OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 16 - OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 17 - OK  ###\n",
  "### BRANCH PROB TEST (BRANCH) 18 - OK  ###\n",
};

void
branch2()
{
  K124015(1);
  K124016(2);
  K124017(3);
  K124018(4);
  K124019(5);
  K124020(6);
  K124021(7);
  K124022(8);
  K124023(9);
  K124024(10);
  K124025(11);
  K124026(12);
}

void
K124015(int i)
{
  int x = i;

  if (x == 1)
    printf(ok_branch2[(int)x]);
  else
    printf(ok_branch2[i]);
  myprint();
}

void
K124016(int i)
{
  int x = i;

  if (x != 2)
    printf(ok_branch2[i]);
  else
    printf(ok_branch2[(int)x]);
  myprint();
}

void
K124017(int i)
{
  int x = i;

  if (x < 3)
    printf(ok_branch2[i]);
  else
    printf(ok_branch2[(int)x]);
  myprint();
}

void
K124018(int i)
{
  int x = i;

  if (x >= 4)
    printf(ok_branch2[(int)x]);
  else
    printf(ok_branch2[i]);
  myprint();
}

void
K124019(int i)
{
  int x = i;

  if (x > 5)
    printf(ok_branch2[i]);
  else
    printf(ok_branch2[(int)x]);
  myprint();
}

void
K124020(int i)
{
  int x = i;

  if (x <= 6)
    printf(ok_branch2[i]);
  else
    printf(ok_branch2[(int)x]);
  myprint();
}

void
K124021(int i)
{
  float x = i;

  if (x == 7.0)
    printf(ok_branch2[(int)x]);
  else
    printf(ok_branch2[i]);
  myprint();
}

void
K124022(int i)
{
  float x = i;

  if (x != 7.0)
    printf(ok_branch2[i]);
  else
    printf(ok_branch2[(int)x]);
  myprint();
}

void
K124023(int i)
{
  float x = i;

  if (x < 8.0)
    printf(ok_branch2[i]);
  else
    printf(ok_branch2[(int)x]);
  myprint();
}

void
K124024(int i)
{
  float x = i;

  if (x >= 9.0)
    printf(ok_branch2[(int)x]);
  else
    printf(ok_branch2[i]);
  myprint();
}

void
K124025(int i)
{
  float x = i;

  if (x > 10.0)
    printf(ok_branch2[i]);
  else
    printf(ok_branch2[(int)x]);
  myprint();
}

void
K124026(int i)
{
  float x = i;

  if (x <= 11.0)
    printf(ok_branch2[(int)x]);
  else
    printf(ok_branch2[i]);
  myprint();
}


char *ok_prior[] = {
  "### BRANCH PROB TEST (PRIOR) 1 --- OK  ###\n",
  '\0',
  "### BRANCH PROB TEST (PRIOR) 2 --- OK  ###\n",
  "### BRANCH PROB TEST (PRIOR) ----- NG  ###\n",
};

void
prior()
{
  K124039(1);
  K124040(2);
}

void
K124039(int i)
{
  int j = i - 1;

  while (1) {
    if (ok_prior[i] == '\0')
      break;
    abort();
  }
  printf(ok_prior[j]);
}

void
K124040(int i)
{
  int j = i - 1;

  while (1) {
    if (ok_prior[j] == '\0')
      break;
  printf(ok_prior[3]);
  }
  printf(ok_prior[i]);
}

