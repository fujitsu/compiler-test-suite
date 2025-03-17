float data1[] = { -1.0, -2.0, -3.0 };
float data2[] = {  1.0,  2.0, 3.0 };
float data3[] = {  0, 0, 0 };
int main()
{
  int i;
  for(i=0 ; i < 100000000; i++ ) {
#ifdef MOVLPS
#if defined(__x86_64__)
asm(
"	movlps	data1+0(%rip),%xmm0\n"
"	movlps	data2+0(%rip),%xmm1\n"
"	addps	%xmm1,%xmm0\n"
"	movlps	%xmm0,data3+0(%rip)\n"
);
#endif
#elif MOVSD
#if defined(__x86_64__)
asm(
"	movsd	data1+0(%rip),%xmm0\n"
"	movsd	data2+0(%rip),%xmm1\n"
"	addps	%xmm1,%xmm0\n"
"	movsd	%xmm0,data3+0(%rip)\n"
);
#endif
#else
#if defined(__x86_64__)
asm(
"       movss   data1+0(%rip),%xmm0\n"
"       movss   data1+4(%rip),%xmm2\n"
"       unpcklps        %xmm2,%xmm0\n"
"       movss   data2+0(%rip),%xmm3\n"
"       movss   data2+4(%rip),%xmm4\n"
"       unpcklps        %xmm4,%xmm3\n"
"	addps	%xmm3,%xmm0\n"
"	movlps	%xmm0,data3+0(%rip)\n"
);
#endif
#endif
  }
}



