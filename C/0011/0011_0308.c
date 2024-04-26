#include  <stdio.h>

struct tag {
     char bigchar[4096];
     int  i;
     int  j;
} bigstruct;

int global = 1;
int main()
{
     struct tag *p;
     p=&bigstruct;
     p->j = global;
     for((p->i)=0;(p->i)<4096;(p->i)++) {
       p->bigchar[p->i]  =  p->j;
     }
     for((p->i)=0;(p->i)<4096;(p->i)++) {
       p->j = p->j + p->bigchar[p->i];
     }
     printf("%d \n",p->j);
     if( p->j == 4097 ) puts(" OK ");
     else               puts(" NG ");
}
