  real * 8 a(11),s,b(11)
  call init(a,11)
  s = 3
  do i=1,11
    if (s > a(i)) then
      s = a(i)
    endif
  enddo
  print *,s
  b(2) = 3
  do i=1,11
    if (b(2) > a(i)) then
     b(2) = a(i)
    endif
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
