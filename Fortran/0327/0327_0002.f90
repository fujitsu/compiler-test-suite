integer,target :: t
integer,pointer :: p
p=>t
t=10
r = func (p,p)
if (r==20 .and. t==20) then
  print *,'pass'
else
  print *,'pass',r,t
end if
contains

function func(xx,yy) result( r )
  integer,pointer :: xx,yy
  xx = 20
  r=yy
  end function
end
