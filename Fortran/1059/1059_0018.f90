      module mo
        integer(8)::isuma=0_8,isumb=0_8,isumc=0_8,isumd=0_8,isume=0_8
      end

      program main
      call sub_main()
      print *,'pass'
      end program

      subroutine sub_main()
      use mo
      integer(4),dimension(1000,200)::a,b,c,d,e
      integer(4)::icount=1,k1=1000,k2=200
!$omp parallel firstprivate(icount)
!$omp do
      do j=1,k2
        do i=1,k1-1
          a(i,j)=1
          b(i,j)=-1
          c(i,j)=1
          d(i,j)=-1
          e(i,j)=1
        enddo
        a(k1,j)=2
        b(k1,j)=-2
        c(k1,j)=2
        d(k1,j)=-2
        e(k1,j)=2
      enddo
!$omp enddo
      call sub_rec(icount,a,b,c,d,e,k1,k2)
!$omp barrier
!$omp sections
      if (isuma/=(k1+1)*k2) write(6,*) "NG"
!$omp section
      if (isumb/=-(k1+1)*k2) write(6,*) "NG"
!$omp section
      if (isumc/=(k1+1)*k2) write(6,*) "NG"
!$omp section
      if (isumd/=-(k1+1)*k2) write(6,*) "NG"
!$omp section
      if (isume/=(k1+1)*k2) write(6,*) "NG"
!$omp endsections
!$omp endparallel
      end subroutine

      recursive subroutine sub_rec(icount,a,b,c,d,e,k1,k2)
      use mo
      integer(4),dimension(k1,k2)::a,b,c,d,e
      integer(4)::icount,k1,k2
!$    integer(4)::OMP_GET_THREAD_NUM

      if (mod(icount,10).eq.1) then
!$omp do private(i) reduction(+:isuma,isumb,isumc,isumd,isume)
        do i=1,k1
          isuma=isuma+a(i,icount)
          isumb=isumb+b(i,icount)
          isumc=isumc+c(i,icount)
          isumd=isumd+d(i,icount)
          isume=isume+e(i,icount)
        enddo
!$omp end do
      elseif (mod(icount,10).eq.2) then
!$omp do reduction(+:isuma,isumb,isumd,isume)
        do i=1,k1
          isuma=isuma+a(i,icount)
          isumb=isumb+b(i,icount)
 !$omp atomic
          isumc=isumc+c(i,icount)
          isumd=isumd+d(i,icount)
          isume=isume+e(i,icount)
        enddo
!$omp end do
      elseif (mod(icount,10).eq.3) then
!$omp do
        do i=1,k1
  !$omp atomic
          isuma=isuma+a(i,icount)
  !$omp atomic
          isumb=isumb+b(i,icount)
  !$omp atomic
          isumc=isumc+c(i,icount)
  !$omp atomic
          isumd=isumd+d(i,icount)
  !$omp atomic
          isume=isume+e(i,icount)
        enddo
!$omp enddo
      elseif (mod(icount,10).eq.4) then
!$omp do
        do i=1,k1
!$omp critical
          isuma=isuma+a(i,icount)
          isumb=isumb+b(i,icount)
          isumc=isumc+c(i,icount)
          isumd=isumd+d(i,icount)
          isume=isume+e(i,icount)
!$omp end critical
        enddo
!$omp enddo
      elseif (mod(icount,10).eq.5) then
!$omp sections
        do i=1,k1
          isuma=isuma+a(i,icount)
          isumb=isumb+b(i,icount)
          isumc=isumc+c(i,icount)
          isumd=isumd+d(i,icount)
          isume=isume+e(i,icount)
        enddo
!$omp end sections
      elseif (mod(icount,10).eq.6) then
!$omp sections reduction(+:isuma,isumb,isumc,isumd,isume)
!$omp section
        do i=1,k1/2
          isuma=isuma+a(i,icount)
          isumb=isumb+b(i,icount)
          isumc=isumc+c(i,icount)
          isumd=isumd+d(i,icount)
          isume=isume+e(i,icount)
        enddo
!$omp section
        do i=k1,k1/2+1,-1
          isuma=isuma+a(i,icount)
          isumb=isumb+b(i,icount)
          isumc=isumc+c(i,icount)
          isumd=isumd+d(i,icount)
          isume=isume+e(i,icount)
        enddo
!$omp end sections
      elseif (mod(icount,10).eq.7) then
!$omp sections private(i)
 !$omp section
        do i=1,k1
          isuma=isuma+a(i,icount)
        enddo
 !$omp section
        do i=1,k1
          isumb=isumb+b(i,icount)
        enddo
 !$omp section
        do i=1,k1
          isumc=isumc+c(i,icount)
        enddo
 !$omp section
        do i=1,k1
          isumd=isumd+d(i,icount)
        enddo
 !$omp section
        do i=1,k1
          isume=isume+e(i,icount)
        enddo
!$omp end sections
      elseif (mod(icount,10).eq.8) then
!$omp single
        do i=1,k1
          isuma=isuma+a(i,icount)
          isumb=isumb+b(i,icount)
          isumc=isumc+c(i,icount)
          isumd=isumd+d(i,icount)
          isume=isume+e(i,icount)
        enddo
!$omp end single
      elseif (mod(icount,10).eq.9) then
!$omp master
        do i=1,k1
          isuma=isuma+a(i,icount)
          isumb=isumb+b(i,icount)
          isumc=isumc+c(i,icount)
          isumd=isumd+d(i,icount)
          isume=isume+e(i,icount)
        enddo
!$omp end master
      elseif (mod(icount,10).eq.0) then
!$     if (OMP_GET_THREAD_NUM().eq.0) then
        do i=1,k1
          isuma=isuma+a(i,icount)
          isumb=isumb+b(i,icount)
          isumc=isumc+c(i,icount)
          isumd=isumd+d(i,icount)
          isume=isume+e(i,icount)
        enddo
!$     endif
      else
        print *,'error'
      endif

      icount = icount+1
      if (icount.gt.k2) return

      call sub_rec(icount,a,b,c,d,e,k1,k2)
      end subroutine
