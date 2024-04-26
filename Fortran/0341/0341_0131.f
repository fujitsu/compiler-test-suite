      real a(10,10,10)
      real b(10,10)
      do 10 i=1,10
      do 10 j=1,10
      do 10 k=1,10
        a(k,j,i) = k
10    continue
      call sub(a)
      call sub2(a,1)
      call sub3(a,1,10)
      call sub4(b,1,10)
      print '(f11.8)',a
      end
c
      subroutine sub(a)
      real a(10,10,*)
      do 10 i=1,10
      do 10 j=1,10
      do 10 k=1,10
        a(i,j,k) = a(i,j,k)+1
10    continue
      return
      end
c
      subroutine sub2(a,m)
      real a(m:10,m:10,m:*)
      do 10 i=m,10
      do 10 j=m,10
      do 10 k=m,10
        a(i,j,k) = a(i,j,k)+1
10    continue
      return
      end
c
      subroutine sub3(a,m,n)
      real a(m:n,m:n,m:*)
      do 10 i=m,n
      do 10 j=m,n
      do 10 k=m,n
        a(i,j,k) = a(i,j,k)+1
10    continue
      return
      end
c
      subroutine sub4(b,m,n)
      real b(m:n,m:*)
      do 10 i=1,10
      do 10 j=1,10
        b(i,j) = 1
      do 10 k=1,10
        b(i,j) = b(i,j)+1
10    continue
      return
      end
