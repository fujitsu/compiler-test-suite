interface 
  function if1(rarg) 
    integer,dimension(10):: if1
  end function
  function if2(iarg) 
    integer,dimension(10):: if2
  end function
end interface
  integer,dimension(10):: t
  t = if1(1.0)
  if (any(t /= 1.0)) stop '1'
  t = if2(2)
  if (any(t /= 2)) stop '2'
  print *,'PASS'
end program
