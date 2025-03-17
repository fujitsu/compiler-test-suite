program main
  integer :: i
  integer, dimension(1:1000000) :: vec
    forall(i=1:10)
      vec(1:1000000) = mem_leak()
    end forall
  write(1,*) vec(1)
  print *,'pass'
 contains
   pure function mem_leak() result(vec)
     implicit none
     integer, dimension(1:1000000) :: vec
       vec = 1
   end function mem_leak
end program main
