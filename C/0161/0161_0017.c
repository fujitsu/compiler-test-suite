#include  <stdio.h>

#if defined(i386) || defined(__x86_64__) || defined(__aarch64__) || defined(OBE) || defined(__HPC_ACE__)
int main()
{
  puts("*** o k ***");
  puts("*** o k ***");
  puts("*** o k ***");
}
#else
int main() {
 sub1();
 sub2(1);
 sub3();
}

sub1() {
    
    {   int a=0,b;
        float f1=1.25,f2; 
        double d1=-1,d2;
	asm("        fcnv.fd {f1},%fr1");
	asm("        fadd.d  %fr1,{d1},%fr1");
	asm("        fcnv.df %fr1,[f2]");
	asm("        fadd.d  %fr1,%fr0,[d2]");

	if (f2 != .25 || d2 != .25)
            printf("*** n g ***\n");
        else
            printf("*** o k ***\n");
    }
}

sub2(int i) {
    
    {   char *pok="*** o k ***\n";
        char *png="*** n g ***\n";
        unsigned long int gr3;

	asm("        add    %gr3,%gr0,[gr3]");
	asm("        subli5 {i},1,%gr0");
	asm("        brcs   %iccp.z,$ok   ");
	asm("        add    {png},%gr0,%gr16");
#ifdef solaris1
	asm("        call   _printf,%gr3        ");
#else
	asm("        call   printf,%gr3        ");
#endif
	asm("$ok:        ");
	asm("        add    {pok},%gr0,%gr16");
#ifdef solaris1
	asm("        call   _printf,%gr3        ");
#else
	asm("        call   printf,%gr3        ");
#endif
	asm("        add    {gr3},%gr0,%gr3");

    }
 }   

int var0;
sub3() {

        asm(".comm   var1,4");
	asm("        seti   var1,%gr16   ");
	asm("        ld     %gr16,%gr0,[var0]     ");

	if(var0 != 0)
            printf("*** n g ***\n");
        else
            printf("*** o k ***\n");
}
#endif
