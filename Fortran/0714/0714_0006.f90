program main
  interface
     subroutine gsub
     end subroutine gsub
  end interface
  type ty1
     sequence
     procedure(gsub),pointer,nopass :: pg1 => gsub 
  end type ty1
  type (ty1) :: str1 
  type (ty1) :: str2
  integer :: a

  common /abc/ str1,a

  call str1%pg1
  call str2%pg1
end program main

subroutine gsub
  print *, "gsub"
end subroutine gsub
