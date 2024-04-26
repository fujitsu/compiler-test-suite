module def
type ydef
complex yy
end type
end module def


use def
type (ydef) :: x,y
x%yy=(0,0)
y%yy=(0,0)
call sub(x,x)
  print *,'pass'
  write(1,*) 'ng',x%yy,y%yy
end

subroutine sub(a,b)
use def
type (ydef) :: a,b
a%yy=(50,50)
b%yy=(100,100)
end
