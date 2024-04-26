interface 
subroutine z1
implicit none
end subroutine
subroutine z2
implicit none
end subroutine
end interface


call z1
call z2

print *,'PASS'
end


integer function s1() bind(c,name='ss1')
implicit none
  s1=1
end function
integer function s1() bind(c,name='ss2')
implicit none
  s1=2
end function

subroutine z1
implicit none
interface
   integer function s1() bind(c,name='ss1')
   implicit none
   end function
end interface
type ty
 integer::cmp1,cmp2
end type
type(ty)::obj
if (s1()/=1) print *,101
obj=ty(s1(),10+s1())
if(obj%cmp1 /= 1 .and. obj%cmp2 /= 11)print*,"201"
end

subroutine z2
implicit none
interface
   integer function s1() bind(c,name='ss2')
   implicit none
   end function
end interface
real::arr(5,10)
integer::brr(2)
if (s1()/=2) print *,102
arr(s1(),s1()+2)=70.5

brr=[s1()*5,s1()+s1()]

if(arr(2,4) /= 70.5) print*,"202"
if(any(brr /= [10,4]))print*,"203"
end subroutine



