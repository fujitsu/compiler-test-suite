c
c
c
c
c
c
      program main
      integer*4 ib(10), ith, ier
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      integer*4   mii, mia(10)
      real*4      mrr, mra(10)
      complex*8   mcc, mca(10)
      character*4 mss, msa(10)
      common /com1/ mii, mrr, mcc, mss
      common /com2/ mia, mra, mca, msa
c
      ib = 0
      mii = 7
      mrr = 5.1
      mcc = (1.2,9.1)
      mss = 'str'
      do i=1, loop
         mia(i)=0
         mra(i)=0.0
         mca(i)=(0.,0.)
         msa(i)=' '
      enddo
!$    thread = OMP_GET_MAX_THREADS()
c
!$omp parallel firstprivate(/com1/) private(ith)
!$    ith = OMP_GET_THREAD_NUM() + 1
      mia(ith)=mii
      mra(ith)=mrr
      mca(ith)=mcc
      msa(ith)=mss
      mii = 0
      mrr = 0.0
      mcc = (0.0,0.0)
      mss = ' '
      ib(ith)=ith
!$omp end parallel
c
      ier = 0
      do i=1,thread
         if(mia(i).ne.mii) ier=ier+1
         if(mra(i).ne.mrr) ier=ier+1
         if(mca(i).ne.mcc) ier=ier+1
         if(msa(i).ne.mss) ier=ier+1
         if(ib(i).ne.i) ier=ier+1
      enddo
      do i=thread+1, loop
         if(mia(i).ne.0) ier=ier+1
         if(mra(i).ne.0.0) ier=ier+1
         if(mca(i).ne.(0.,0.)) ier=ier+1
         if(msa(i).ne.' ') ier=ier+1
         if(ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel firstprivate(/com1/)",
     +                " private(ith) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  FIRSTPRIVATE clause is not active"
         do i=1, loop
            write(*,*)"i=",i," mia(i)=",mia(i)," mra(i)=",mra(i)
            write(*,*)"      mca(i)=",mca(i)," msa(i)=",msa(i)
         enddo
         write(*,*) "     ier=",ier
         write(*,*) "     /com1/", mii, mrr, mcc, mss
         write(*,*) "     ib=",ib
      endif
      stop
      end

