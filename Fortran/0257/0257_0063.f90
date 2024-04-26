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
    integer:: x(3,3)
    integer*4::y
    obj%aaa = x(1,1) + 2
    if(any(x.ne.reshape([1,2,3,4,5,6,7,8,9],[3,3])))print*,"101"
    if(loc(x).ne.y)print*,"105"
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
  integer*4::l1
  integer::x(3,3) =reshape([1,2,3,4,5,6,7,8,9],[3,3])
  l1=loc(x)
  call obj%proc_b(x(1:3:k,1:3:k),l1)
  i =  obj%proc_a() 
  if(i.ne.3)print*,i
  if(any(x.ne.reshape([11,12,13,14,15,16,17,18,19],[3,3])))print*,"102"
  print*,"Pass"
end program
