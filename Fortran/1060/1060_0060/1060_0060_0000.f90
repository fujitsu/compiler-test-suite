interface 
  function rf1(rarg) 
    real*8,pointer,dimension(:):: rf1
  end function
  function rf2(iarg) 
    real*8,pointer,dimension(:):: rf2
  end function
end interface
  real*8,pointer,dimension(:):: t
  allocate(t(1000))
  t = rf1(-1.0)
  if (any(t .ne. -1.0)) stop '1'
  t = rf2(-2)
  if (any(t .ne. -2)) stop '2'
  print *,'PASS'
end program
