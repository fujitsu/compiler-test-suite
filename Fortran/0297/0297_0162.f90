  real a(100)/100*1.0/
  real b(100)/100*0.0/
  integer c(100)/100*0/
  integer p/0/
  integer q/1/

  call test1()
  call test2(a,b)
  call test3(p,c)
  call test4()
  call test5(q,c)
  end
  subroutine test1()
  real p/0.0/
  real a(100)/100*0.0/
  real b(100)/100*1.0/
  real res/0.0/

  do i=1,100
    p = a(i)
    b(i) = sin(p)
  enddo
  print*, "### TEST 1 ###"
  if (b(50).eq.res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end
  subroutine test2(a,b)
  real p(100)/100*0.0/
  real a(100)
  real b(100)

  do i=1,100
    p(i) = a(i)
    b(i) = func1(p)
  enddo

  print*, "### TEST 2 ###"
  print*, "OK"
  return
  end

  function func1(p)
  real p(100)

  func1 = p(10) * 1.1
  return
  end
  subroutine test3(p,c)
  integer p
  integer c(100)

  do i=1,100
    p = i
    if (mod(i,2) .eq. 0) then
      c(i) = p
    endif
  enddo

  print*, "### TEST 3 ###"
  print*, "OK"
  return
  end
  subroutine test4()
  integer p/0/
  integer a(100)/100*0/
  integer res1/0/,res2/100/

  do i=1,100
    p = i
    if (mod(i,2) .eq. 0) then
      a(i) = p
    endif
  enddo

  print*, "### TEST 4 ###"
  if (a(99).eq.res1) then
    if (a(100).eq.res2) then
      print*, "OK"
    else
      print*, "NG"
    endif
  else
    print*, "NG"
  endif
  return
  end
  subroutine test5(q,c)
  integer q
  integer c(100)
  integer res/1/

  do i=1,100
    if (mod(i,2) .eq. 0) then
      c(i) = q
    endif
  enddo

  print*, "### TEST 5 ###"
  if (q.eq.res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end


