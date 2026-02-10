interface 
  function rf1(rarg) 
    real*8,allocatable:: rf1
  end function
  function rf2(iarg) 
    real*8,allocatable:: rf2
  end function
end interface
  real*8,allocatable:: t
  allocate(t)
  t = rf1(1.0)
  if (t .ne. 1.0) stop '1'
  t = rf2(2)
  if (t .ne. 2) stop '2'
  print *,'PASS'
end program
