  integer * 8 a(11),s
  call init(a,11)
  s = 0
  call sub(a,11,s)
  print *,s
  end
  subroutine sub(a,n,s)
  integer * 8 a(n),s
  do i=1,n
    if (s < a(i)) then
      s = a(i)
    endif
  enddo
  return
  end
  subroutine init(a,n)
  integer * 8 a(n)
  do i=1,n
    a(i) = i
  enddo
  return
  end
