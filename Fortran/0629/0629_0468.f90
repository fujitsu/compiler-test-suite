      program main

      i= 10
      call sub0(i)

      print *,'ok'
      end

      subroutine sub0(n)
        integer::a(n)
        a=1
!$omp parallel shared(a,n)
        call sub1(a,n)
!$omp endparallel
       write(*,*)"a=",a
      end

      subroutine sub1(a,n)
        integer::a(n)

!$omp do private(i)
        do i=1,n
          a(i)=a(i)+i
        enddo
!$omp enddo
      end subroutine
