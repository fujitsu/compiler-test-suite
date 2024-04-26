real :: x
x=10
call sub(x,x)
call ent(x,x)
if (x==10) then
  print *,'pass'
else
  print *,'ng'
end if
end

subroutine sub(a,b)
  real :: a,b
  print *,'sub:',a,b
entry ent(a,b)
  print *,'ent:',a,b
end
