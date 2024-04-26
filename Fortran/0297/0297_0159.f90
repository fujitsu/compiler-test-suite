  integer p/0/

  call test1()
  call test2(p)
  call test3()
  call test4()
  call test5()
  call test6()
  end
!
  subroutine test1()
  integer p(100)/100*0/
  integer a(100)/100*0/
  integer res/2550/

  do i=1,100
    p(i) = i
    if (mod(i,2) .eq. 0) then
      a(i) = p(i)
    endif
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
  subroutine test2(p)
  integer p
  integer a(100)/100*0/
  integer res/2550/

  do i=1,100
    p = i
    if (mod(i,2) .eq. 0) then
      a(i) = p
    endif
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
  integer p/10/
  integer a(100)/100*0/
  integer res/500/

  do i=1,100
    if (mod(i,2) .eq. 0) then
      a(i) = p
    endif
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
  integer p(100)/100*10/
  integer a(100)/100*0/
  integer res/500/

  do i=1,100
    if (mod(i,2) .eq. 0) then
      a(i) = p(i)
    endif
  enddo
  print*, "### TEST 4 ###"
  if (sum(a) .ne. res) then
    print*, "NG"
  else
    print*, "OK"
  endif
  return
  end
!
  subroutine test5()
  integer p/10/
  integer a(100)/100*0/
  integer res/0/

  do i=1,100
    if (mod(i,2) .eq. 0) then
      p = a(i)
    endif
  enddo
  print*, "### TEST 5 ###"
  if (p .ne. res) then
    print*, "NG"
  else
    print*, "OK"
  endif
  return
  end
!
  subroutine test6()
  integer p(100)/100*10/
  integer a(10,10)/100*0/
  integer res/155/

  do i=1,10
    do j=1,10
      a(j,i) = i + j
      p(j) = a(j,i)
    enddo
  enddo
  print*, "### TEST 6 ###"


  if (sum(p(1:10)) .ne. res) then
    print*, "NG"
  else
    print*, "OK"
  endif
  return
  end

