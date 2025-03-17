      program main
      integer*4 ia(100), ib(100), ic(100), id(100)
      integer*4 it(10), iw, iw2, iw3, ier
      integer*4 :: loop=100, loop2=5, ith=4
      integer*4 OMP_GET_MAX_THREADS
      do i=1,loop
         ia(i)=(mod(i,3)+1)*(-1)**i
      enddo
!$omp parallel
!$omp do firstprivate(ia) lastprivate(ia) private(iw)
      do i=1,loop
         iw=i
         ic(i)=ia(iw)+i
         ia(iw)=ia(iw)+iw
      enddo
!$omp end do
!$omp end parallel
      ith=OMP_GET_MAX_THREADS()
      iw=loop/ith
      iw2=mod(loop,ith)
      it(1)=1
      do i=1,ith-1
         iw3=iw
         if(i.le.iw2)iw3=iw3+1
         it(i+1)=it(i)+iw3
      enddo
      do i=1,loop
         do j=1,ith
            if(i.eq.it(j)) then
               do k=1,loop
                  ib(k)=(mod(k,3)+1)*(-1)**k
               enddo
            endif
         enddo
         iw=i
         id(i)=ib(iw)+i
         ib(iw)=ib(iw)+iw
      enddo
      ier = 0
      do i=1,loop
         if (ia(i).ne.ib(i)) ier=ier+1
      enddo
      do i=1,loop
         if (ic(i).ne.id(i)) ier=ier+1
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel"
      write(*,*) "      do firstprivate(ia) lastprivate(ia)"
      write(*,*) "         private(iw) -----"
      if(ier.eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  LASTPRIVATE clause is not active"
         write(*,*) "     ier=",ier
         write(*,*) "     ia=",ia
         write(*,*) "     ib=",ib
         write(*,*) "     ic=",ic
         write(*,*) "     id=",id
      endif
      stop
      end

