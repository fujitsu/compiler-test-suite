real :: x
x=10
call sub(x,x)
if (x==10) then
  print *,'pass'
else
  print *,'ng'
end if
end

subroutine sub(a,b)
  real :: a,b
  print *,'sub:',a,b
end
