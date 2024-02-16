  implicit none
interface
  function fun01()
    character(3) :: fun01
  end function
end interface
  character(3),pointer :: chr_pointer01
  allocate(chr_pointer01,source=fun01()) !
  print *,'pass'
end

function fun01()
  implicit none
  character(3) :: fun01
  fun01 = "12"
end function
