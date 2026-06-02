subroutine test01()
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
end 

subroutine test02()
#if defined(__WORD64) || defined(__sparcv9) || defined(__x86_64__) || defined(__aarch64__)
integer(kind=8) i
#else
integer(kind=4) i
#endif
pointer (i,a)
integer a(10)
i=malloc(40_1)
a=(/1,2,3,4,5,6,7,8,9,10/)
do j=1,10
  if (a(j).ne.j) print *,'fail'
end do
call free(i)
end 
subroutine test03()
#if defined(__WORD64) || defined(__sparcv9) || defined(__x86_64__) || defined(__aarch64__)
integer(kind=8) i
#else
integer(kind=4) i
#endif
pointer (i,a)
integer a(10)
i=malloc(40_2)
a=(/1,2,3,4,5,6,7,8,9,10/)
do j=1,10
  if (a(j).ne.j) print *,'fail'
end do
call free(i)
end 
subroutine test04()
#if defined(__WORD64) || defined(__sparcv9) || defined(__x86_64__) || defined(__aarch64__)
integer(kind=8) i
#else
integer(kind=4) i
#endif
pointer (i,a)
integer a(10)
i=malloc(40_8)
a=(/1,2,3,4,5,6,7,8,9,10/)
do j=1,10
  if (a(j).ne.j) print *,'fail'
end do
call free(i)
end 

call test01()
call test02()
call test03()
call test04()
print *,'pass'
END
