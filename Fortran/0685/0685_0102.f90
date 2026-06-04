     program main
     call sub ()
     print *,'pass'
     end

     subroutine sub()
      common /xxx/  x1(3) 
      integer x1
      common /yyy/  y1(2)
      real*4  y1
      common /zzz/  z1(2) 
      real*8  z1
!$omp threadprivate(/xxx/,/zzz/)
!$omp parallel private(/yyy/)
      x1=(/11,12,13/)
      y1=(/3.0,4.0/)
      z1=(/3.0d0,4.0d0/)
!$omp end parallel
      if (any(x1/=(/11,12,13/))) print *,"fail"
      if (any(y1/=(/1.0,2.0/))) print *,"fail"
      if (any(z1/=(/3.0d0,4.0d0/))) print *,"fail"
!$omp parallel
      if (any(x1/=(/11,12,13/))) print *,"fail"
      if (any(z1/=(/3.0d0,4.0d0/))) print *,"fail"
!$omp end parallel
     end subroutine

     block data
      common /xxx/  x1(3) 
      integer x1
      common /yyy/  y1(2)
      real*4  y1
      common /zzz/  z1(2) 
      real*8  z1
      data x1 /1,2,3/
      data y1 /1.0,2.0/
      data z1 /1.0d0,2.0d0/
!$omp threadprivate(/xxx/,/zzz/)
     end block data
