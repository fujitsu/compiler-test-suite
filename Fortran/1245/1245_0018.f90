type x
 integer::x1
end type
type y
 integer::y1
end type
type(x)::vx=x(1)
type(y)::vy=y(1)
interface operator  (+)
 procedure ::s,t
end interface
if (vx+1) print *,1001
if (vy+1) print *,1002
print *,'sngg722p : pass'
contains
  function   s(d1,d2) result(r)
    type(x),intent(in )::d1
    integer,intent(in)::d2
    logical::r
if (d1%x1/=d2) print *,1001
   r=.false.
  end
  function   t(d1,d2) result(r)
    logical::r
    type(y),intent(in )::d1
    integer,intent(in)::d2
if (d1%y1/=d2) print *,1001
   r=.false.
  end
end
