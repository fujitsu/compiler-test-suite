      integer,parameter :: n1=4
      integer,parameter :: n2=3

      integer*1 i1_1(n1) /1,3,5,2/
      integer*1 i1_2(n1,n2) /1,-5,2,-6,2,-9,3,-8,3,-7,4,-2/
      real*8    r8_1(n1)
      real*8    r0811(n2)
      r8_1 = i1_1

!$OMP PARALLEL
!$OMP WORKSHARE
      r0811 = matmul(r8_1,i1_2)
!$OMP END WORKSHARE
!$OMP END PARALLEL

      print *, r0811
      END
