  integer p/0/

  call test1(p)
  call test2(p)
  call test3(p)
  call test4(p)
  call test5(p)
  call test6(p)
  end
!
  subroutine test1(p)
  integer p 
  integer a(100)/100*1/

  do i=1,100
    p = p + a(i)
  enddo
  print*, "### TEST 1 ###"
  print*, "OK"
  return
  end
!
  subroutine test2(p)
  integer p 
  integer a(100)/100*1/

  do i=1,100
    p = p + a(i)
  enddo
  print*, "### TEST 2 ###"
  print*, "OK"
  return
  end
!
  subroutine test3(p)
  integer p
  integer a(100)/100*1/

  do i=1,100
    p = p + a(i)
  enddo
  print*, "### TEST 3 ###"
  print*, "OK"
  return
  end
!
  subroutine test4(p)
  integer p
  integer a(100)/100*1/

  do i=1,100
    if (i .lt. 5) then
      p = a(i)
    endif
  enddo
  print*, "### TEST 4 ###"
  print*, "OK"
  return
  end
!
  subroutine test5(p)
  integer p
  integer a(100)/100*1/

  do i=1,100
    if (i .lt. 5) then
      p = a(i)
    endif
  enddo
  print*, "### TEST 5 ###"
  print*, "OK"
  return
  end
!
  subroutine test6(p)
  integer p
  integer a(100)/100*1/

  do i=1,100
    if (i .lt. 5) then
      p = a(i)
    endif
  enddo
  print*, "### TEST 6 ###"
  print*, "OK"
  return
  end
