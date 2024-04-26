  real * 8 a(11),s
  call init(a,11)
  s = 1
  call sub(a,11,s)
  print *,s
  stop
  end
  subroutine sub(a,n,s)
  real * 8 a(n),s
  do i=1,n
    if (mod(a(i),2) == 0) then
      s = s * a(i)
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
