subroutine sub01(a,b,c,d,n)
  real(8),dimension(n) :: a,b,c,d
  do i=1,n
    d(i) = cos(a(i))
    c(i) = d(i) + b(i)
  END DO
end subroutine sub01

subroutine sub02(a,b,c,d,n)
  real(8),dimension(n) :: a,b,c,d
  do i=1,n
    d(i) = cos(a(i))
    c(i) = d(i) + b(i)
  END DO
end subroutine sub02

program main
  integer,parameter :: n=100
  real(8),dimension(n) :: a1,b1,c1,d1
  real(8),dimension(n) :: a2,b2,c2,d2
  real(8) :: diff
  do i=1,n
     a1(i)=i
     b1(i)=i
     c1(i)=0
     d1(i)=0
     a2(i)=i
     b2(i)=i
     c2(i)=0
     d2(i)=0
  enddo
  call sub01(a1,b1,c1,d1,n)
  call sub02(a2,b2,c2,d2,n)
  do i=1,n

     diff = c1(i) - c2(i)
     if (diff.gt.1.0d-13) then 
        print *,"ng(c):",i,c1(i),c2(i)
        stop
     endif

     diff = d1(i) - d2(i)
     if (diff.gt.1.0d-13) then 
        print *,"ng(d):",i,d1(i),d2(i)
        stop
     endif

  enddo
  print *,"ok"
end program main
