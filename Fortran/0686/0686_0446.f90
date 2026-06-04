      integer(4),parameter::m=5
      integer(8),dimension(m,m)::i8,j8,k8
      integer(4),dimension(m,m)::i4,j4,k4
      integer(2),dimension(m,m)::i2,j2,k2
      integer(1),dimension(m,m)::i1,j1,k1
      logical(8)               ::l8
      logical(4)               ::l4
      logical(2)               ::l2
      logical(1)               ::l1

      i8(:,:)=reshape((/(i,i=10001,10025)/),(/5,5/))
      i4(:,:)=reshape((/(i,i=1001,1025)/),(/5,5/))
      i2(:,:)=reshape((/(i,i=101,125)/),(/5,5/))
      i1(:,:)=reshape((/(i,i=1,25)/),(/5,5/))

      call sub1(i8,j8,i4,j4,i2,j2,i1,j1,m)
      call sub2(i8,k8,i4,k4,i2,k2,i1,k1,m)
      call sub3(j8,k8,j4,k4,j2,k2,j1,k1,l8,l4,l2,l1,m)
      if (l8.or.l4.or.l2.or.l1) print *,"fail"
      print *,'pass'
      end

      subroutine sub1(i8,j8,i4,j4,i2,j2,i1,j1,m)
      integer(8),dimension(m,m)::i8,j8
      integer(4),dimension(m,m)::i4,j4
      integer(2),dimension(m,m)::i2,j2
      integer(1),dimension(m,m)::i1,j1
      do i=1,5
!$omp parallel workshare
      j8(:,i)=i8(:,i)+1_8
      j4(:,i)=i4(:,i)+1_4
      j2(:,i)=i2(:,i)+1_2
      j1(:,i)=i1(:,i)+1_1
!$omp end parallel workshare
      enddo
      end

      subroutine sub2(i8,j8,i4,j4,i2,j2,i1,j1,m)
      integer(8),dimension(m,m)::i8,j8
      integer(4),dimension(m,m)::i4,j4
      integer(2),dimension(m,m)::i2,j2
      integer(1),dimension(m,m)::i1,j1
      do i=1,5
      j8(:,i)=i8(:,i)+1_8
      j4(:,i)=i4(:,i)+1_4
      j2(:,i)=i2(:,i)+1_2
      j1(:,i)=i1(:,i)+1_1
      enddo
      end

      subroutine sub3(j8,k8,j4,k4,j2,k2,j1,k1,l8,l4,l2,l1,m)
      integer(8),dimension(m,m)::k8,j8
      integer(4),dimension(m,m)::k4,j4
      integer(2),dimension(m,m)::k2,j2
      integer(1),dimension(m,m)::k1,j1
      logical(8)               ::l8
      logical(4)               ::l4
      logical(2)               ::l2
      logical(1)               ::l1
!$omp parallel workshare
      l8 = any(k8/=j8)
      l4 = any(k4/=j4)
      l2 = any(k2/=j2)
      l1 = any(k1/=j1)
!$omp end parallel workshare
      end
