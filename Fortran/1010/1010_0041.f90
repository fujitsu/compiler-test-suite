!
!
!
!
!
      program main
      character*4 cha(50), chb(50)
      integer*4 :: loop=50
      integer*4 ier, it, ith
!$    integer*4 OMP_GET_THREAD_NUM
!$    integer*4 OMP_GET_MAX_THREADS
      type tt1
         sequence
         character*4 ch1(50)
         character*4 ch2(50)
      end type
      type (tt1) ty1
      common /com1/ ty1,it
!$omp threadprivate(/com1/)
!
      it = 0
      cha=' '
      chb=' '
      ty1%ch1 = 'tst1'
      ty1%ch2 = 'tst2'
!$    ith=OMP_GET_MAX_THREADS()
!$omp parallel copyin(/com1/)
!$    it=OMP_GET_THREAD_NUM()+1
      chb(it)=ty1%ch2(it)
      ty1%ch2(it) = 'smp1'
      call sub()
      cha(it)=ty1%ch1(it)
!$omp end parallel
!
      ier = 0
      do i=1,ith
         if(cha(i).ne.'smp1') ier=ier+1
         if(chb(i).ne.'tst2') ier=ier+1
      enddo
      do i=ith+1,loop
         if(cha(i).ne.' ') ier=ier+1
         if(chb(i).ne.' ') ier=ier+1
      enddo
!
      write(*,*) "----- test --"
      write(*,*) "      threadprivate(/com1/)"
      write(*,*) "      copyin(/com1/) ------"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) " NG  COPYIN Directive is not active"
         write(*,*) "     ty1%ch1=",ty1%ch1
         write(*,*) "     ty1%ch2=",ty1%ch2
         write(*,*) "     ier=",ier
      endif
      stop
      end

      subroutine sub()
      integer*4 it
      type tt1
         sequence
         character*4 ch1(50)
         character*4 ch2(50)
      end type
      type (tt1) ty1
      common /com1/ ty1,it
!$omp threadprivate(/com1/)
      ty1%ch1(it)='smp1'
      return
      end
