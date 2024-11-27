logical function equal_check_with_margin(a,b)
  real :: a,b
  equal_check_with_margin = ((abs(a - b)/abs(a)) .gt. 1.0E-5)
end function equal_check_with_margin

program main
logical::equal_check_with_margin
real,dimension(1:100)::a,b
a = (/(real(i)/1.1,i=1,100)/)
b = (/(real(i)/1.2,i=1,100)/)

r1 = sum(a)
call sub(r2,a)
r3 = sum(b)

if (equal_check_with_margin(r1, r2)) then
  print *,'ng','r1=',r1,' r2=', r2, ' r3=', r3
else
  print *,'ok'
endif
end

subroutine sub(r,a)
real r
real,dimension(1:100)::a
r = sum(a)
end subroutine
