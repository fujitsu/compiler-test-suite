!
!
!
!
!
      program main
      character*4 cha(50), chb(50)
      character*4 chai(50), chbi(50)
      integer*4 ic, ier, it, ith
      complex*8 ca(50),cb(50), cc
      complex*8 cai(50),cbi(50)
      integer*4 :: loop=50, loop5=5
!$    integer*4 OMP_GET_THREAD_NUM
!$    integer*4 OMP_GET_MAX_THREADS
      type tt2
         sequence
         integer*4   tii(5)
         real*4      trr(5)
         complex*8   tcc(5)
         complex*8   tcc1(50)
         character*4 ch1(50)
         character*4 ch2(50)
      end type
      type tt1
         sequence
         integer*4   tii(5)
         real*4      trr(5)
         complex*8   tcc(5)
         complex*8   tcc1(50)
         character*4 ch1(50)
         character*4 ch2(50)
         type (tt2)   ty2
      end type
      type (tt1) ty1
      common /com1/ ty1,ic,it
!$omp threadprivate(/com1/)
!
      ca = (0,0)
      cb = (0,0)
      cai = (0,0)
      cbi = (0,0)
      do i=1,loop5
         ty1%tii(i) = i
         ty1%trr(i) = (-1)*i
         ty1%tcc(i) = cmplx(i,(-1)*i)
         ty1%ty2%tii(i) = i
         ty1%ty2%trr(i) = (-1)*i
         ty1%ty2%tcc(i) = cmplx(i,(-1)*i)
      enddo
      it = 0
      cha=' '
      chb=' '
      chai=' '
      chbi=' '
      ty1%ch1 = 'tst1'
      ty1%ch2 = 'tst2'
      ty1%ty2%ch1 = 'tst1'
      ty1%ty2%ch2 = 'tst2'
!$    ith=OMP_GET_MAX_THREADS()
!$omp parallel do copyin(/com1/)
      do i=1, loop
!$       it=OMP_GET_THREAD_NUM()+1
         ic=mod(i,loop5)+1
         cb(i) = cmplx(real(ty1%tii(ic)),ty1%trr(ic)) + ty1%tcc(ic)
         cbi(i) = cmplx(real(ty1%ty2%tii(ic)),ty1%ty2%trr(ic)) + ty1%ty2%tcc(ic)
         chb(it)=ty1%ch2(it)
         chbi(it)=ty1%ty2%ch2(it)
         call sub()
         ca(it)=ty1%tcc1(it)
         cai(it)=ty1%ty2%tcc1(it)
         cha(it)=ty1%ch1(it)
         chai(it)=ty1%ty2%ch1(it)
      end do
!$omp end parallel do
!
      ier = 0
      do i=1, loop
         ic=mod(i,loop5)+1
         cc = cmplx(real(ty1%tii(ic)),ty1%trr(ic)) + ty1%tcc(ic)
         if ((cb(i).ne.cc) .and. (cbi(i).ne.cc)) then
            ier=ier+1
            write(*,*) "E  i=",i," cb(i)=",cb(i)," must be ",cc
            write(*,*) "E  i=",i," cbi(i)=",cbi(i)," must be ",cc
         endif
      enddo
      do i=1, ith
         if (ca(i).ne.cmplx(1,1) .and. cai(i).ne.cmplx(1,1)) then
            ier=ier+1
            write(*,*) "E  i=",i," ca(i)=",ca(i)," must be ",cmplx(1,1)
            write(*,*) "E  i=",i," cai(i)=",cai(i)," must be ",cmplx(1,1)
         endif
      enddo
      do i=ith+1, loop
         if (ca(i).ne.cmplx(0,0) .and. cai(i).ne.cmplx(0,0)) then
            ier=ier+1
            write(*,*) "E  i=",i," ca(i)=",ca(i)," must be ",cmplx(0,0)
            write(*,*) "E  i=",i," cai(i)=",cai(i)," must be ",cmplx(0,0)
         endif
      enddo
      do i=1,ith
         if(cha(i).ne.'smp1') ier=ier+1
         if(chb(i).ne.'tst2') ier=ier+1
         if(chai(i).ne.'smp1') ier=ier+1
         if(chbi(i).ne.'tst2') ier=ier+1
      enddo
      do i=ith+1,loop
         if(cha(i).ne.' ') ier=ier+1
         if(chb(i).ne.' ') ier=ier+1
         if(chai(i).ne.' ') ier=ier+1
         if(chbi(i).ne.' ') ier=ier+1
      enddo
!
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
         write(*,*) "     ty1%tcc1=",ty1%tcc1
         write(*,*) "     ty1%ch1=",ty1%ch1
         write(*,*) "     ty1%ch2=",ty1%ch2
         write(*,*) "     ty1%ty2%tii=",ty1%ty2%tii
         write(*,*) "     ty1%ty2%trr=",ty1%ty2%trr
         write(*,*) "     ty1%ty2%tcc=",ty1%ty2%tcc
         write(*,*) "     ty1%ty2%tcc1=",ty1%ty2%tcc1
         write(*,*) "     ty1%ty2%ch1=",ty1%ty2%ch1
         write(*,*) "     ty1%ty2%ch2=",ty1%ty2%ch2
         write(*,*) "     ier=",ier
      endif
      stop
      end

      subroutine sub()
      integer*4 ic,it
      type tt2
         sequence
         integer*4   tii(5)
         real*4      trr(5)
         complex*8   tcc(5)
         complex*8   tcc1(50)
         character*4 ch1(50)
         character*4 ch2(50)
      end type
      type tt1
         sequence
         integer*4   tii(5)
         real*4      trr(5)
         complex*8   tcc(5)
         complex*8   tcc1(50)
         character*4 ch1(50)
         character*4 ch2(50)
         type (tt2) ty2
      end type
      type (tt1) ty1
      common /com1/ ty1,ic,it
!$omp threadprivate(/com1/)
      ty1%tcc1(it) = cmplx(1,1)
      ty1%ty2%tcc1(it) = cmplx(1,1)
      ty1%ch1(it)='smp1'
      ty1%ty2%ch1(it)='smp1'
      return
      end
