      program ompv2
      integer(4),parameter::n=20
      integer(4),dimension(n)::a,b,c,d,y,z
      logical(4)::l=.false.

      y=(/20,19,18,17,16,15,14,13,12,11,10, 9, 8, 7, 6, 5, 4, 3, 2, 1/)
      z=(/((/ 1, 2, 3, 4, 5, 6, 7, 8, 9,10/),i=1,2)/)

      call sub(a,b,c,d,y,z,l,n)

      if (l) then
        print *,"fail"
      else
        print *,'pass'
      endif
      end

      subroutine sub(a,b,c,d,y,z,l,n)
      integer(4),dimension(n)::a,b,c,d,y,z
      logical(4)::l

!$omp parallel workshare
      a(1:n)=y(n:1:-1)
!$omp end parallel workshare

!$omp parallel workshare
      b(1:n:2)=z(1:n:2)
      b(2:n:2)=z(2:n:2)
!$omp end parallel workshare

!$omp parallel
!$omp workshare
      c=DIM(b,a)
!$omp end workshare
!$omp workshare
      d=DIM(a,b)
!$omp end workshare
!$omp end parallel

!$omp parallel
!$omp do reduction(.or.:l)
      do i=1,n
        if (c(i)/=0) l = l .or. .true.
      enddo
!$omp do reduction(.or.:l)
      do i=1,n
        if (i<=10) then
          if (d(i)/= 0) l = l .or. .true.
        else
          if (d(i)/=10) l = l .or. .true.
        endif
      enddo
!$omp end parallel

      if (l) print *,"fail"

      end
