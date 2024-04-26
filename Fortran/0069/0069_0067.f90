  implicit none
  character(3),pointer :: chr_pointer01
  allocate(chr_pointer01,source=fun01())
  print *,'pass'
contains
  function fun01()
    character(3) :: fun01
    fun01 = "12"
  end function
end
