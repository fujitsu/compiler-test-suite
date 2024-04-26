  real * 8 a(11),s
  call init(a,11)
  s = 0
  do i=1,8
    s = s + a(i)
  enddo
  print *,s
  s = 0
  do i=9,11
    s = s + a(i)
  enddo
  print *,s
  stop
  end
  subroutine init(a,n)
  real * 8 a(n)
  do i=1,n
    a(i) = i
  enddo
  return
  end
