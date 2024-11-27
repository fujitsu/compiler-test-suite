module m
  type x
    integer ::n1
    integer ::n2
  end type
end
subroutine s(z)
use m
type(x)::z
z%n1=z%n1+1
z%n2=z%n2+1
end
use m
type(x)::y
y%n1=1
y%n2=2
call s(y)
if (y%n1/=2)write(6,*) "NG"
if (y%n2/=3)write(6,*) "NG"
y=x(1,2)
call s(y)
if (y%n1/=2)write(6,*) "NG"
print *,'pass'
end


    
