integer(4) function fun(x)
  integer::x
  fun=x+1
  return
end function

subroutine sub
  print *,'sub'
end subroutine

real(4),parameter::r=1.0
integer,parameter::fun=3
complex::c=(fun,r)

if ( abs(real(c) - 3.0 ) < 0.000001 ) then
  print *,'pass'
else
  print *,'ng',c
endif
end
