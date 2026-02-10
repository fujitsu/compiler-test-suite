recursive function st64_1()
implicit none
type T
  real*8 r1(4), r2(4)
end type
type(T) st64_1
type(T) st64_2
 st64_1%r1 = 0
 st64_1%r2 = 0
 return 
entry    st64_2()
 st64_2%r1 = 0
 st64_2%r2 = 1
end function
