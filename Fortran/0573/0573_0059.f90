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
    integer,allocatable::y
    allocate(y)
    y=2
    obj%aaa = x(1) + y
    if(any(x.ne.[1,2,3,4,5]))print*,"101"
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
  integer::x(5) =[1,2,3,4,5]
  integer,allocatable::y
  call obj%proc_b(x,NULL(y))
  i =  obj%proc_a() 
  if(i.ne.3)print*,i
  if(any(x.ne.[11,12,13,14,15]))print*,"102"
  print*,"Pass"
end program
