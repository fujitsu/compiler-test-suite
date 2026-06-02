subroutine sub(arg1,arg2)
  integer :: arg1
  real :: arg2
  if ( 100 .ne. arg1 ) print *,'fail'
  if ( 1.0 .ne. arg2 ) print *,'fail'
end subroutine
external :: sub
procedure(),pointer :: ppp
procedure(),pointer :: qqq
ppp=>sub
call ppp(100,1.0)
qqq=>sub
call qqq(100,1.0)
print *,'ok'
end
