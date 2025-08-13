      real(4),dimension(4),parameter::z=(/1.0,2.0,3.0,4.0/)
      COMMON /XY/ X,Y
!$OMP THREADPRIVATE (/XY/)
      open(11,file='omp2.fort.12')
      write(11,'(4f10.3)') z
      rewind(11)

!$omp parallel private(a,b)
      call init(a,b)
      a=a+1.0
      b=b+1.0
      x=x+1.0
      y=y+1.0
      call check(a,b)
!$omp endparallel
      close(11,status='DELETE')
      print *,'pass'
      end

      SUBROUTINE INIT(A,B)
      COMMON /XY/ X,Y
!$OMP THREADPRIVATE (/XY/)
!$OMP SINGLE
      READ (11,'(4f10.3)') A,B,X,Y
!$OMP END SINGLE COPYPRIVATE (A,B,/XY/)
      END

      subroutine check(a,b)
      COMMON /XY/ X,Y
!$OMP THREADPRIVATE (/XY/)

      if (a/=2.0.or.b/=3.0.or.x/=4.0.or.y/=5.0) print *,"fail"

      end
