
program main
  interface
     subroutine gsub
     end subroutine gsub
  end interface
  type ty1
     procedure(gsub),pointer,nopass :: pg1 => gsub
  end type ty1
  type (ty1),target :: str
  class(ty1),pointer :: cs0

  cs0=>str
  call cs0%pg1
end program main

subroutine gsub
  print *, "gsub"
end subroutine gsub

