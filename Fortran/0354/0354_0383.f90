  real * 4 a4(10),s4
  real * 8 a8(10),s8
  integer * 4 m4(10),ms4
  integer * 8 m8(10),ms8
  call init(a4,a8,m4,m8,10)
  s4 = 3
  s8 = 3
  call sub1(a4,a8,s4,s8,10)
  print *,s4,s8
  ms4 = 6
  ms8 = 6
  call sub2(m4,m8,ms4,ms8,10)
  print *,ms4,ms8
  stop
  end
  subroutine sub1(a1,a2,s1,s2,n)
  real * 4 a1(n),s1
  real * 8 a2(n),s2
  do i=1,n
    if (s1 > a1(i)) then
      s1 = a1(i)
    endif
    if (s2 < a2(i)) then
      s2 = a2(i)
    endif
  enddo
  return
  end
  subroutine sub2(a1,a2,s1,s2,n)
  integer * 4 a1(n),s1
  integer * 8 a2(n),s2
  do i=1,n
    if (s1 > a1(i)) then
      s1 = a1(i)
    endif
    if (s2 < a2(i)) then
      s2 = a2(i)
    endif
  enddo
  return
  end
  subroutine init(a4,a8,m4,m8,n)
  real * 4 a4(n)
  real * 8 a8(n)
  integer * 4 m4(n)
  integer * 8 m8(n )
  do i=1,n
    a4(i) = i
    a8(i) = i
    m4(i) = i
    m8(i) = i
  enddo
  return
  end
