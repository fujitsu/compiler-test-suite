      module mod
        real(8)::isuma=0.0d0,isumb=0.0d0,isumc=1.0d0,isumd=0.0d0,isume=0.0d0
      end

      program main
      call sub_main()
      print *,'pass'
      end program

      subroutine sub_main()
      use mod
      real(8),dimension(155,15)::a,b,c,d,e
      integer(8)::icount=1_8,k1=155_8,k2=15_8
!$omp paralleldo
      do j=1,k2
        do i=1,k1
          a(i,j)= 1.0d0
          b(i,j)=-1.0d0
          c(i,j)= 1.0d0
          d(i,j)=-1.0d0
          e(i,j)= 1.0d0
        enddo
        a(i-1,j)=a(k1,j)+1.0d0
        b(i-1,j)=b(k1,j)-1.0d0
        c(i-1,j)=c(k1,j)+1.0d0
        d(i-1,j)=d(k1,j)-1.0d0
        e(i-1,j)=e(k1,j)+1.0d0
      enddo

      call sub_rec(icount,a,b,c,d,e,k1,k2)
      if (isuma/=(k1+1.0d0)*k2) print *,'fail'
      if (isumb/=-(k1+1.0d0)*k2) print *,'fail'
      if (isumc/=2.0d0**k2) print *,'fail'
      if (isumd/=-(k1+1.0d0)*k2) print *,'fail'
      if (isume/=(k1+1.0d0)*k2) print *,'fail'
      end subroutine

      recursive subroutine sub_rec(icount,a,b,c,d,e,k1,k2)
      use mod
      integer(8)::icount,k1,k2
      real(8),dimension(k1,k2)::a,b,c,d,e

!$omp parallel
!$omp do reduction(+:isuma,isumb,isumd,isume),reduction(*:isumc), &
!$omp    firstprivate(b,d)
      do i=1,k1
        isuma=isuma+a(i,icount)
        isumb=isumb+b(i,icount)
        isumc=isumc*c(i,icount)
        isumd=isumd+d(i,icount)
        isume=isume+e(i,icount)
      enddo
!$omp enddo
!$omp endparallel

      icount = icount+1
      if (icount.gt.k2) return
      call sub_rec(icount,a,b,c,d,e,k1,k2)
      end subroutine
