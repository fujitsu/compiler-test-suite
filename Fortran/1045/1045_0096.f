      program main
      integer*4 ia(50), ib(50), ig(50,2), ih(50,2)
      integer*4 ic, id, il, it, ier(2), k
      integer*4 ::  thread=4, chunk=1,st=1,loop=50
!$    integer*4 OMP_GET_MAX_THREADS
!$    integer*4 OMP_GET_THREAD_NUM
      ia = 0
!$    thread = OMP_GET_MAX_THREADS()
!$omp parallel
!$omp do schedule(guided)
      do i=st,loop 
!$       ia(i) = OMP_GET_THREAD_NUM() + 1
      end do
!$omp end do
!$omp end parallel
      ig=0
      do k=1,2
      il=50
      ic=1
      do while(il.gt.0)
         if( k.eq.1 ) then
           it=il/(thread*2)
         else
           it=il/thread
           if(mod(il,thread).ne.0) it=it+1
         endif
         if(it.lt.chunk) then
            if(il.gt.chunk) then
               it=chunk
            else
               it=il
            endif
         endif
         ig(ic,k)=it
         il=il-it
         ic=ic+1
      enddo
      enddo
      ib=0
      ic=0
      id=0
      do i=1, 50
         if (ia(i).ne.id .or. ic.eq.0) then
             ic=ic+1
             id=ia(i)
         endif
         ib(ic)=ib(ic)+1
      end do
      ih=0
      ier=0
      do k=1,2
      ic=1
      id=1
      do while(ib(ic).ne.0 .and. ic.le.50)
         do while(ib(ic).gt.ih(ic,k) .and. id.le.50)
            ih(ic,k)=ih(ic,k)+ig(id,k)
            id=id+1
         enddo
         ic=ic+1
      enddo
      do i=1,50
          if(ib(i).ne.ih(i,k)) ier(k)=ier(k)+1
      enddo
      enddo
      write(*,*) "----- test --"
      write(*,*) "      parallel do schedule(guided) -----"
      if(ier(1).eq.0 .or. ier(2).eq.0) then
         write(*,*) "OK"
      else
         write(*,*) "NG  SCHEDULE(GUIDED) clause is incorrect"
         write(*,*) "      thread=",thread," chunk=",chunk
         write(*,*) "     ier=",ier
         write(*,*) "     ia=",ia
         write(*,*) "     ib=",ib
         write(*,*) "     ih=",ih
         write(*,*) "     ig=",ig
      end if
      stop
      end

