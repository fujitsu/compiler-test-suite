    program main
      integer(4),parameter::x=2000
      call sub0(x)
      print *,'ok'
    end program

    subroutine sub0(x)
      integer(4)::x
      integer(4),dimension(x)::a,b
      a=0;b=0
!$omp parallel
      call sub1(a,x)
!$omp endparallel
      call sub1(b,x)
      if (any(a/=b)) then
        write(6,*) "NG"
      else
        call sub2(a,b,x)
      endif
    end subroutine

    subroutine sub1(a,x)
      integer(4)::x
      integer(4),dimension(x)::a
!$Omp do schedule(static),private(i,j,iflg)
      do i=3,x
        iflg=0
        do j=2,i-1
          if (mod(i,j)==0) then
             iflg=1
             exit
          endif
        enddo
        if (iflg==0) a(i)=i
      enddo
!$omp enddo
    end subroutine

    subroutine sub2(a,b,x)
      integer(4)::x
      integer(4),dimension(x)::a,b
!$omp parallel
!$omp do schedule(static)
      do i=x,1,-1
        if (a(i)/=b(i)) write(6,*) "NG"
      enddo
!$omp enddo
!$omp endparallel
    end subroutine
