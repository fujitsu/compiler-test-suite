    program main
      do i=1,16
        do j=1,32 
          call sub00(i*(-1)+1,i,j)
        enddo
      enddo
      print *,'ok'
    end program

    subroutine sub00(i1,i2,i3)
      integer,dimension(i1:i2,i1:i2)::a,b
      a=0;b=0
      call sub01(a,i1,i2,i3)
      call sub02(b,i1,i2,i3)
      if (any(a/=b)) then
print *,a
print *,b
        write(6,*) "NG"
      else
        call sub03(a,b,i1,i2,i3)
      endif
    end subroutine

    subroutine sub01(a,i1,i2,i3)
      integer,dimension(i1:i2,i1:i2)::a
!$omp parallel
!$omp do schedule(static)
      do j1=i1,i2,i3
!$omp parallel
!$omp do schedule(static)
      do j2=i1,i2,i3
        a(j2,j1)=j1+j2
      enddo
!$omp enddo
!$omp endparallel
      enddo
!$omp enddo
!$omp endparallel
    end subroutine

    subroutine sub02(b,i1,i2,i3)
      integer,dimension(i1:i2,i1:i2)::b
      do j1=i1,i2,i3
       do j2=i1,i2,i3
        b(j2,j1)=j1+j2
       enddo
      enddo
    end subroutine

    subroutine sub03(a,b,i1,i2,i3)
      integer,dimension(i1:i2,i1:i2)::a,b
!$omp parallel
!$omp do schedule(static)
      do j1=i1,i2,i3
!$omp parallel
!$omp do schedule(static)
       do j2=i1,i2,i3
        if (a(j1,j2)/=b(j1,j2)) write(6,*) "NG"
       enddo
!$omp enddo
!$omp endparallel
      enddo
!$omp enddo
!$omp endparallel
    end subroutine
