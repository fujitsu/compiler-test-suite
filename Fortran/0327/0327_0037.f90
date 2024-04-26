integer:: x,y
x=10
y=10
call sub(x,x,y)
call ent(x,x,y)
if ( x==10 .and. y==20) then
  print *,'pass'
else
  print *,'ng'
end if
end

subroutine sub(a,b,c)
  integer,intent(in) :: a,b
  integer:: c
  c=a+b
  entry ent(a,b,c)
  print *,'ent'
end
