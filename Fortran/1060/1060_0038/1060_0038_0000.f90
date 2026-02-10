interface 
  function rf1() 
    real*8,allocatable:: rf1
  end function
  function rf2() 
    real*8,allocatable:: rf2
  end function
end interface
  real*8,allocatable:: t
  allocate(t)
  t = rf1()
  if (t .ne. 0) stop '1'
  t = rf2()
  if (t .ne. 1) stop '2'
  print *,'PASS'
end program
