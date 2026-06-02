 module mod_BASE
    implicit none
    private
    public :: subA

    type, public :: user_type_t
       integer :: ip1, im1
    end type user_type_t
  contains
    subroutine subA(user_type,f,g,h,i)
      type(user_type_t), intent(in) :: user_type
      real(8), dimension(..) :: f
      type(*), dimension(..) :: g
      type(*), dimension(:) :: h
      type(*)               :: i
  write(1,*) size(f)
  write(1,*) size(g)
  write(1,*) size(h)
  write(1,*) loc(i)
    end subroutine subA
  end module mod_BASE

  module mod_C
  use mod_BASE
    private  
  end module mod_C

  program main
    use mod_C
    use mod_BASE
print *,'pass'
  end program main
