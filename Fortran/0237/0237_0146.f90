module m1
  type x0
    integer::x01
    contains
      procedure:: t_prc01=>prc01
      generic:: operator(.add.) => t_prc01
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc01=>prc11
      generic:: operator(.add.) => t_prc01
  end type
  integer::flag

contains
 function   prc01(x,y) result(kk)
   class(x0),intent(in)::x
   integer,intent(in)::y
   select type(x)
    type is(x0)
      kk=x%x01 + y
    type is(x1)
      kk=x%x11 + y
   end select
   flag=1
 end function
 function   prc11(x,y) result(kk)
   class(x1),intent(in)::x
   integer,intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x11 + y
   end select
   flag=3
 end function
end 
use m1
class(x0),allocatable:: v00,v01
allocate(v00)
v00%x01=1
if ((v00.add.2 )/= 3) print *,'error-001' 
if (flag/=1)print *,'error-002'
allocate(x1::v01)
v01%x01=1
select type(v01)
  type is(x1)
    v01%x11=2
end select
if ((v01.add.2 )/= 4) print *,'error-011' 
if (flag/=3)print *,'error-012'
print *,'pass'
end
