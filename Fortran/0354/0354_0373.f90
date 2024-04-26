  real * 8 a(11),s
  call init(a,11)
  s = -1
  call sub(a,0,s)
  print *,s
  s = -1
  call sub(a,1,s)
  print *,s
  s = -1
  call sub(a,8,s)
  print *,s
  s = -1
  call sub(a,7,s)
  print *,s
  end
  subroutine sub(a,n,s)
  real * 8 a(n),s
  do i=1,n
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
