module m1
  type x0
    integer::x01
    contains
      procedure:: t_prc01=>prc01
      procedure:: t_prc02=>prc02
      procedure:: t_prc00=>prc00
      procedure:: t_prc03=>prc03
      generic:: operator(.add.) => t_prc03
      generic:: operator(+) => t_prc00
      generic:: operator(.add.) => t_prc01
      generic:: operator(.add.) => t_prc02
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      procedure:: t_prc02=>prc12
      procedure:: t_prc00=>prc10
      procedure:: t_prc03=>prc13
      generic:: operator(.add.) => t_prc02
      generic:: operator(.add.) => t_prc03
      generic:: operator(+) => t_prc00
  end type
  integer::flag
contains
 function   prc00(x) result(kk)
   class(x0),intent(in)::x
   select type(x)
    type is(x0)
      kk=x%x01 
    type is(x1)
      kk=x%x11 
   end select
   flag=4
 end function
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
 function   prc03(x,y) result(kk)
   class(x0),intent(in)::x
   integer(8),intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x11 + y
    type is(x0)
      kk=x%x01 + y 
   end select
   flag=3
 end function
 function   prc10(x) result(kk)
   class(x1),intent(in)::x
   select type(x)
    type is(x1)
      kk=x%x11 
   end select
   flag=14
 end function
 function   prc12(x,y) result(kk)
   class(x1),intent(in)::x
   integer(1) ,intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x11 + y + 1
   end select
   flag=12
 end function
 function   prc13(x,y) result(kk)
   class(x1),intent(in)::x
   integer(8),intent(in)::y
   select type(x)
    type is(x1)
      kk=x%x11 + y
   end select
   flag=13
 end function
end 
use m1
class(x0),allocatable:: v00,v01
class(x1),allocatable:: v11
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
if ((v00.add.2_8 )/= 3) print *,'error-005' 
if (flag/=3)print *,'error-006'
if ((+v00) /= 1) print *,'error-007' 
if (flag/=4)print *,'error-008'

if ((v01.add.2_4 )/= 4) print *,'error-011' 
if (flag/=1)print *,'error-012'
if ((v01.add.2_1 )/= 5) print *,'error-013' 
if (flag/=12)print *,'error-014'
if ((v01.add.2_8 )/= 4) print *,'error-015' 
if (flag/=13)print *,'error-016'
if ((+v01) /= 2) print *,'error-017' 
if (flag/=14)print *,'error-018'
allocate(v11)
v11%x01=1
v11%x11=2
if ((v11.add.2_4 )/= 4) print *,'error-021' 
if (flag/=1)print *,'error-022'
if ((v11.add.2_1 )/= 5) print *,'error-023' 
if (flag/=12)print *,'error-024'
if ((v11.add.2_8 )/= 4) print *,'error-025' 
if (flag/=13)print *,'error-026'
if ((+v11) /= 2) print *,'error-027' 
if (flag/=14)print *,'error-028'

print *,'pass'
end
