module mod01
  implicit none
contains
  subroutine sub00()
  contains
    function fun01(p_chr01)
      integer :: fun01
      value :: p_chr01
      character(len=*) :: p_chr01
      p_chr01 = "char"
      fun01 = 1
    end function
  end subroutine
end module
end program
