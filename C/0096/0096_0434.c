#include  <stdio.h>

 
 struct st {
        int sti;
        char stc;
 };
int main()
{
    struct st func(),st0;
#ifdef __STDC__
    int chk(struct st st0);
#else
    int chk();
#endif
    st0 = func();
    if(chk(st0))
      printf(" *** CHK OK ***\n");
    else
      printf(" *** CHK NG ***\n");
    printf(" *****    END  *****\n");
}
 struct st func()
{
  struct st s;
    s.sti=1;
    s.stc='a';
    return(s);
}
 int chk(s)
   struct st s;
{
   if(s.sti!=1)return(0);
   if(s.stc!='a')return(0);
   return(1);
}
