module m1
contains
subroutine z1(dmy)
 integer::dmy
interface
   subroutine  s1(dmy1) bind(c,name='ss2')
   implicit none
    integer::dmy1
   end subroutine
end interface
call s1(dmy) 
end

subroutine z2(dmy)
 integer::dmy
interface
  subroutine s1(dmy1) bind(c,name='ss1')
   implicit none
    integer::dmy1
   end subroutine
end interface
call s1(dmy) 
end

subroutine z3(dmy)
 integer::dmy
interface
  subroutine s1(dmy1) bind(c,name='')
   implicit none
    integer::dmy1
   end subroutine
end interface
call s1(dmy) 
end
end module 


use m1
integer::act
call z1(act)
if(act /= 20)print*,"101"
call z2(act)
if(act /= 10)print*,"102"
call z3(act)
if(act /= 30)print*,"103"
print *,'PASS'
end


subroutine s1(dmy1) bind(c,name='ss2')
   implicit none
    integer::dmy1
    dmy1=20
end subroutine
subroutine s1(dmy1) bind(c,name='ss1')
   implicit none
    integer::dmy1
    dmy1=10
end subroutine

subroutine s1(dmy1) bind(c,name='')
   implicit none
    integer::dmy1
    dmy1=30
end subroutine
