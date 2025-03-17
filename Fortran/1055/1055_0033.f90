!
!
!
!
!
!
      program main
      integer*4 ib(10), ith, ier
      integer*4 :: loop=10, thread=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      type tt1
         integer*4   tii
         real*4      trr
         complex*8   tcc
         character*4 tss
      end type
      type (tt1) ty1, ty2(10)
!
      ib = 0
      ty1 = tt1(7, 5.1, (1.2,9.1), 'str')
      do i=1, loop
         ty2(i) = tt1(0, 0.0, (0.,0.), ' ')
      enddo
!$    thread = OMP_GET_MAX_THREADS()
!
!$omp parallel firstprivate(ty1) private(ith)
!$    ith = OMP_GET_THREAD_NUM() + 1
      ty2(ith) = tt1(ty1%tii, ty1%trr, ty1%tcc, ty1%tss)
      ty1 = tt1(0, 0., (0.,0.), ' ')
      ib(ith)=ith
!$omp end parallel
!
      ier = 0
      do i=1,thread
         if(ty2(i)%tii.ne.ty1%tii) ier=ier+1
         if(ty2(i)%trr.ne.ty1%trr) ier=ier+1
         if(ty2(i)%tcc.ne.ty1%tcc) ier=ier+1
         if(ty2(i)%tss.ne.ty1%tss) ier=ier+1
         if(ib(i).ne.i) ier=ier+1
      enddo
      do i=thread+1, loop
         if(ty2(i)%tii.ne.0) ier=ier+1
         if(ty2(i)%trr.ne.0.0) ier=ier+1
         if(ty2(i)%tcc.ne.(0.,0.)) ier=ier+1
         if(ty2(i)%tss.ne.' ') ier=ier+1
         if(ib(i).ne.0) ier=ier+1
      enddo
      write(*,*) "----- test90 --"
      write(*,*) "      parallel firstprivate(ty1) private(ith) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  FIRSTPRIVATE clause is not active!"
         do i=1, loop
            write(*,*)"     i=",i," ty2(i)=",ty2(i)
         enddo
         write(*,*) "     ier=",ier
         write(*,*) "     ty1=",ty1
         write(*,*) "     ib=",ib
      endif
      stop
      end

