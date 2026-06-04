      subroutine sub(a,b,c,n1,n2,n3)
      integer(1)::n1,n2,n3
      integer(8),dimension(n1,n2,n3)::a
      integer(4),dimension(n1,n2,n3)::b
      integer(2),dimension(n1,n2,n3)::c

!$omp workshare
   10 where(a.eq.1)
   20   b=1
   30   c=b
   40 elsewhere
   50   b=0
   60   c=b
   70 endwhere
!$omp end workshare

!$omp single
      if (any(a/=b).or.any(a/=c)) print *,'fail'
      b=-1;c=-1
!$omp end single

!$omp workshare
      forall (i=1:n1:1)
        forall (k=1:n3:1)
          where(a(i,:,k).eq.1)
            b(i,:,k)=1
            c(i,:,k)=b(i,:,k)
          elsewhere
            b(i,:,k)=0
            c(i,:,k)=b(i,:,k)
          endwhere
        endforall
      endforall
!$omp end workshare
      end subroutine

      integer(1),parameter::n1=3,n2=2,n3=3
      integer(8),dimension(n1,n2,n3)::a
      integer(4),dimension(n1,n2,n3)::b
      integer(2),dimension(n1,n2,n3)::c

!$omp parallel
!$omp workshare
      b=-1;c=-1
      a=reshape((/1,0,0,1,1,0,1,0,1,0,0,1,0,1,0,0,1,1/),(/n1,n2,n3/))
!$omp end workshare
      call sub(a,b,c,n1,n2,n3)
!$omp barrier
      if (any(a/=b).or.any(a/=c)) print *,'fail'
!$omp end parallel
      print *,'OK'
      end
