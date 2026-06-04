module m1
  type x0
    integer::x01
    contains
      private
      procedure:: t_prc01=>prc01
      procedure:: t_prc02=>prc02
      procedure:: t_prc04=>prc04
      procedure:: t_prc05=>prc05
      procedure:: t_prc00=>prc00
      procedure:: t_prc03=>prc03
      generic:: assignment(=) => t_prc05
      generic:: operator(.add.) => t_prc03
      generic:: operator(+) => t_prc00
      generic:: operator(.add.) => t_prc01
      generic:: operator(.add.) => t_prc02
      generic:: assignment(=) => t_prc04
  end type
  type,extends(x0)::x1
    integer::x11
    contains
      private
      procedure:: t_prc05=>prc15
      procedure:: t_prc02=>prc12
      procedure:: t_prc00=>prc10
      procedure:: t_prc03=>prc13
      generic:: operator(.add.) => t_prc02
      generic:: operator(.add.) => t_prc03
      generic:: operator(+) => t_prc00
      generic:: assignment(=) => t_prc05
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
 subroutine   prc04(x,y) 
   class(x0),intent(out)::x
   integer(8),intent(in)::y
   select type(x)
    type is(x1)
      x%x01 = y-1 
      x%x11 = y
    type is(x0)
      x%x01 = y 
   end select
   flag=21
 end subroutine
 subroutine   prc05(x,y) 
   class(x0),intent(out)::x
   integer,intent(in)::y
   select type(x)
    type is(x1)
      x%x01 = y-1 
      x%x11 = y
    type is(x0)
      x%x01 = y 
   end select
   flag=22
 end subroutine
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
 subroutine   prc15(x,y) 
   class(x1),intent(out)::x
   integer,intent(in)::y
   x%x01 = y-1
   select type(x)
    type is(x1)
      x%x11 = y
   end select
   flag=32
 end subroutine

subroutine s1(k1,k2)
class(x0),allocatable:: v00,v01,v02,v03
class(x1),allocatable:: v11
do k=k1,k2
allocate(v00)
v00%x01=1
allocate(x1::v01,v02)
v01%x01=1
v02%x01=1
select type(v01)
  type is(x1)
    v01%x11=2
end select
select type(v02)
  type is(x1)
    v02%x11=2
end select
if ((v00.add.2_4 )/= 3) print *,'error-001' 
if (flag/=1)print *,'error-002'
if ((v00.add.2_1 )/= 4) print *,'error-003' 
if (flag/=2)print *,'error-004'
if ((v00.add.2_8 )/= 3) print *,'error-005' 
if (flag/=3)print *,'error-006'
if ((+v00) /= 1) print *,'error-007' 
if (flag/=4)print *,'error-008'
v00=3_8
if (v00%x01/=3)print *,'error-09'
if (flag/=21)print *,'error-09a'
v02=4_8
select type(v02)
  type is(x1)
    if (v02%x11/=4) print *,'error-09b'
end select
if (flag/=21)print *,'error-09c'
allocate(v03)
v03=5_4
if (v03%x01/=5) print *,'error-09d'
if (flag/=22)print *,'error-09e'
v03=15_8
if (v03%x01/=15) print *,'error-09f'
if (flag/=21)print *,'error-09g'
deallocate(v03)
allocate(x1::v03)
v03=7_4
if (v03%x01/=6) print *,'error-09h'
select type(v03)
  type is(x1)
    if (v03%x11/=7) print *,'error-09i'
end select
if (flag/=32)print *,'error-09j'
v03=16_8
if (v03%x01/=15) print *,'error-09k'
select type(v03)
  type is(x1)
    if (v03%x11/=16) print *,'error-09l'
end select
if (flag/=21)print *,'error-09m'

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
end do
end subroutine 
end
use m1
call s1(3,3)
print *,'pass'
end
