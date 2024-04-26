  integer * 1 a(5),s
  call init(a,5)
  s = 1
  call sub(a,5,s)
  print *,s
  stop
  end
  subroutine sub(a,n,s)
  integer * 1 a(n),s
  do i=1,n
    s = s * a(i)
  enddo
  return
  end
  subroutine init(a,n)
  integer * 1 a(n)
  do i=1,n
    a(i) = 2
  enddo
  return
  end
