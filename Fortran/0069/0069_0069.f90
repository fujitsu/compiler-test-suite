  implicit none
  print *,'pass'
end

subroutine sub01()
  implicit none
  character(3),pointer :: chr_pointer01
  allocate(chr_pointer01,source=i_fun01()) !
contains
  function i_fun01()
    character(3) :: i_fun01
    i_fun01 = "12"
  end function
end subroutine
