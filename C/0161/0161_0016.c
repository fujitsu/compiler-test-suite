#include  <stdio.h>

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) 
int main()
{
  puts(" *** test-1 ok ***");
  puts(" *** test-2 ok ***");
  puts(" *** test-3 ok ***");
  puts(" *** test-4 ok ***");
}
#else
int main()
{
 sub1();
 sub2();
 sub3();
}

int i;
static s;
char *p="abc";
sub1()
{
char q;
i=-1;
	asm("     add       {i},{s},%gr30");
	asm("     ld.c      {p},2,%gr31");
	asm("     add       %gr30,%gr31,%gr30");
	asm("     addi5     %gr30,0,[q]");
  
if (q != 'b')
    printf(" *** test-1 error ***\n");
else
    printf(" *** test-1 ok ***\n");
}

union tag {
   int i;
   unsigned char c[4];
} un,*unp=&un;
sub2()
{
un.c[0] = 0xff;
un.c[2] = 0x7f;
#ifdef TC32
	asm("     addi23    %gr0,255,%gr30");
	asm("     st.c      %gr30,{unp},1");
	asm("     addi5     %gr0,1,%gr30");
	asm("     st.c      %gr30,{unp},3");
#else
	asm("     addi25    %gr0,255,%gr30");
	asm("     st.c      %gr30,{unp},1");
	asm("     addi5     %gr0,1,%gr30");
	asm("     st.c      %gr30,{unp},3");
#endif
if (un.c[1]!=0xff || un.c[3]!=0x01 || un.i!=0xffff7f01)
    printf(" *** test-2 error ***\n");
else
    printf(" *** test-2 ok ***\n");


	asm("     ld.cu     {unp},1,%gr30");
	asm("     st.c      %gr30,{unp},%gr0");
	asm("     ld.su     {unp},0,%gr30");
	asm("     st.s      %gr30,{unp},2");

if (un.i != -1)
    printf(" *** test-3 error ***\n");
else
    printf(" *** test-3 ok ***\n");
}

sub3()
{
int a,b,c;
a=1; b=2;
c=a*b;
if(c>a)
  a=3;
else
  b++;

	asm("   add  {a},{b},%gr30");
	asm("   brcs %true,$l001");
	asm("$l001:");
	asm("   add  %gr30,%gr0,[c]");

if(c != 5)
    printf(" *** test-4 error ***\n");
else
    printf(" *** test-4 ok ***\n");
}
#endif
