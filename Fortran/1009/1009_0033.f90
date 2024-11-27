      program aaa
      integer(kind=4),dimension(31,31)::a
      integer(kind=4),dimension(31,15)::b
      integer(kind=4),dimension(31,15)::c1,c2,c3,c4
      a=reshape((/(i,i=1,31*31)/),(/31,31/))
      b=reshape((/(i,i=1,31*15)/),(/31,15/))
!$omp parallel
      call sub1(31,31,15,a,31,b,31,c1,31,0)
      call sub1(31,31,15,a,31,b,31,c2,31,1)
!$OMP endparallel
      call sub2(31,31,15,a,31,b,31,c3,31,0)
      call sub2(31,31,15,a,31,b,31,c4,31,1)
      if (any(c1/=c3)) write(6,*) "NG"
      if (any(c2/=c4)) write(6,*) "NG"
      print *,'ok'
      end

      subroutine sub1(m,n,l,a,ia,b,ib,c,ic,jt)
      integer(kind=4)::a(ia,*),b(ib,*),c(ic,*)
!
      if(jt.ne.0)go to 50
!$omp do schedule(static),private(i,k)
      do 10 j=1,l
      do 10 i=1,m
      c(i,j)=0.
      do 10 k=1,n
   10 c(i,j)=c(i,j)+a(i,k)*b(k,j)
!$omp enddo
      return
   50 continue
!$omp do schedule(static),private(i,k)
   20 do 30 j=1,l
      do 30 i=1,m
      c(i,j)=0.
      do 30 k=1,n
   30 c(i,j)=c(i,j)+a(k,i)*b(k,j)
!$omp enddo
      return
      end

      subroutine sub2(m,n,l,a,ia,b,ib,c,ic,jt)
      integer(kind=4)::a(ia,*),b(ib,*),c(ic,*)
!
      if(jt.ne.0)go to 50
      do 10 j=1,l
      do 10 i=1,m
      c(i,j)=0.
      do 10 k=1,n
   10 c(i,j)=c(i,j)+a(i,k)*b(k,j)
      return
   50 continue
   20 do 30 j=1,l
      do 30 i=1,m
      c(i,j)=0.
      do 30 k=1,n
   30 c(i,j)=c(i,j)+a(k,i)*b(k,j)
      return
      end
