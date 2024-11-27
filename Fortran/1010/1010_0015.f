c
c
c
c
c
c
      program main
      integer*4 icn, ier
      integer*8 ib(50), ic(50), id
      integer*4 :: loop=50, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
      integer*8 mi8
      integer*4 mi4
      integer*2 mi2
      integer*1 mi1
      common /com1/ mi8, mi4, mi2, mi1
c
!$    thread=OMP_GET_MAX_THREADS()
      ib = 0
      mi8 = 1000
      mi4 = 100
      mi2 = 10
      mi1 = 1
c
!$omp parallel
!$omp do firstprivate(/com1/)
      do i=1,loop
         ib(i) = i*10000+(mi8+mi4+mi2+mi1)
         mi8 = i*1000
         mi4 = i*100
         mi2 = i*10
         mi1 = i*1
      enddo
!$omp end do
!$omp end parallel
c
      ic = 0
      do i=1,loop
         ic(i) = i*10000+(i-1)*1111
      enddo
      icn = 0
      ier = 0
      do i=1,loop
         if (ib(i).ne.ic(i)) then
            id=i*10000+(mi8+mi4+mi2+mi1)
            if (ib(i).eq.id) then
               icn=icn+1
            else
               write(*,*) "i=",i," ib(i)=",ib(i),
     +                           " ic(i)=",ic(i)," id=",id
               ier=ier+1
            endif
         endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(/com1/) -----"
      if(ier.eq.0 .and. icn.le.thread) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE clause is not active"
         write(*,*) "     icn=",icn,"  thread=",thread
         write(*,*) "     ier=",ier
      endif
      stop
      end

