
program main
  interface
     subroutine gsub
     end subroutine gsub
  end interface
  procedure(gsub),pointer :: pg1 => gsub

  call pg1
  call gsub
end program main

subroutine gsub
  print *, "gsub"
end subroutine gsub
