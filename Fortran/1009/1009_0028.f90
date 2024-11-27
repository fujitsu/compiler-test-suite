    Program main
      do i=1,256
        do j=1,128
          call sub00(i*(-1)+1,i,j)
        enddo
      enddo
      print *,'ok'
    end program

    subroutine sub00(i1,i2,i3)
      integer,dimension(i1:i2)::a,b
      a=0;b=0
      call sub01(a,i1,i2,i3,.true.)
      call sub02(b,i1,i2,i3,.false.)
      if (any(a/=b)) then
        write(6,*) "NG"
      else
        call sub03(a,b,i1,i2,i3)
      endif
    end subroutine

    subroutine sub01(a,i1,i2,i3,ll)
      integer,dimension(i1:i2)::a
      logical::ll
!$omp parallel if(ll)
!$omp do schedule(static)
      do j=i1,i2,i3
        a(j)=j
      enddo
!$omp enddo
!$omp endparallel
    end subroutine

    subroutine sub02(b,i1,i2,i3,ll)
      integer,dimension(i1:i2)::b
      logical::ll
!$omp parallel if(ll)
!$omp do schedule(static)
      do j=i1,i2,i3
        b(j)=j
      enddo
!$omp enddo
!$omp endparallel
    end subroutine

    subroutine sub03(a,b,i1,i2,i3)
      integer,dimension(i1:i2)::a,b
!$omp parallel
!$omp do schedule(static,1)
      do j=i1,i2,i3
        if (a(j)/=b(j)) write(6,*) "NG"
      enddo
!$omp enddo
!$omp endparallel
    end subroutine
