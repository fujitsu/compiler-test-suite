module m1
character,bind(c):: ab1='1'
character,bind(c):: ab2
character,bind(c):: ab3(3)
contains
subroutine csub(arg1,arg2,arg3)  bind(c)
  use,intrinsic::iso_c_binding,only:c_char
  character(kind=c_char,len=1),value::arg1
  character(kind=c_char,len=1)      ::arg2
  character(kind=c_char,len=1)      ::arg3
  call x(arg1,arg2,arg3,'c','d')
  call x(ab1,ab2,ab3(1),ab3(2),ab3(3))
end subroutine csub
subroutine x(a1,a2,a3,a4,a5) bind(c)
  use,intrinsic::iso_c_binding,only:c_char
  character(kind=c_char,len=1)      ::a1
  character(kind=c_char,len=1)      ::a2
  character(kind=c_char,len=1)      ::a3
  character(kind=c_char,len=1)      ::a4
  character(kind=c_char,len=1)      ::a5
if (a1/='1')print *,'fail'
if (a2/='a')print *,'fail'
if (a3/='b')print *,'fail'
if (a4/='c')print *,'fail'
if (a5/='d')print *,'fail'
end subroutine
end
use m1
ab2='a'
ab3=(/'b','c','d'/)
call csub(ab1,ab2,ab3(1))
print *,'pass'
end
