function func(arg1,arg2)
  integer :: arg1
  real :: arg2
  func = arg1*arg2
end function
external :: func
procedure(),pointer :: ppp
procedure(),pointer :: qqq
ppp=>func
if ( 100.0 .ne. ppp(100,1.0) ) print *,'fail'
qqq=>func
if ( 100.0 .ne. qqq(100,1.0) ) print *,'fail'
print *,'ok'
end
