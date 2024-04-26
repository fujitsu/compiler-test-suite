module m1
  type x0
    integer::x01
    contains
      procedure:: t_prc01=>prc01
      procedure:: t_prc02=>prc02
      generic:: operator(.add.) => t_prc01
      generic:: operator(.add.) => t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc11=>prc11
      procedure:: t_prc12=>prc12
      generic:: operator(.add.) => t_prc11
      generic:: operator(.add.) => t_prc12
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
 function   prc02(x,y) result(kk)
   class(x0),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x0)
      kk=x%x01 + y + 1
    type is(x1)
      kk=x%x11 + y + 1
   end select
   flag=2
 end function
 function   prc11(x,y) result(kk)
   class(x1),intent(in)::x
   integer(8),intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x11 + y
   end select
   flag=3
 end function
 function   prc12(x,y) result(kk)
   class(x1),intent(in)::x
   integer(2) ,intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x11 + y
   end select
   flag=4
 end function
end 
use m1
class(x0),allocatable:: v00,v01
allocate(v00)
v00%x01=1
allocate(x1::v01)
v01%x01=1
select type(v01)
  type is(x1)
    v01%x11=2
end select
if ((v00.add.2_4 )/= 3) print *,'error-001' 
if (flag/=1)print *,'error-002'
if ((v00.add.2_1 )/= 4) print *,'error-003' 
if (flag/=2)print *,'error-004'
if ((v01.add.2_4 )/= 4) print *,'error-005' 
if (flag/=1)print *,'error-006'
if ((v01.add.2_1 )/= 5) print *,'error-007' 
if (flag/=2)print *,'error-008'
print *,'pass'
end
