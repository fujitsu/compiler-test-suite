subroutine sub
  interface
     subroutine gsub
     end subroutine gsub
  end interface
  procedure(gsub),pointer :: pg1 => gsub

  call pg1
end subroutine sub

subroutine gsub
  print *, "gsub"
end subroutine gsub

program main
  call sub
end program main
