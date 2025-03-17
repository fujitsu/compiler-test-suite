      module mod
        integer(8)::isuma=0_8,isumb=0_8,isumc=0_8,isumd=0_8,isume=0_8
      end

      program main
      call sub_main()
      print *,'pass'
      end program

      subroutine sub_main()
      use mod
      integer(4),dimension(5000,30)::a,b,c,d,e
      integer(4)::icount=1,k1=5000,k2=30
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
!$omp endparallel
      if (isuma/=(k1+1)*k2) write(6,*) "NG"
      if (isumb/=-(k1+1)*k2) write(6,*) "NG"
      if (isumc/=(k1+1)*k2) write(6,*) "NG"
      if (isumd/=-(k1+1)*k2) write(6,*) "NG"
      if (isume/=(k1+1)*k2) write(6,*) "NG"
      end subroutine

      recursive subroutine sub_rec(icount,a,b,c,d,e,k1,k2)
      use mod
      integer(4),dimension(k1,k2)::a,b,c,d,e
      integer(4)::icount,k1,k2

!$omp do reduction(+:isuma,isumb,isumc,isumd,isume)
        do i=1,k1
          isuma=isuma+a(i,icount)
          isumb=isumb+b(i,icount)
          isumc=isumc+c(i,icount)
          isumd=isumd+d(i,icount)
          isume=isume+e(i,icount)
        enddo
!$omp end do

      icount = icount+1
      if (icount.gt.k2) return

      call sub_rec(icount,a,b,c,d,e,k1,k2)
      end subroutine
