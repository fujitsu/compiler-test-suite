  real * 8 a(11),s
  call init(a,11)
  s = 3
  call sub(a,11,s)
  print *,s
  stop
  end
  subroutine sub(a,n,s)
  real * 8 a(n),s
  do i=1,n
    if (i.lt.5) then
      if (s > a(i)) then
       s = a(i)
      endif
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
