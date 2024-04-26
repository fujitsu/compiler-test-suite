  real * 8 a(11),s,b(11)
  call init(a,11)
  s = 0
  do i=1,11
    s = s + a(i)
  enddo
  print *,s
  b(1) = 0
  do i=1,11
    b(1) = b(1) + a(i)
  enddo
  print *,b(1)
  stop
  end
  subroutine init(a,n)
  real * 8 a(n)
  do i=1,n
    a(i) = i
  enddo
  return
  end
