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
    integer:: x(5)
    integer*4::y
    obj%aaa = x(1) + 2
    if(any(x.ne.[1,2,3,4,5]))print*,"101"
    if(loc(x).ne.y)print*,"301"
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
  integer::k=1
  integer::x(5) =[1,2,3,4,5]
  integer*4::l1
   l1=loc(x)
  call obj%proc_b(x(1:5:k),l1)
  i =  obj%proc_a() 
  if(i.ne.3)print*,i
  if(any(x.ne.[11,12,13,14,15]))print*,"102"
  print*,"Pass"
end program
