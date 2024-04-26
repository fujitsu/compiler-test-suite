  integer * 2 a(11),s
  call init(a,11)
  s = 1
  call sub(a,11,s)
  print *,s
  stop
  end
  subroutine sub(a,n,s)
  integer * 2 a(n),s
  do i=1,n
    s = s * a(i)
  enddo
  return
  end
  subroutine init(a,n)
  integer * 2 a(n)
  do i=1,n
    a(i) = 2
  enddo
  return
  end
