
program main
  interface
     subroutine gsub
     end subroutine gsub
     subroutine gsub2
     end subroutine gsub2
  end interface
  procedure(gsub ),pointer :: pg1 => gsub
  procedure(gsub2),pointer :: pg2 => gsub2
  procedure(     ),pointer :: pg3 => gsub
  procedure(     ),pointer :: pg4 => gsub2

  call pg1
  call pg2
  call pg3
  call pg4
end program main

subroutine gsub
  print *, "gsub"
end subroutine gsub

subroutine gsub2
  print *, "gsub2"
end subroutine gsub2

