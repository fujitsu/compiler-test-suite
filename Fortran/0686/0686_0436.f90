      call sub()
      print *,'pass'
      end

      subroutine sub()
      integer(4),dimension(4,5)::a=1

!$omp parallel workshare
      a(4:1:-1,5:1:-1)=0
!$omp end parallel workshare
      if (any(a/=reshape((/0,0,0,0, 0,0,0,0, 0,0,0,0, &
                           0,0,0,0, 0,0,0,0/),(/4,5/)))) print *,"fail"
!$omp parallel workshare
      a(2:3,1:5:2)=1
!$omp end parallel workshare
      if (any(a/=reshape((/0,1,1,0, 0,0,0,0, 0,1,1,0, &
                           0,0,0,0, 0,1,1,0/),(/4,5/)))) print *,"fail"
!$omp parallel workshare
      a(1:4:3,2:4:2)=2
!$omp end parallel workshare
      if (any(a/=reshape((/0,1,1,0, 2,0,0,2, 0,1,1,0, &
                           2,0,0,2, 0,1,1,0/),(/4,5/)))) print *,"fail"
!$omp parallel workshare
      where (a(:,:)==0)
        a(:,:)=5
      elsewhere
        a(:,:)=a(:,:)+10
      end where
!$omp end parallel workshare
      if (any(a/=reshape((/5,11,11,5, 12,5,5,12, 5,11,11,5, &
                           12,5,5,12, 5,11,11,5/),(/4,5/)))) print *,"fail"
      end
