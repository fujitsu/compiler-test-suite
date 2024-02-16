module mod01
  implicit none
contains
  subroutine m_sub01()
    character(3),pointer :: chr_pointer01
    allocate(chr_pointer01,source=mi_fun01()) !
  contains
    function mi_fun01()
      character(3) :: mi_fun01
      mi_fun01 = "12"
    end function
  end subroutine
end module

  implicit none
  print *,'pass'
end
