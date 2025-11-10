int foo(int val)
{
#ifdef __x86_64__
   __asm__ volatile (
		     "movl %edi, %eax\n\t"
		     "addl $10, %eax\n\t"
		     );
#else
   return 20;
#endif
}
