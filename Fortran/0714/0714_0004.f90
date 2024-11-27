program main
  interface
     subroutine gsub
     end subroutine gsub
  end interface
  procedure(gsub),pointer :: pg1 => gsub
  procedure(gsub),pointer :: pg2

  data pg2 /gsub/

  call pg1
  call pg2

end program main

subroutine gsub
  print *, "gsub"
end subroutine gsub
