      block data
      common /com1/ myid_p1,isum_thread
      common /com2/ num_threads
      common /com3/ isum_global
      data myid_p1,isum_thread /0_4,0_4/
      data num_threads /0_4/
      data isum_global /0_4/
!$omp threadprivate(/com1/)
      end

      program omp2cppr030
      call sub1()
      call sub2()
      print *,'pass'
      end

      subroutine sub1()
      integer(4),external::OMP_GET_THREAD_NUM
      integer(4),external::OMP_GET_NUM_THREADS
      common /com1/ myid_p1,isum_thread
      common /com2/ num_threads
      common /com3/ isum_global
!$omp threadprivate(/com1/)
!$omp parallel
      myid_p1=OMP_GET_THREAD_NUM()+1
!$omp single
      num_threads=OMP_GET_NUM_THREADS()
!$omp end single
!$omp end parallel
      end

      subroutine sub2()
      common /com1/ myid_p1,isum_thread
      common /com2/ num_threads
      common /com3/ isum_global
      logical(4),dimension(1:num_threads) ::ib
      integer(4),dimension(1:num_threads) ::ic
!$omp threadprivate(/com1/)
!$omp parallel shared(num_threads,ib)
      call sub2_sub1(myid_p1,isum_thread,ib,ic,num_threads)
      call sub2_sub2(ib)
!$omp end parallel
      end

      subroutine sub2_sub2(ib)
      common /com1/ myid_p1,isum_thread
      common /com2/ num_threads
      common /com3/ isum_global
!$omp threadprivate(/com1/)
      logical(4),dimension(1:num_threads) ::ib
!$omp do reduction(+:isum_global)
      do i=1,num_threads
        if (ib(i)) print *,"fail"
        isum_global=isum_global+isum_thread
      enddo
!$omp end do

!$omp single
      ksum=0
      do i=1,num_threads
        ksum = ksum + i
      enddo
!$omp end single copyprivate(ksum)

      if (ksum/=isum_global) print *,"fail"
      end

      subroutine sub2_sub1(myid_p1,isum_thread,ib,ic,num_threads)
      integer(4),external::OMP_GET_THREAD_NUM
      integer(4),external::OMP_GET_NUM_THREADS
      integer(4),dimension(1:myid_p1)::ia
      logical(4),dimension(1:num_threads) ::ib
      integer(4),dimension(1:num_threads) ::ic
      common /com3/ isum_global

      ia(:)=1
      isum_thread = 0
      do i=1,myid_p1
        isum_thread = isum_thread + ia(i)
      enddo
      ib(myid_p1) = isum_thread/=OMP_GET_THREAD_NUM()+1
      ic(myid_p1) = isum_thread
      end
