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

  do i=1,100
    a(i) = p(i)
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

  do i=100,1,-1
    a(i) = p(i)
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
  integer res/100/

  do i=1,100
    a(i) = p(i)
  enddo
  print*, "### TEST 3 ###"
  if (sum(a) .ne. res) then
    print*, "NG"
  else
    print*, "OK"
  endif
  return
  end
!
  subroutine test4()
  integer p(100)/100*1/
  integer a(100)/100*0/
  integer res/100/

  do i=100,1,-1
    a(i) = p(i)
  enddo
  print*, "### TEST 4 ###"
  if (sum(a) .ne. res) then
    print*, "NG"
  else
    print*, "OK"
  endif
  return
  end
