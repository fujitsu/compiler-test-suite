interface 
  function if1() 
    integer,dimension(10):: if1
  end function
  function if2() 
    integer,dimension(10):: if2
  end function
end interface
  integer,dimension(10):: t
  t = if1()
  if (any(t /= 0)) stop '1'
  t = if2()
  if (any(t /= 1)) stop '2'
  print *,'PASS'
end program
