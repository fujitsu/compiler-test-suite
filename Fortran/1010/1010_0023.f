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
      integer*4   iia(10)
      real*4      rra(10)
      complex*8   cca(10)
      character*4 ssa(10)
      integer*4   mii
      real*4      mrr
      complex*8   mcc
      character*4 mss
      common /com1/ mii, mrr, mcc, mss
!$omp threadprivate(/com1/)
c
      ib = 0
!$    thread = OMP_GET_MAX_THREADS()
c
      do i=1,loop
         iia(i)=0
         rra(i)=0.
         cca(i)=(0.,0.)
         ssa(i)=' '
      enddo
      mii=99
      mrr=99.
      mcc=(99.,99.)
      mss='99'
!$omp parallel private(ith)
!$    ith = OMP_GET_THREAD_NUM() + 1
      iia(ith)=mii
      rra(ith)=mrr
      cca(ith)=mcc
      ssa(ith)=mss
      mii = ith
      mrr = ith
      mcc = cmplx(ith,ith)
      write(mss,'(i4.4)') ith
      ib(ith)=ith
!$omp end parallel
c
      ier = 0
      if(iia(1).ne.99) ier=ier+1
      if(rra(1).ne.99.) ier=ier+1
      if(cca(1).ne.(99.,99.)) ier=ier+1
      if(ssa(1).ne.'99') ier=ier+1
      if(ib(1).ne.1) ier=ier+1
      do i=2,thread
         if(iia(i).ne.55) ier=ier+1
         if(rra(i).ne.55.) ier=ier+1
         if(cca(i).ne.(55.,55.)) ier=ier+1
         if(ssa(i).ne.'str') ier=ier+1
         if(ib(i).ne.i) ier=ier+1
      enddo
      do i=thread+1, loop
         if(iia(i).ne.0) ier=ier+1
         if(rra(i).ne.0.) ier=ier+1
         if(cca(i).ne.(0.,0.)) ier=ier+1
         if(ssa(i).ne.' ') ier=ier+1
         if(ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel private(ith) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  THREADPRIVATE clause is not active"
         do i=1, loop
            write(*,*)"i=",i," iia(i)=",iia(i)," rra(i)=",rra(i)
            write(*,*)"      cca(i)=",cca(i)," ssa(i)=",ssa(i)
         enddo
         write(*,*) "     ier=",ier
         write(*,*) "     /com1/", mii, mrr, mcc, mss
         write(*,*) "     ib=",ib
      endif
c
      stop
      end

      blockdata
         integer*4   mii
         real*4      mrr
         complex*8   mcc
         character*4 mss
         common /com1/ mii, mrr, mcc, mss
!$omp threadprivate(/com1/)
         data mii / 55 /
         data mrr / 55./
         data mcc / (55.,55.) /
         data mss / 'str' /
      end
