      common /com1/ i1(3)
      equivalence (i1(3),j1)
      i1=(/1,10,100/)
      call sub ()
      print *,'pass'
      contains

      subroutine sub()

      common /com1/ i2(3)
      equivalence (i2(3),j2)
      i2=(/10,100,1000/)

!$omp parallel firstprivate(/com1/)
      if (j2/=1000) print *,'j2= ',j2
      do k=1,10
        j2=j2+1
      enddo
      if (j2/=1010) print *,'j2=',j2
!$omp end parallel

      end subroutine

      end
