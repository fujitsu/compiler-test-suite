#include <stdio.h>


struct dtag { int *i[10];      } dst;
struct ctag { struct dtag dst; } cst;
struct btag { struct ctag cst; } bst;
struct atag { struct btag bst; } ast;
struct  tag { struct atag ast; }  st;

int i;
int main(void) {
  void sub1();

  for(i=0; i<=0; i++) {
    sub1(&st);
    if(*(st.ast.bst.cst.dst.i[0])!=i)
      {
        printf("ERROR OCCURS\n");
        return 0;
      }
  }
  printf("******  *** O      K ****\n");
}

void sub5(p) struct dtag *p; { p->i[0] = &i;  }
void sub4(p) struct ctag *p; { sub5(&p->dst); }
void sub3(p) struct btag *p; { sub4(&p->cst); }
void sub2(p) struct atag *p; { sub3(&p->bst); }
void sub1(p) struct  tag *p; { sub2(&p->ast); }
