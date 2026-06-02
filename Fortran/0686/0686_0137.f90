      interface
        subroutine sub(a,j,i)
        integer(4),dimension(10)::a
        integer(4)::j,i
        optional::j
        end subroutine
      end interface
      integer(4),dimension(10)::a

      a=(/2,5,7,3,4,10,9,8,1,6/)
      i=0
      j=9
      call sub(a,j,i)
      call sub(a,i=0)
      print *,'pass'
      end

      subroutine sub(a,j,ii)
      integer(4),dimension(10)::a
      optional::j

      i=ii
!$omp parallel default(shared)
      if (present(j)) then
!$omp do
        do k=1,10
!$omp atomic
          i=max(a(k),ifun(j+2),maxval(a)+1,minval(a)-10,i)
        enddo
!$omp end do
        if (i/=12 ) print *,"fail"
      else
!$omp do
        do k=1,10
!$omp atomic
          i=max(a(k),maxval(a)+1,minval(a)-10,i)
        enddo
!$omp end do
        if (i/=11 ) print *,"fail"
      endif
!$omp end parallel
      end

      function ifun(m)
      ifun=m+1
      end
