#include  <stdio.h>

  static int a,b[]={1,2,3,4,5};
  static int *c= &a;
  static int x1=11,x2=12,x3=13,x4=14,x5=15;
  static int *d[]={&x1,&x2,&x3,&x4,&x5};

  struct tt {
              int sa;
              int sb[5];
            } sss;

 int 
func (int i, int j, int k, int l, int m)
{
    int cd;
    switch(i){
       case 1:
          cd=++j;
          break;
       case 2:
          cd=++k;
          break;
       case 3:
          cd=++l;
          break;
       case 4:
          cd=++m;
          break;
       default:
          cd=++i;
    }
    return(cd);
}
int 
main (void)
 {
     int r[5],i;
     static int rd[]={2,2,14,15,6};
     struct tt *p=&sss;
     for(i=0;i<5;sss.sb[i]=*d[i],i++);
     for(a=0;a<5;a++){
        r[a]=func(a+1,b[a],*c,*d[a],p->sb[a]);
        if(r[a]!=rd[a])
           printf("** NG NG NG =>> r(%d)=%d, right data=%d **\n",
                                         a,  r[a],        rd[a]);
        else
           printf("** r(%d) OK **\n",a);
     }
     printf("*****  END *****\n");
 }
