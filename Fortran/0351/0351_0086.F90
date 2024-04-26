program main
  real(kind=8),dimension(1:64) :: a,b,c
  intrinsic datan2
  call init(b,c)
  do i=1,2
     call test(a,b,c)
  enddo
  do i=1,64
    call check(a(i), b(i), c(i), datan2)
  enddo
  print *, "OK"
end program main

subroutine init(b,c)
  real(kind=8),dimension(1:64) :: b,c
  real(kind=8),parameter :: max=5.0_8
  real(kind=8) :: val, xtmp, ytmp
  val = max/(64-1)
  xtmp = 0.000001
  ytmp = -max

  do i=1,64
     select case (mod(i,4_4))
     case(0)
       b(i) = xtmp
       c(i) = ytmp
     case(1)
       b(i) = -xtmp
       c(i) = ytmp
     case(2)
       b(i) = xtmp
       c(i) = -ytmp
     case(3)
       b(i) = -xtmp
       c(i) = -ytmp
     end select
     xtmp = xtmp + val
     ytmp = ytmp + val
  enddo
end subroutine init

subroutine check(res, inx, iny, fs)
  real(kind=8) :: res, inx, iny, fs, fsres
  external :: fs
  fsres = fs(inx, iny)
  if (fsres .eq. 0.0_8) then
     if ((res .ne.  fsres)) then
        print *, "NG"
     endif
  else
     if (((abs(res -  fsres)/abs(res)) .gt. 1.0D-15)) then
        print *, "NG"
     endif
  endif
end subroutine check
  


subroutine test(a,b,c)
  real(kind=8), dimension(1:64) :: a,b,c

  do i=1,64
     a(i) = datan2(b(i), c(i))
  enddo
end subroutine test
