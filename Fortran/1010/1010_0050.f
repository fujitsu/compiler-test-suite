c
c
c
c
c
      program main
      character*4 ca(20), cb(20)
      integer*4 it, ier
      integer*4 :: loop=20, ith=4
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      character*4 ch1(20),ch2(20)
      common /com1/ ch1,ch2 
!$omp threadprivate(/com1/)
c
      ca=' '
      cb=' '
      ch1='tst1'
      ch2='tst2'
!$    ith=OMP_GET_MAX_THREADS()
c
!$omp parallel do copyin(ch1,ch2) schedule(static) private(it)
      do i=1, ith
!$       it=OMP_GET_THREAD_NUM()+1
         cb(it)=ch2(it)
         ch2(it) ='smp1'
         call sub()
         ca(it)=ch1(it)
      end do
!$omp end parallel do
c
      ier=0
      do i=1,ith
         if(ca(i).ne.'smp1') ier=ier+1
         if(cb(i).ne.'tst2') ier=ier+1
      enddo
      do i=ith+1,loop
         if(ca(i).ne.' ') ier=ier+1
         if(cb(i).ne.' ') ier=ier+1
      enddo
      write(*,*) "-----test  --"
      write(*,*) "      threadprivate(/com1/)"
      write(*,*) "      parallel copyin(ch1,ch2) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) " NG  COPYIN Directive is not active"
         write(*,*) "      ier=", ier
         write(*,*) " ca= ",ca
         write(*,*) " cb= ",cb
      end if
c
      stop
      end

      subroutine sub()
      character*4 ch1(20),ch2(20)
      common /com1/ ch1,ch2
!$omp threadprivate(/com1/)
c
      ch1=ch2
c
      return
      end
