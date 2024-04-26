  real * 4 a4(11),s4
  real * 8 a8(11),s8
  call init(a4,a8,11)
  s4 = 1
  s8 = 1
  call sub1(a4,a8,11,s4,s8)
  print *,s4,s8
  s4 = 1
  s8 = 1
  call sub2(a4,a8,11,s4,s8)
  print *,s4,s8
  stop
  end
  subroutine sub1(a,b,n,s1,s2)
  real * 4 a(n),s1
  real * 8 b(n),s2
  do i=1,n
     s1 = s1 + a(i)
     s2 = s2 + b(i)
  enddo
  return
  end
  subroutine sub2(a,b,n,s1,s2)
  real * 4 a(n),s1
  real * 8 b(n),s2
  do i=1,n
    s1 = s1 + a(i)
    if (s2 < b(i)) then
      s2 =  b(i)
    endif
   enddo
  return
  end
  subroutine init(a4,a8,n)
  real * 4 a4(n)
  real * 8 a8(n)
  do i=1,n
    a4(i) = i
    a8(i) = i
  enddo
  return
  end
