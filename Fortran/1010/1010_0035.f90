!
!
!
!
!
      program main
      integer*4 ic, ier, it, ith
      complex*32 ca(50),cb(50), cc
      integer*4 :: loop=50, loop5=5
!$    integer*4 OMP_GET_THREAD_NUM
!$    integer*4 OMP_GET_MAX_THREADS
      type tt1
         sequence
         integer*4   tii(5)
         real*4      trr(5)
         complex*32   tcc(5)
         complex*32   tcc1(50)
      end type
      type (tt1) ty1
      common /com1/ ty1,ic,it
!$omp threadprivate(/com1/)
!
      ca = (0,0)
      cb = (0,0)
      do i=1,loop5
         ty1%tii(i) = i
         ty1%trr(i) = (-1)*i
         ty1%tcc(i) = cmplx(i,(-1)*i)
      enddo
      it = 0
!$    ith=OMP_GET_MAX_THREADS()
!$omp parallel do copyin(/com1/)
      do i=1, loop
!$       it=OMP_GET_THREAD_NUM()+1
         ic=mod(i,loop5)+1
         cb(i) = cmplx(real(ty1%tii(ic)),ty1%trr(ic)) + ty1%tcc(ic)
         call sub()
         ca(it)=ty1%tcc1(it)
      end do
!$omp end parallel do
!
      ier = 0
      do i=1, loop
         ic=mod(i,loop5)+1
         cc = cmplx(real(ty1%tii(ic)),ty1%trr(ic)) + ty1%tcc(ic)
         if (cb(i).ne.cc) then
            ier=ier+1
            write(*,*) "E  i=",i," cb(i)=",cb(i)," must be ",cc
         endif
      enddo
      do i=1, ith
         if (ca(i).ne.cmplx(1,1)) then
            ier=ier+1
            write(*,*) "E  i=",i," ca(i)=",ca(i)," must be ",cmplx(1,1)
         endif
      enddo
      do i=ith+1, loop
         if (ca(i).ne.cmplx(0,0)) then
            ier=ier+1
            write(*,*) "E  i=",i," ca(i)=",ca(i)," must be ",cmplx(0,0)
         endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      threadprivate(/com1/)"
      write(*,*) "      copyin(/com1/) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) " NG  COPYIN Directive is not active"
         write(*,*) "     ty1%tii=",ty1%tii
         write(*,*) "     ty1%trr=",ty1%trr
         write(*,*) "     ty1%tcc=",ty1%tcc
         write(*,*) "     ier=",ier
      endif
      stop
      end

      subroutine sub()
      integer*4 ic,it
      type tt1
         sequence
         integer*4   tii(5)
         real*4      trr(5)
         complex*32   tcc(5)
         complex*32   tcc1(50)
      end type
      type (tt1) ty1
      common /com1/ ty1,ic,it
!$omp threadprivate(/com1/)
      ty1%tcc1(it) = cmplx(1,1)
      return
      end
