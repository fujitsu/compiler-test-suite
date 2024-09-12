subroutine sub
  interface
     subroutine gsub
     end subroutine gsub
  end interface
  procedure(gsub),pointer :: pg1 => null()

  call pg1
end subroutine sub

subroutine gsub
  print *, "gsub"
end subroutine gsub

program main
if (1.eq.2)  call sub
print *,'pass'
end program main
