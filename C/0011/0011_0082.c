#include  <stdio.h>
struct dtag {
   int *i[10];
   }dst;
struct ctag {
   struct dtag dst;
   }cst;
struct btag {
   struct ctag cst;
   }bst;
struct atag {
   struct btag bst;
   }ast;
struct tag {
   struct atag ast;
   }st;
int i;

void sub1(struct tag *p),sub2(struct atag *p),sub3(struct btag *p),
     sub4(struct ctag *p),sub5(struct dtag *p);

int main(void)
{
    for(i=0; i<=9; i++){
      sub1(&st);
      if(*(st.ast.bst.cst.dst.i[0])!=i)
      {
        printf("ERROR OCCURS\n");
        printf("ERROR NO = %d",i);
        printf("SURE NUM = %d\n",*(st.ast.bst.cst.dst.i[0]));
        return 0;
      }
    }
    printf("****** O      K ****\n");
}
void sub1(struct tag *p)
{
   sub2(&p->ast);
}
void sub2(struct atag *p)
{
   sub3(&p->bst);
}
void sub3(struct btag *p)
{
   sub4(&p->cst);
}
void sub4(struct ctag *p)
{
   sub5(&p->dst);
}
void sub5(struct dtag *p)
{
   p->i[0] = &i;
}
