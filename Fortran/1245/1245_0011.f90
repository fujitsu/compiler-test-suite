type x
 integer::x1
end type
type y
 integer::y1
end type
type(x)::vx
type(y)::vy
interface assignment(=)
 procedure ::s,t
end interface
vx=1
if (vx%x1/=1) print *,1001
vy=1
if (vy%y1/=1) print *,1002
print *,'sngg715p : pass'
contains
  subroutine s(d1,d2)
    type(x),intent(out)::d1
    integer,intent(in)::d2
    d1%x1=d2
  end
  subroutine t(d1,d2)
    type(y),intent(out)::d1
    integer,intent(in)::d2
    d1%y1=d2
  end
end
