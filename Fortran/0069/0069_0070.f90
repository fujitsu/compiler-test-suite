module mod01
  implicit none
contains
  function m_fun01()
    character(3) :: m_fun01
    m_fun01 = "12"
  end function
end module

  use mod01
  implicit none
  character(3),pointer :: chr_pointer01
  allocate(chr_pointer01,source=m_fun01())
  print *,'pass'
end
