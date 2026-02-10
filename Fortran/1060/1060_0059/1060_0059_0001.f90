recursive function st64_1(rarg)
implicit none
save
type T
  real*8 r1(4), r2(4)
end type
type(T) st64_1
type(T) st64_2
real*4 rarg
integer*4 iarg
 st64_1%r1 = 0
 st64_1%r2 = 0
  if (rarg .ne. -1.0) then 
    print *, rarg
    stop '2-1'
  endif
 return 
entry    st64_2(iarg)
 st64_2%r1 = 0
 st64_2%r2 = 1
  if (iarg .ne. -2) stop '2-2'
end function
