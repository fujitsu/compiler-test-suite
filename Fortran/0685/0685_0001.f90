      common /com1/ i1(3)
      equivalence (i1(3),j1)
      i1=(/1,10,100/)
      call sub ()
      print *,'pass'
      contains

      subroutine sub()

      common /com1/ i1(3)
      common /com2/ i2(3)
      equivalence (i1(3),j1)
      equivalence (i2(3),j2)
      i2=(/10,100,1000/)

!$omp parallel firstprivate(/com1/,/com2/)
      do k=1,10
        j1=j1+1
        j2=j2+1
      enddo
      if (j1/=110) print *,'j1=',j1
      if (j2/=1010) print *,'j2=',j2
!$omp end parallel

      end subroutine

      end
