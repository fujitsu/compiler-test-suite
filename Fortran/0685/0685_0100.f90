      common /com/ i,j,no
      integer,parameter::n=10
      integer,dimension(n,n)::a,b,c,d
      no = 17
!$omp parallel do private(/com/)
      do i = 1,n
        do j=1,n
          a(j,i) = j+i*10
          b(j,i) = i+j*10
        enddo
      enddo
!$omp endparallel do
      call sub ()
      print *,'pass'
    contains

    subroutine sub()
      common /com/ i,j,no
!$omp parallel default(shared),firstprivate(/com/)
!$omp single
      do j=1,n
        write(no,*) (a(i,j),b(i,j),i=1,n)
      enddo
!$omp end single
!$omp end parallel

      rewind (no)
      read(no,*) ((c(i,j),d(i,j),i=1,n),j=1,n)
      if (any(a/=c).or.any(b/=d)) print *,"fail"
      close (no,status='delete')
    end subroutine

    end
