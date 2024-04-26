  call test1()
  call test2()
  call test3()
  call test4()
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
  subroutine test2()
  integer p(100)/100*0/
  integer a(100)/100*0/
  integer res/2550/

  do i=1,100
    p(i) = i
    if (mod(i,2) .eq. 0) then
      a(i) = p(i)
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
  integer p/10/
  integer a(100)/100*0/
  integer res/0/

  do i=1,100
    if (mod(i,2) .eq. 0) then
      p = a(i)
    endif
  enddo

  print*, "### TEST 4 ###"
  if (p .ne. res) then
    print*, "NG"
  else
    print*, "OK"
  endif
  return
  end

