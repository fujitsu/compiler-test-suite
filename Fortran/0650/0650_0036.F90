call test01()
print *,'pass'
end
subroutine test01()
pointer (ip,ia)
ip=malloc(4)
end 
subroutine sss(malloc)
external malloc
#if defined(__WORD64) || defined(__sparcv9) || defined(__x86_64__) || defined(__aarch64__)
integer(kind=8) malloc
#else
integer(kind=4) malloc
#endif
#if defined(__WORD64) || defined(__sparcv9) || defined(__x86_64__) || defined(__aarch64__)
integer(kind=8) i
#else
integer(kind=4) i
#endif
pointer (i,a)
integer a(10)
i=malloc(40)
a=(/1,2,3,4,5,6,7,8,9,10/)
do j=1,10
  if (a(j).ne.j) print *,'fail'
end do
call free(i)
end subroutine
