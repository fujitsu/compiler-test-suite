!
!
!
!
!
!
      program main
      integer*4 ier
      complex*8 cb(50), cc
      character*4 ss
      integer*4 :: loop=50
      type tt1
         integer*4   tii
         real*4      trr
         complex*8   tcc
         character*4 tss
      end type
      type (tt1) ty1(50)
!
      cb = (0,0)
      do i=1,loop
         write(ss,'(i4.4)')i
         ty1(i) = tt1(i, real((-1)*i), cmplx(i,(-1)*i), ss)
      enddo
!
!$omp parallel
!$omp do firstprivate(ty1,ss)
      do i=1, loop
         cb(i) = cmplx(real(ty1(i)%tii),ty1(i)%trr) + ty1(i)%tcc
         write(ss,'(i4.4)')i*10
         ty1(i) = tt1(i*10, i*10.0, cmplx(i*10,i*(-10)), ss)
      end do
!$omp end do
!$omp end parallel
!
      ier = 0
      do i=1, loop
         cc = cmplx(real(ty1(i)%tii),ty1(i)%trr) + ty1(i)%tcc
         if (cb(i).ne.cc) then
            ier=ier+1
            write(*,*) "E  i=",i," cb(i)=",cb(i)," must be ",cc
         endif
      enddo
      do i=1,loop
         write(ss,'(i4.4)')i
         if(ty1(i)%tss.ne.ss)then
            ier=ier+1
            write(*,*) "E  i=",i," ty1(i)%tss=",ty1(i)%tss
         endif
      enddo
      write(*,*) "----- test90 --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(ty1) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG!  FIRSTPRIVATE clause is not active!"
         write(*,*) "     ier=",ier
      endif
      stop
      end
