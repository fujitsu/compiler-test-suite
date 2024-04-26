  call test1()
  call test2()
  call test3()
  call test4()
  end
!
  subroutine test1()
  integer a(100)/100*1/
  integer res/100/
  integer vsum/0/

  do i=1,100
    vsum = vsum + a(i)
  enddo
  print*, "### TEST 1 ###"
  if (vsum .ne. res) then
    print*, "NG"
  else
    print*, "OK"
  endif
  return
  end
!
  subroutine test2()
  integer a(100)/100*1/
  integer res/100/
  integer vsum/0/

  do i=1,100
    vsum = vsum + a(i)
  enddo
  print*, "### TEST 2 ###"
  if (vsum .ne. res) then
    print*, "NG"
  else
    print*, "OK"
  endif
  return
  end
!
  subroutine test3()
  integer a(100)/100*1/
  integer b(100)/10*1,20*2,30*3,40*4/
  integer res/500/
  do i=1,100
    do j=i,100
      a(i) = b(j) + 1
    enddo
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
  integer a(100)/100*1/
  integer b(100)/10*1,20*2,30*3,40*4/
  integer res/500/
  do i=1,100
    do j=i,100
      a(i) = b(j) + 1
    enddo
  enddo
  print*, "### TEST 4 ###"
  if (sum(a) .ne. res) then
    print*, "NG"
  else
    print*, "OK"
  endif
  return
  end

