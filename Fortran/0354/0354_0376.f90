  real * 8 a(22),s
  call init(a,22)
  s = 0
  call sub(a,22,s)
  print *,s
  end
  subroutine sub(a,n,s)
  real * 8 a(n),s
  do i=1,n,2
    if (s < a(i)) then
      s = a(i)
    endif
  enddo
  return
  end
  subroutine init(a,n)
  real * 8 a(n)
  do i=1,n
    a(i) = i
  enddo
  return
  end
