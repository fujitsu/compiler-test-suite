#include  <stdio.h>

static void sub1();
static void sub2();
static void sub3();
static void sub4();
static void sub5();
static void sub6();
static void sub7();

int main() {
  sub1();
  sub2();
  sub3(); 
  sub4();
  sub5();
  sub6();
  sub7();
  return 0;
}
void sub1() {
  int a,b;
  a=b=10;
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE) || defined (__HPC_ACE__)
  a = a ^ b;
#else
  asm("          add       {a},%gr0,%gr28");
  asm("          add       {b},%gr0,%gr29");
  asm("          xor       %gr28,%gr28,%gr28");
  asm("          add       %gr28,%gr0,[a]");
  asm("          add       %gr29,%gr0,[b]");
#endif
  if(a == 0 && b == 10)
    printf("\n test no.1 ==> ok\n");
  else
    printf("\n test no.1 ==> ng\n");
}
void sub2() {
  int a,result;
  a = result =0;
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE) || defined (__HPC_ACE__)
 L12: ;
  if( a > 10 ) goto L11;
  a++;
  goto L12;
 L11: ;
  result = a;
#elif TC32
  asm("         add       {a},%gr0,%gr28");
  asm("$l12:");
  asm("         subi5    {a},10,%gr0");
  asm("         brncs     %iccp.le,$l11");
  asm("         addi5    {a},1,%gr28");
  asm("         add       %gr28,%gr0,[a]");
  asm("         brcs      %true,$l12");
  asm("$l11:");
  asm("         add       {a},%gr0,%gr28");
  asm("         add       %gr28,%gr0,[result]");
#else
  asm("         add       {a},%gr0,%gr28");
  asm("$l12:");
  asm("         subli5    {a},10,%gr0");
  asm("         brncs     %iccp.le,$l11");
  asm("         addli5    {a},1,%gr28");
  asm("         add       %gr28,%gr0,[a]");
  asm("         brcs      %true,$l12");
  asm("$l11:");
  asm("         add       {a},%gr0,%gr28");
  asm("         add       %gr28,%gr0,[result]");
#endif
  if (result == 11)
    printf(" test no.2 ==> ok\n");
  else 
    printf(" test no.2 ==> ng(%d)\n",result);
}
void sub3() {
  int xx,yy;
  int a[10],b[10],i,inc,c,ct;
  for(i=0; i<=9 ; i++){
    a[i] = i;
    if(i%2 == 0)
      b[i] = i-1;
    else
      b[i] = i+1;
  }
  
  c=4;
  i=ct=0;
  inc=1;
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE) || defined (__HPC_ACE__)
  {
    int tmp;
    tmp = 0;
    goto L002;
  L001:
    xx = a[tmp/4];
    yy = b[tmp/4];
    if( xx > yy ) goto L003;
    goto L002;
  L003:
    ct = ct + inc;
  L002:;
    tmp = tmp + c;
    i = i + inc;
    if( i <=9 ) goto L001;
  }
#else
  asm("          add      %gr0,%gr0,%gr28");
  asm("          brcs     %true,$l002");
  asm("$l001:");                       
  asm("          ld       {a},%gr28,%gr29"); 
  asm("          ld       {b},%gr28,%gr31");
  asm("          sub      %gr29,%gr31,%gr0");
  asm("          brncs    %iccp.le,$l003");
  asm("          brcs     %true,$l002");
  asm("$l003:");
  asm("          add      {ct},{inc},%gr30"); 
  asm("          add      %gr30,%gr0,[ct]"); 
  asm("$l002:");
  asm("          add      %gr28,{c},%gr28");
  asm("          add      {i},{inc},%gr30"); 
  asm("          add      %gr30,%gr0,[i]"); 
  asm("          subi5    {i},9,%gr0");
  asm("          brcs     %iccp.le,$l001");
#endif
  if( ct == 4)
    printf(" test no.3 ==> ok\n");
  else
    printf(" test no.3 ==> ng(%d %d)\n",ct,i);
}  
void sub4() {
  float  a,b,c;

  a = 1.0;
  b = 0.0;
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE) || defined (__HPC_ACE__)
  c = a;
  a = b;
  b = b + c;
#else
  asm("          fadd       {b},%fr0,%fr2");
  asm("          fadd       {a},%fr2,%fr1");
  asm("          fadd       %fr2,%fr0,[a]");
  asm("          fadd       %fr1,%fr0,[b]");
#endif
  if(a == 0.0 && b == 1.0)
    printf(" test no.1 ==> ok\n");
  else
    printf(" test no.1 ==> ng\n");
}

int i;
static int s;
char *p="abc";
void sub5() {
  char q;
  i=-1;
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE) || defined(__HPC_ACE__)
  q =  i+s + *(p+2);
#else
  asm("     add       {i},{s},%gr28");
  asm("     ld.cu     {p},2,%gr29");
  asm("     add       %gr28,%gr29,[q]");
#endif
  
  if (q != 'b')
    printf(" *** test-1 error ***\n");
  else
    printf(" *** test-1 ok ***\n");
}

union tag {
  int i;
  unsigned char c[4];
} un,*unp=&un;

static void fence() {
  asm("");
}

void sub6() {
  un.c[0] = 0xff;
  un.c[2] = 0x7f;
  
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE) || defined(__HPC_ACE__)
  {
    char *tmp = (char *)unp;
    *(tmp+1) = 255;
    *(tmp+3) = 1;
    fence();
  }
#elif TC32
  asm("     addi23    %gr0,255,%gr28");
  asm("     st.c      %gr28,{unp},1");
  asm("     addi5     %gr0,1,%gr28");
  asm("     st.c      %gr28,{unp},3");
#else
  asm("     addli25   %gr0,255,%gr28");
  asm("     st.c      %gr28,{unp},1");
  asm("     addli5    %gr0,1,%gr28");
  asm("     st.c      %gr28,{unp},3");
#endif
  
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE)
  if (un.c[1]!=0xff || un.c[3]!=0x01 || un.i!=0x017fffff)
#else
  if (un.c[1]!=0xff || un.c[3]!=0x01 || un.i!=0xffff7f01)
#endif
    printf(" *** test-2 error ***\n");
  else
    printf(" *** test-2 ok ***\n");
  
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE) || defined(__HPC_ACE__)
  {
    char *p = (char *)unp;
    short *p2 = (short *)unp;
    *p =  *(p+1);
    *(p2+1) =  *p2;
    fence();
  }
#else
  asm("     ld.cu      {unp},1,%gr28");
  asm("     st.c       %gr28,{unp},0");
  asm("     ld.su      {unp},0,%gr28");
  asm("     st.s       %gr28,{unp},2");
#endif
  
  if (un.i != -1)
    printf(" *** test-3 error ***\n");
  else
    printf(" *** test-3 ok ***\n");
}

void sub7() {
  int a,b,c;
  a=1; b=2;
  c=a*b;
  if(c>a)
    a=3;
  else
    b++;
  
#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE) || defined(__HPC_ACE__)
  c = a + b;
#else
  asm("   add    {a},{b},%gr28");
  asm("   brcs   %true,$l004");
  asm("$l004:");
  asm("   add    %gr28,%gr0,[c]");
#endif
  
  if(c != 5)
    printf(" *** test-4 error ***\n");
  else
    printf(" *** test-4 ok ***\n");
}
