interface
subroutine z1(dmy)
 integer::dmy
end subroutine
end interface

interface
subroutine z2(dmy)
 integer::dmy
end subroutine
end interface


integer::act
call z1(act)
if(act /= 20)print*,"101"
call z2(act)
if(act /= 10)print*,"102"
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

