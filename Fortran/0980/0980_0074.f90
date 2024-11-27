implicit none
interface
  function fun01(p_chr01)
    implicit none
    integer :: fun01
    value :: p_chr01
    character(len=*) :: p_chr01
  end function
end interface
end program
