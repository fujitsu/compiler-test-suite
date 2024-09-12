      program main
      parameter (n=2)
      real*8 a(n)
      integer(8)::k
      a=0
       k=loc(a)
        call sub1
        print *,'pass'
      contains
      subroutine sub1
        if (k/=loc(a)) print *,101,k,loc(a)
!$omp parallel do
        do j=1,n
        if (k/=loc(a)) print *,102,k,loc(a),j
          call sub2(j)
        enddo
!$omp end parallel do
      end subroutine
      subroutine sub2(j)
        if (k/=loc(a)) print *,103,k,loc(a),j
            a(1)=1
      end subroutine
      end
