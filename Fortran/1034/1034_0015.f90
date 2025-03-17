module m1
 type x
   integer a
 end type
  interface assignment(=)
    module procedure v
  end interface
 contains
 subroutine v(y,z)
 type(x),intent(out)::y
 type(x),intent(in)::z
 y%a=z%a+10
 end subroutine
end
use m1
 type(x)::yy,zz
 zz%a=10
 yy=zz
 if (yy%a/=20)print *,'error'
 print *,'pass'
 end
