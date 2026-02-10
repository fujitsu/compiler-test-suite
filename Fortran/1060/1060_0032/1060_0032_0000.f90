interface 
  function rf1() 
    real*8,dimension(256):: rf1
  end function
  function rf2() 
    real*8,dimension(256):: rf2
  end function
end interface
  real*8,dimension(256):: t
  t = rf1()
  if (any(t .ne. 0)) stop '1'
  t = rf2()
  if (any(t .ne. 1)) stop '2'
  print *,'PASS'
end program
