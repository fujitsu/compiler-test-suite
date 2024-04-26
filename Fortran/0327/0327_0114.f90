integer :: a
a=1
call sub(a)
if ( a==10) then
  print *,'pass'
else
  print *,'ng'
end if
end

subroutine sub(a)
  integer :: a
  a=10
end
