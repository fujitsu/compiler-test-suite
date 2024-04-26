  call test1()
  call test2()
  call test3()
  call test4()
  end
!
  subroutine test1()
  integer p(100)/100*1/
  integer a(100)/100*0/
  integer res/100/
  integer n/1/

  do i=1,100
    a(i) = p(n)
    n = n + 1
  enddo
  print*, "### TEST 1 ###"
  if (sum(a) .ne. res) then
    print*, "NG"
  else
    print*, "OK"
  endif
  return
  end
!
  subroutine test2()
  integer p(100)/100*1/
  integer a(100)/100*0/
  integer res/100/
  integer n/1/ 

  do i=1,100
    a(i) = p(n)
    n = n + 1
  enddo
  print*, "### TEST 2 ###"
  if (sum(a) .ne. res) then
    print*, "NG"
  else
    print*, "OK"
  endif
  return
  end
!
  subroutine test3()
  integer p(100)/100*1/
  integer a(100)/100*0/
  integer res/100/,res2/101/
  integer n/1/

  do i=1,100
    a(i) = p(n)
    n = n + 1
  enddo
  print*, "### TEST 3 ###"
  if (sum(a) .ne. res) then
    print*, "NG"
  else
    if (n .ne. res2) then
      print*, "NG"
    else
      print*, "OK"
    endif
  endif
  return
  end
!
  subroutine test4()
  integer p(100)/100*1/
  integer a(100)/100*0/
  integer res/100/,res2/101/
  integer n/1/ 

  do i=1,100
    a(i) = p(n)
    n = n + 1
  enddo
  print*, "### TEST 4 ###"
  if (sum(a) .ne. res) then
    print*, "NG"
  else
    if (n .ne. res2) then
      print*, "NG"
    else
      print*, "OK"
    endif
  endif
  return
  end
