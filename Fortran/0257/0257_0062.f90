module mod
  type ty
 integer,private :: aaa               
   contains
    PROCEDURE :: proc_a                
    PROCEDURE :: proc_b => proc
  end type
contains
  subroutine proc(obj, x, y)
    class(ty), intent(inout) :: obj
    integer:: x(3)
    integer*4::y
    obj%aaa = x(1) + 2
    if(loc(x).eq.y)print*,"102"
    if(any(x.ne.[1,3,5]))print*,"101"
    x = x + 10
  end subroutine
  integer function proc_a(obj)
    class(ty), intent(in) :: obj
    proc_a = obj%aaa
  end function
end module
program main
  use mod
  type(ty) :: obj
  integer::k=2
  integer::x(5) =[1,2,3,4,5]
  integer*4::l1
  l1=loc(x)
  call obj%proc_b(x(1:5:k),l1)
  i =  obj%proc_a() 
  if(i.ne.3)print*,i
  if(any(x.ne.[11,2,13,4,15]))print*,"102"
  print*,"Pass"
end program
