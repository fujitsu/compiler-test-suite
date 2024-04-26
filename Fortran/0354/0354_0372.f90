  real * 8 a(11),s,b(11)
  call init(a,11)
  s = 0
  do i=1,11
    if (s < a(i)) then
      s = a(i)
    endif
  enddo
  print *,s
  call init(a,11)
  b(1) = 0
  do i=1,11
    if (b(1) < a(i)) then
      b(1) = a(i)
    endif
  enddo
  print *,b(1)
  end
  subroutine init(a,n)
  real * 8 a(n)
  do i=1,n
    a(i) = i
  enddo
  return
  end
