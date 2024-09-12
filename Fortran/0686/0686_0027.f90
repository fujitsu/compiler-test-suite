      integer::a(5),b(5)
       interface
         subroutine sub(a,b)
           integer::a(:),b(:)
         end subroutine
       end interface
      a=(/1,2,3,4,5/)
      call sub(a,b)
      a=(/101,102,103,104,105/)
      print *,'pass'
      end

      subroutine sub(a,b)
      integer::a(:),b(:)
!$omp parallel firstprivate(a)
!$omp do lastprivate(b)
      do i=1,100
        b(1)=a(1)+i
        b(2)=a(2)+i
        b(3)=a(3)+i
        b(4)=a(4)+i
        b(5)=a(5)+i
      enddo
!$omp end do
!$omp end parallel
      end
