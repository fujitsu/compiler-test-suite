      program main
      integer*4 ia(50), ib(50), ic(50), ier
      integer*4 :: loop=50
      ia=0
      do i=1,loop
         if(mod(i,2).eq.0)then
            ib(i)=0
            ic(i)=i*100
         else
            ib(i)=1
            ic(i)=i
         endif
      enddo
!$omp parallel firstprivate(ib)
      where(ib==1) ib=ic
!$omp do
      do i=1,loop
         ia(i) = ib(i)
      enddo
!$omp end do
!$omp end parallel
      ier=0
      do i=1,loop
         if(ib(i).ne.mod(i,2))then
            ier=ier+1
            write(*,*) "2  i=",i," ib(i)=",ib(i)," must be ",mod(i,2)
         endif
      enddo
      do i=1,loop
         if(mod(i,2).eq.0)then
            if(ia(i).ne.ib(i))then
               ier=ier+1
               write(*,*) "E  i=",i," ia(i)=",ia(i)," ib(i)=",ib(i)
            endif
         else
            if(ia(i).ne.ic(i))then
               ier=ier+1
               write(*,*) "E  i=",i," ia(i)=",ia(i)," ic(i)=",ic(i)
            endif
         endif
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel (where) -----"
      if(ier .eq. 0) then
         write(*,*) "OK"
      else
         write(*,*) " NG!  PARALLEL Directive is not active!"
         write(*,*) "      ier=", ier
         write(*,*) "      ia=", ia
      endif
      stop
      end

