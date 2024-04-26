  complex*8 x/(0.0,0.0)/

  call test1()
  call test2()
  call test3()
  call test4()
  call test5(x)
  call test6()
  end

  subroutine test1()
  integer a(100)/100*1/
  integer b(100)/100*2/
  integer x1/0/
  integer res/100/

  do i=1,100
    x1 = a(i)
    b(i) = x1
  enddo

  print*, "### TEST 1 ###"
  if (sum(b) .eq. res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end
!
  subroutine test2()
  integer a(10,10)/100*1/
  integer b(10,10)/100*2/
  integer x/0/
  integer res/100/

  do j=1,10
    do i=1,10
      x = a(i,j)
      b(i,j) = x
    enddo
  enddo

  print*, "### TEST 2 ###"
  if (sum(b) .eq. res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end
!
  subroutine test3()
  integer a(10,10)/100*1/
  integer b(10,10)/100*2/
  integer x(10)/10*0/
  integer y(10)/10*0/
  integer res1/100/,res2/10/

  do j=1,10
    do i=1,10
      x(i) = a(i,j)
      b(i,j) = x(i)
      y(i) = b(i,j)
    enddo
  enddo

  print*, "### TEST 3 ###"
  if (sum(b) .eq. res1) then
    if (sum(y) .eq. res2) then
      print*, "OK"
    else
      print*, "NG"
    endif
  else
    print*, "NG"
  endif
  return
  end
  subroutine test4()
  integer a(100)/100*1/
  integer b(100)/100*2/
  integer x/0/,y
  integer res/100/,res1/1/
  equivalence(x,y)

  do i=1,100
    x = a(i)
    b(i) = x
  enddo

  print*, "### TEST 4 ###"

  if (sum(b) .eq. res) then
    if (y .eq. res1) then
      print*, "OK"
    else
      print*, "NG"
    endif
  else
    print*, "NG"
  endif
  return
  end
!
  subroutine test5(x)
  complex*8 x
  complex*8 a(100)/100*(1.0,1.0)/
  complex*8 b(100)/100*(2.0,2.0)/
  complex*8 res/(100.0,100.0)/

  do i=1,100
    x = a(i)
    b(i) = x
  enddo
  print*, "### TEST 5 ###"

  if (sum(b) .eq. res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end
!
  subroutine test6()
  type zzz
    integer x
  end type zzz

  integer a(100)/100*1/
  integer b(100)/100*2/
  integer res/100/

  type (zzz) :: str

  do i=1,100
    str%x = a(i)
    b(i) = str%x
  enddo

  print*, "### TEST 6 ###"

  if (sum(b) .eq. res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end
