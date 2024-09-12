      call sub_static
      call sub_dynamic
      call sub_guided
      call sub_runtime
      print *,'pass'
      end

      subroutine sub_static
      integer*4 ia(126),ib(126)
      integer*8 i,istart,iend,istep
      integer*4 istart1,iend1,istep1
      ia = 0
      istart = 1
      iend   = 126
      istep  = 2
      istart1 = 1
      iend1   = 126
      istep1  = 2
!$omp parallel do
      do i=istart,iend,istep
         ia(i)=i
      enddo
!$omp end parallel do
      do i=istart1,iend1,istep1
         ib(i)=i
      enddo
      do i=istart1,iend1,istep1
         if (ia(i).ne.ib(i))   then
            write(*,*)'NG'
         endif
      enddo
      write(1,*)'ia=',ia
      end subroutine sub_static

      subroutine sub_dynamic
      integer*4 ia(126),ib(126)
      integer*8 i,istart,iend,istep
      integer*4 istart1,iend1,istep1
      ia = 0
      istart = 1
      iend   = 126
      istep  = 2
      istart1 = 1
      iend1   = 126
      istep1  = 2
!$omp parallel do schedule(dynamic)
      do i=istart,iend,istep
         ia(i)=i
      enddo
!$omp end parallel do
      do i=istart1,iend1,istep1
         ib(i)=i
      enddo
      do i=istart1,iend1,istep1
         if (ia(i).ne.ib(i))   then
            write(*,*)'NG'
         endif
      enddo
      write(1,*)'ia=',ia
      end subroutine sub_dynamic

      subroutine sub_guided
      integer*4 ia(126),ib(126)
      integer*8 i,istart,iend,istep
      integer*4 istart1,iend1,istep1
      ia = 0
      istart = 1
      iend   = 126
      istep  = 2
      istart1 = 1
      iend1   = 126
      istep1  = 2
!$omp parallel do schedule(guided)
      do i=istart,iend,istep
         ia(i)=i
      enddo
!$omp end parallel do
      do i=istart1,iend1,istep1
         ib(i)=i
      enddo
      do i=istart1,iend1,istep1
         if (ia(i).ne.ib(i))   then
            write(*,*)'NG'
         endif
      enddo
      write(1,*)'ia=',ia
      end subroutine sub_guided

      subroutine sub_runtime
      integer*4 ia(126),ib(126)
      integer*8 i,istart,iend,istep
      integer*4 istart1,iend1,istep1
      ia = 0
      istart = 1
      iend   = 126
      istep  = 2
      istart1 = 1
      iend1   = 126
      istep1  = 2
!$omp parallel do schedule(runtime)
      do i=istart,iend,istep
         ia(i)=i
      enddo
!$omp end parallel do
      do i=istart1,iend1,istep1
         ib(i)=i
      enddo
      do i=istart1,iend1,istep1
         if (ia(i).ne.ib(i))   then
            write(*,*)'NG'
         endif
      enddo
      write(1,*)'ia=',ia
      end subroutine sub_runtime
