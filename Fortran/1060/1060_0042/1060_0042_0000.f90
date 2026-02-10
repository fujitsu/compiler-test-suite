interface 
  function rf1() 
    real*8,pointer,dimension(:):: rf1
  end function
  function rf2() 
    real*8,pointer,dimension(:):: rf2
  end function
end interface
  real*8,pointer,dimension(:):: t
  allocate(t(1000))
  t = rf1()
  if (any(t .ne. 0)) stop '1'
  t = rf2()
  if (any(t .ne. 1)) stop '2'
  print *,'PASS'
end program
