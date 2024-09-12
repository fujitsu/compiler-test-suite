
program main
  interface
     subroutine gsub
     end subroutine gsub
  end interface
  type ty1
     procedure(gsub),pointer,nopass :: pg1 => gsub
  end type ty1
  type (ty1) :: str
  
  print *,"OK"
end program main

subroutine gsub
  print *, "gsub"
end subroutine gsub

