  subroutine sub1(d, m)
  real*8 d(10,56,1)
  integer l,n,k,m
  real*8 f(10,3)

  f = 0.0

  do l = 1,1
    do k = 1,56
      do n = 1,m
        f(n,1) = 0.5
      end do
      do n = 2,m
        d(n,k,l)=f(n,1)
      end do
    end do
  end do

  if (d(1,1,1) .eq. 1.d-1) then
    print *, "OK"
  else
    print *, "NG"
    print *, "d(1,1,1) = ", d(1,1,1)
  endif

  return
  end 

  real*8 d(10,56,1)
  d = 1.d-1
  call sub1(d, 10)

  stop
  end
