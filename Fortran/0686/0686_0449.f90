      program abc
       interface 
        subroutine sub(a,b)
          integer,dimension(:,:)::a,b
        end subroutine
       end interface
      integer,dimension(5,5)::a,b
      b=reshape((/(i,i=1,25)/),(/5,5/))
      call sub(a,b)
      if (any(a/=reshape((/(i,i=1,25)/),(/5,5/)))) print *,"fail"
      print *,'pass'
      end

      subroutine sub(a,b)
      integer,dimension(:,:)::a,b
!$omp parallel workshare
      forall(i=1:5)
      forall(j=5:1:-1)
       a(j,i)=b(j,i)
      endforall
      endforall
!$omp end parallel workshare
      end
