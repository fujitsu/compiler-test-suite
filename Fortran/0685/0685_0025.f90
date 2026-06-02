     call sub()
     print *,'pass'
     end

      subroutine sub()
      integer a(10),b(10),z(10)
      i=100
      z=(/1,2,3,4,5,6,7,8,9,0/)
      a=(/0,0,0,0,0,0,0,0,0,0/)
      b=(/0,0,0,0,0,0,0,0,0,0/)
!$omp parallel shared(z)
!$omp do firstprivate(a),lastprivate(a)
      do i=1,10
        a(i:10) = z(i:10) + 1
      enddo
!$omp enddo
!$omp endparallel
!$    if (i/=100) print *,"fail"

      do i=1,10
        b(i:10) = z(i:10) + 1
      enddo
      end subroutine
