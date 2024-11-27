    program main
      integer(4),parameter::n1=127,n2=64
      integer(4),dimension(n1,n2)::a=0,b=0
!$omp parallel
      call sub0(a,n1,n2,i1,i2)
!$omp endparallel
      call sub0(b,n1,n2,j1,j2)
      call sub1(a,b,n1,n2)
      if (i1/=n1+1.or.i2/=n2+1) write(6,*) "NG"
      if (j1/=n1+1.or.j2/=n2+1) write(6,*) "NG"
     print *,'ok'
    end program

    subroutine sub0(a,n1,n2,i1,i2)
      integer(4),dimension(n1,n2)::a
!$omp do schedule(static,1),lastprivate(i1,i2)
      do i1=1,n1
         i2=1
        do while (i2.le.n2)
          a(i1,i2)=i1*10+i2
          i2=i2+1 
        enddo
      enddo
!$omp enddo
    end subroutine

    subroutine sub1(a,b,n1,n2)
      integer(4),dimension(n1,n2)::a,b
!$omp parallel do schedule(static),private(i1,i2)
      do i1=1,n1
         i2=1
        do while (i2.le.n2)
          if (a(i1,i2)/=b(i1,i2)) write(6,*) "NG"
          i2=i2+1 
        enddo
      enddo
    end subroutine
