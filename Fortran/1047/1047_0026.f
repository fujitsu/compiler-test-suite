      program main
      integer*4 ib(10), it, ier
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*8 ii8(10)
      integer*4 ii4(10)
      integer*2 ii2(10)
      integer*1 ii1(10)
      ib = 0
      do i=1,loop
          ii8(i)=i*40
          ii4(i)=i*20
          ii2(i)=i+10
          ii1(i)=mod(i,127)
      enddo
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel firstprivate(ii8,ii4,ii2,ii1) private(it)
!$    it = OMP_GET_THREAD_NUM() + 1
      ib(it) = ii8(it)+ii4(it)+ii2(it)+ii1(it)
      do i=1,loop
         ii8(i)=it*1000
         ii4(i)=it*100
         ii2(i)=it*10
         ii1(i)=it*1
      enddo
!$omp end parallel
      ier = 0
      do i=1,thread
          if (ib(i).ne.ii8(i)+ii4(i)+ii2(i)+ii1(i)) ier=ier+1
      enddo
      do i=thread+1, loop
          if (ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel private(it)"
      write(*,*) "      firstprivate(ii8,ii4,ii2,ii1) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE clause is not active"
         write(*,*) "     ib=",ib
         write(*,*) "     ier=",ier
         write(*,*) "     ii8=",ii8
         write(*,*) "     ii4=",ii4
         write(*,*) "     ii2=",ii2
         write(*,*) "     ii1=",ii1
      endif
      stop
      end

