module mod01
contains
  function fun01(p_chr01)
    implicit none
    integer :: fun01
    value :: p_chr01
    character(*) :: p_chr01
    p_chr01 = "char"
    fun01 = 1
  end function
end module
end program
