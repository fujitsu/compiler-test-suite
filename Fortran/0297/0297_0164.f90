  module mod
    real a(100)/100*1.0/
    real b(100)/100*2.0/
    real x/0.0/
  end module

  integer a(10,10)/100*1/
  integer x(100)/100*0/
  integer k1/10/,k2/10/

  call test1()
  call test2(x,a,10)
  call test3()
  call test4(k1,k2)
  call test5()
  call test6()
  end
  subroutine test1()
  integer a(100)/100*1/
  integer b(100)/100*2/
  integer,pointer :: x
  integer,target :: y
  integer res1/100/
  data  y/0/

  x => y

  do i=1,100
    x = a(i)
    b(i) = x
  enddo

  print*, "### TEST 1 ###"
  if (sum(b) .eq. res1) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end
!
  subroutine test2(x,a,n)
  integer a(10,10)
  integer n
  integer x(n)
  integer res/65/ 

  do i=1,10
    do j=1,n
      x(j) = a(j,i) + j
    enddo
  enddo

  print*, "### TEST 2 ###"
  if (sum(x) .eq. res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end
!
  subroutine test3()
  integer a(10,10)/100*1/
  integer,allocatable,dimension(:) :: n
  integer res/10/

  allocate(n(1:10))
  n = 0

  do i=1,10
    do j= 1,10
      n(j) = a(j,i)
    enddo
  enddo

  print*, "### TEST 3 ###"
  if (sum(n) .eq. res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end
!
  subroutine test4(k1,k2)
  integer a(10,10)/100*1/
  integer m(10,10)/100*0/
  integer n/0/
  integer k1,k2
  integer res1/1/,res2/100/

  do i=1,k1
    do j= 1,k2
      n = a(j,i)
      m(j,i) = a(j,i)
    enddo
  enddo

  print*, "### TEST 4 ###"
  if (n .eq. res1) then
    if (sum(m) .eq. res2) then
      print*, "OK"
    else
      print*, "NG"
    endif
  else
    print*, "NG"
  endif
  return
  end
  subroutine test5()
  character a(100)/100*'1'/
  character b(100)/100*'2'/
  character x/'0'/
  character res/'1'/

  do i=1,100
    x = a(i)
    b(i) = x
  enddo

  print*, "### TEST 5 ###"
  if (x .eq. res) then
    if (b(50) .eq. res) then
      print*, "OK"
    else
      print*, "NG"
    endif
  else
    print*, "NG"
  endif
  return
  end
  subroutine test6()
  use mod
  real res/1.0/ 
  do i=1,100
    x = a(i)
    b(i) = x
  enddo

  print*, "### TEST 6 ###"
  if (b(33) .eq. res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end

