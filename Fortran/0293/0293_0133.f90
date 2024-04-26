      subroutine sub2(b,n2,n7)
      integer(4),dimension(n2,n2,n2,n2,n2,n2,n7)::b
!$omp do schedule(static,1)
        do i7=1,n7
        do i6=1,n2
        do i5=1,n2
!$omp parallel
!$omp do schedule(static),firstprivate(i7,i6,i5)
        do i4=1,n2
        do i3=1,n2
        do i2=1,n2
        do i1=1,n2
          b(i1,i2,i3,i4,i5,i6,i7)= &
          i7+i6*10+i5*100+i4*1000+i3*10000+i2*100000+i1*1000000
        enddo
        enddo
        enddo
        enddo
!$omp enddo
!$omp endparallel
        enddo
        enddo
        enddo
!$omp enddo
      endsubroutine

      print *,'pass'
      end
