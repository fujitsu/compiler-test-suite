subroutine sub(n)
  real*8 c0,c1,c2,c3,c4,c5,c6,c7,c8,c9
  real*8 y(245760),dummy(1024),x1(245760),res
  common /com/y,dummy,x1

  c0 = 1.999
  c1 = 0.4449
  c2 = 0.4449
  c3 = 0.6667
  c4 = 2.001
  c5 = 0.5001
  c6 = 2.001
  c7 = 0.5001
  c8 = 1.999
  c9 = 0.5001

  do j = 1, 100
     do i = 1, n
        y(i) = y(i) + c0 + x1(i)*(c1 + x1(i)*(c2 + x1(i)*(c3 + x1(i)* & 
             (c4 + x1(i)*(c5 + x1(i)*(c6 + x1(i)*(c7 + x1(i)*  &
             (c8 + x1(i)*c9))))))))
     end do
  enddo
  res = 0
  do i=1,n
    res = res + y(i)
  enddo
  write(6,99) res
99 format(f15.5)
end subroutine sub

subroutine init(n)
  real*8 y(245760),dummy(1024),x1(245760)
  common /com/y,dummy,x1

  do i=1,n
     y(i)=1.0
     x1(i)=2.0
  enddo
end subroutine init

program main
  parameter(n=50)
  real*8 y(245760),dummy(1024),x1(245760)
  common /com/y,dummy,x1

  call init(245760)
  call sub(n)

end program main

