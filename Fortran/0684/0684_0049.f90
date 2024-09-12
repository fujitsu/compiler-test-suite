      program main
      integer*4 ia(50), ib(50), ic(50), ier
      integer*4 :: loop=50
      do i=1,loop
         ib(i)=i*100
         ic(i)=i*100
      enddo
!$omp parallel firstprivate(ib)
      forall(i=2:loop,mod(i,3).ne.0)
         ib(i) = ib(i-1)+ib(i)+i
      end forall
!$omp do
      do i=1,loop
         ia(i) = ib(i)
      enddo
!$omp end do
!$omp end parallel
      forall(i=2:loop,mod(i,3).ne.0)
         ic(i) = ic(i-1)+ic(i)+i
      end forall
      ier=0
      do i=1,loop
         if(ia(i).ne.ic(i))then
            ier=ier+1
            write(*,*) "E  i=",i," ia(i)=",ia(i)," ic(i)=",ic(i)
         endif
      enddo
      if(ier .eq. 0) then
         write(*,*) "pass"
      else
         write(*,*) " NG*  PARALLEL Directive is not active*"
         write(*,*) "      ier=", ier
      end if
      end

