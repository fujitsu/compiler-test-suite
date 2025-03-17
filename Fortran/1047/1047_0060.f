      program main
      integer*4 ia(10), ier
      integer*4 :: loop = 10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
      integer*8 ii8(10)
      integer*4 ii4(10)
      integer*2 ii2(10)
      integer*1 ii1(10)
      ia = 999
      do i=1,loop
         ii8(i) = i*1000
         ii4(i) = i*100
         ii2(i) = i*10
         ii1(i) = i*1
      enddo
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel private(ii8,ii4,ii2,ii1)
      call sub(ia,ii8,ii4,ii2,ii1)
!$omp end parallel
      ier = 0
      do i=1,thread
          if (ia(i).ne.i*15) ier=ier+1
      enddo
      do i=thread+1, loop
          if (ia(i).ne.999) ier=ier+1
      enddo
      do i=1,loop
          if (ii8(i).ne.i*1000) ier=ier+1
          if (ii4(i).ne.i*100) ier=ier+1
          if (ii2(i).ne.i*10) ier=ier+1
          if (ii1(i).ne.i) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel private(ii8,ii4,ii2,ii1) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  PRIVATE clause is not active"
         write(*,*) "     ier=", ier, " It must be 0"
         write(*,*) "     ia=",ia
         write(*,*) "     ii8=", ii8
         write(*,*) "     ii4=", ii4
         write(*,*) "     ii2=", ii2
         write(*,*) "     ii1=", ii1
      endif
      stop
      end

      subroutine sub(ia,ii8,ii4,ii2,ii1)
      integer*4 ia(10)
      integer*8 ii8(10)
      integer*4 ii4(10)
      integer*2 ii2(10)
      integer*1 ii1(10)
!$    integer*4 OMP_GET_THREAD_NUM
      integer*4 it
!$    it = OMP_GET_THREAD_NUM() + 1
      ii8(it) = it*8
      ii4(it) = it*4
      ii2(it) = it*2
      ii1(it) = it*1
      ia(it) = ii8(it)+ii4(it)+ii2(it)+ii1(it)
      return
      end
