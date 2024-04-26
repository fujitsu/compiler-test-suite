  real * 8 a(11),s
  call init(a,11)
  s = 0
  do i=1,8
    if (s < a(i)) then
      s = a(i)
    endif
  enddo
  print *,s
  s = 0
  do i=9,11
    if (s < a(i)) then
      s = a(i)
    endif
  enddo
  print *,s
  end
  subroutine init(a,n)
  real * 8 a(n)
  do i=1,n
    a(i) = i
  enddo
  return
  end
