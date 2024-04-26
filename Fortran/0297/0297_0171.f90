  call test1()
  call test2()
  call test3()
  call test4()
  call test5()
  end
!
  subroutine test1()
  integer a(20,20)/400*1/
  integer res/185055/

  do j=2,10
    do i=2,10
      a(i,j) = a(i-1,j) + a(i,j-1)
    enddo
  enddo
  print*, "### TEST 1 ###"
  if (sum(a) .eq. res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end
!
  subroutine test2()
  integer a(20,20)/400*1/
  integer res/185055/

  do j=2,10
    do i=2,10
      a(i,j) = a(i-1,j) + a(i,j-1)
    enddo
  enddo
  print*, "### TEST 2 ###"
  if (sum(a) .eq. res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end
!
  subroutine test3()
  integer a(100)/100*1/
  integer b(100)/10*1,20*2,30*3,40*4/
  integer c(100)/100*0/
  integer res/300/

  where (a .le. b) 
    c = b
  endwhere

  print*, "### TEST 3 ###"
  if (sum(c) .eq. res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end
!
  subroutine test4()
  integer a(100)/100*1/
  integer b(100)/10*1,20*2,30*3,40*4/
  integer c(100)/100*0/
  integer res/300/

  where (a .le. b) 
    c = b
  endwhere

  print*, "### TEST 4 ###"
  if (sum(c) .eq. res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end
!
  subroutine test5()
  integer a(100)/100*1/
  integer b(100)/10*1,20*2,30*3,40*4/
  integer n/1/
  integer res/300/

 100 if (n .gt. 100) goto 200 
     a(n) = b(n)
     n = n + 1
     goto 100

 200 print*, "### TEST 5 ###"

  if (sum(a) .eq. res) then
    print*, "OK"
  else
    print*, "NG"
  endif

  return
  end


