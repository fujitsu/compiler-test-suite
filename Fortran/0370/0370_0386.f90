subroutine sub
  interface
     subroutine gsub
     end subroutine gsub
  end interface
  type ty1
     procedure(gsub),pointer,nopass :: pg1 => gsub
  end type ty1
  type (ty1) :: str
  
  call str%pg1
end subroutine sub

subroutine gsub
  print *, "gsub"
end subroutine gsub

program main
  call sub
end program main
