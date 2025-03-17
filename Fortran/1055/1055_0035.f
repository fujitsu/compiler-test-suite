      program main
      integer*4 ia(50), ib(50), ier
      integer*4 :: loop=50
      do i=1,loop
         ib(i)=i*100
      enddo
!$omp parallel firstprivate(ib)
      forall(i=2:loop)
         ib(i) = ib(i-1)+ib(i)+i*(i-4)+i
      end forall
!$omp do
      do i=1,loop
         ia(i) = ib(i)
      enddo
!$omp end do
!$omp end parallel
      ier=0
      do i=1,loop
         if(ib(i).ne.i*100)then
            ier=ier+1
            write(*,*) "2  i=",i," ib(i)=",ib(i)," must be ",i*100
         endif
      enddo
      forall(i=2:loop)
         ib(i) = ib(i-1)+ib(i)+i*(i-4)+i
      end forall
      do i=1,loop
         if(ia(i).ne.ib(i))then
            ier=ier+1
            write(*,*) "E  i=",i," ia(i)=",ia(i)," ib(i)=",ib(i)
         endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel (forall) -----"
      if(ier .eq. 0) then
         write(*,*) "OK"
      else
         write(*,*) " NG!  PARALLEL Directive is not active!"
         write(*,*) "      ier=", ier
         write(*,*) "      ia=", ia
      endif
      stop
      end

