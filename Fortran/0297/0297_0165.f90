  module mod
    real a(100)/100*1.0/
    real b(100)/100*2.0/
    real x/0.0/
    public b
    contains
    subroutine sub1()
      do i=1,100
        x = a(i)
        b(i) = x
      enddo
    end subroutine
  end module

  block data
    common /xyz/c,d
    real c/0.0/
    real d(10)/10*1.0/
  end

  call test1()
  call test2()
  call test3()
  call test4()
  call test5()
  end
!
  subroutine test1()
  use mod
  real res/1.0/

  call sub1()

  print*, "### TEST 1 ###"
  if (b(50) .eq. res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end
!
  subroutine test2()
  integer a(100,100)/10000*1/
  integer b(100)/100*2/
  integer c(100)/100*2/
  integer res1/52/,res2/102/

  do i=1,100
    do j=1,100
      b(j) = a(j,i) + c(j)
      a(j,i) = b(j)
      c(J) =a(j,i)
    enddo
  enddo

  print*, "### TEST 2 ###"
  if (a(50,50) .eq. res1) then
    if ((b(50) .eq. c(50)) .and. (b(50) .eq. res2)) then
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
  subroutine test3()
  integer a(10,10)/100*1/
  integer b(10,10)/100*2/
  integer x/0/
  integer res/1/

  do j=1,10
    do i=1,10
      x = a(i,j)
      b(i,j) = x
    enddo
  enddo

  print*, "### TEST 3 ###"
  if (b(5,5) .eq. res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end
!
  subroutine test4()
  common /xyz/c,d
  real a(10)/10*0.0/
  real c,d(10)
  real res/10.0/ 

  do i=1,10
    c = d(i)
    a(i) = c
  enddo

  print*, "### TEST 4 ###"
  if (sum(a) .eq. res) then
    print*, "OK"
  else
    print*, "NG"
  endif
  return
  end
!
  subroutine test5()
  real x/0.0/
  real a(10)/10*1.0/
  real b(10)/10*0.0/
  real res/10.0/ 
  volatile :: x

  do i=1,10
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
