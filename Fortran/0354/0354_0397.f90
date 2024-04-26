  real * 4 a(11),s
  call init(a,11)
  s = 1
  call sub(a,0,s)
  print *,s
  s = 1
  call sub(a,1,s)
  print *,s
  s = 1
  call sub(a,8,s)
  print *,s
  s = 1
  call sub(a,7,s)
  print *,s
  stop
  end
  subroutine sub(a,n,s)
  real * 4 a(n),s
  do i=1,n
    s = s * a(i)
  enddo
  return
  end
  subroutine init(a,n)
  real * 4 a(n)
  do i=1,n
    a(i) = i
  enddo
  return
  end
