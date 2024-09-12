module mod1
 type ty
  integer ii
 end type
end module

program main
 use mod1

 interface
  function funci1(i) result(rst)
   use mod1
   integer :: i
   character(len=:),allocatable :: rst
  end function
 end interface

 xx = fun(funci1)

 contains
  function fun(pi1)
   procedure(funci1) :: pi1
   integer :: i=2
   character(len=:),allocatable :: ptr
   allocate(ptr, source=pi1(i))
   print*,ptr
   fun = 5
  end function
end

function funci1(i) result(rst)
 use mod1
 integer :: i
 character(len=:),allocatable :: rst
 allocate(character(len=4)::rst)
 rst = "pass"
end function
