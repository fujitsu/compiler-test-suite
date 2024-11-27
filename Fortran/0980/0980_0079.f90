module mod01
  implicit none
  interface
    function fun01(p_chr01)
      integer :: fun01
      value :: p_chr01
      character(*) :: p_chr01
    end function
  end interface
end module
end program
