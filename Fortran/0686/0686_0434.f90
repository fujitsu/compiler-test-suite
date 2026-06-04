      call sub()
      print *,'pass'
      end

      subroutine sub()
      integer(4),dimension(4,5)::a=1

!$omp parallel workshare
      a(:,:)=0
!$omp end parallel workshare
      if (any(a/=reshape((/0,0,0,0, 0,0,0,0, 0,0,0,0, &
                           0,0,0,0, 0,0,0,0/),(/4,5/)))) print *,"fail"
!$omp parallel workshare
      a(:,1:5:2)=1
!$omp end parallel workshare
      if (any(a/=reshape((/1,1,1,1, 0,0,0,0, 1,1,1,1, &
                           0,0,0,0, 1,1,1,1/),(/4,5/)))) print *,"fail"
!$omp parallel workshare
      a(:,2:4:2)=2
!$omp end parallel workshare
      if (any(a/=reshape((/1,1,1,1, 2,2,2,2, 1,1,1,1, &
                           2,2,2,2, 1,1,1,1/),(/4,5/)))) print *,"fail"
!$omp parallel workshare
      a(1,:)=5
      a(4,:)=7
!$omp end parallel workshare
      if (any(a/=reshape((/5,1,1,7, 5,2,2,7, 5,1,1,7, &
                           5,2,2,7, 5,1,1,7/),(/4,5/)))) print *,"fail"
      end
