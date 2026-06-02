      logical(8)               ::l8
      logical(4)               ::l4
      logical(2)               ::l2
      logical(1)               ::l1
      call sub(l8,l4,l2,l1)
      if (l8.or.l4.or.l2.or.l1) print *,"fail"
      print *,'pass'
      end

      subroutine sub(l8,l4,l2,l1)
      integer(8),dimension(5,5)::i8,j8
      integer(4),dimension(5,5)::i4,j4
      integer(2),dimension(5,5)::i2,j2
      integer(1),dimension(5,5)::i1,j1
      logical(8)               ::l8
      logical(4)               ::l4
      logical(2)               ::l2
      logical(1)               ::l1

!$omp parallel workshare
      i8(:,:)=10000_8
      i4(:,:)=1000_4
      i2(:,:)=100_2
      i1(:,:)=10_1
!$omp end parallel workshare

      do i=1,5
!$omp parallel workshare firstprivate(i)
      j8(:,i)=i8(:,i)+1_8
      j4(:,i)=i4(:,i)+1_4
      j2(:,i)=i2(:,i)+1_2
      j1(:,i)=i1(:,i)+1_1
!$omp end parallel workshare
      enddo

!$omp parallel workshare
      i8 = reshape((/(10001_8,i=1,25)/),(/5,5/))
      i4 = reshape((/(1001_4,i=1,25)/),(/5,5/))
      i2 = reshape((/(101_2,i=1,25)/),(/5,5/))
      i1 = reshape((/(11_1,i=1,25)/),(/5,5/))
!$omp end parallel workshare

!$omp parallel workshare
      l8 = any(j8/=i8)
      l4 = any(j4/=i4)
      l2 = any(j2/=i2)
      l1 = any(j1/=i1)
!$omp end parallel workshare
      end
