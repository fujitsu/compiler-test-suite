      integer a(100,100),b(100,100)
      do 100 i=1,50
         call sub0(a,b)
         call sub1(a,b)
         call sub2(a,b)
         call sub3(a,b)
 100  continue
      write(6,*) a(5,5)
      write(6,*) b(5,5)
      end

      subroutine sub0(a,b)
      integer a(100,100),b(100,100)
      do 10 i=1,99
         a(5,i) = 1
 10   continue
      do 11 i=1,99
         b(5,i) = 1
 11   continue
      end

      subroutine sub1(a,b)
      integer a(100,100),b(100,100)
      N=99
      M=99
      do 10 i=1,N
         do 20 j=1,M
            a(i,j) = 1
            b(i,j) = 1
 20      continue
 10   continue
      do 11 i=1,N
         do 21 j=1,M
            a(i,j) = 1
            b(i,j) = 1
 21      continue
 11   continue
      end

      subroutine sub2(a,b)
      integer a(100,100),b(100,100)
      do 10 i=1,99
         do 11 l=1,99
            a(i,l)=1
            b(i,l)=1
 11      continue
 10   continue
      do 20 i=1,99
         a(i,1)=1
         b(i,1)=1
 20   continue
      end

      subroutine sub3(a,b)
      integer a(100,100),b(100,100)
      do 10 i=1,99
         do 11 l=1,99
            a(i,l)=1
            b(i,l)=1
 11      continue
 10   continue
      do 20 l=1,99
         a(1,l)=1
         b(1,l)=1
 20   continue
      end

      subroutine sub4(a,b)
      integer a(100,100),b(100,100)
      do 10 j=1,99
         do 11 i=1,99
            a(j,i)=1
            b(i,j)=1
 11      continue
 10   continue
      do 20 i=1,99
         do 21 j=1,99
            b(i,j)=1
            a(j,i)=1
 21      continue
 20   continue
      end

      subroutine sub5(a,b)
      integer a(100,100),b(100,100)
      do 100 j=1,99
         do 10 i=1,99
            do 11 k=1,99
               a(i,k)=1
               b(k,i)=1
 11         continue
 10      continue
         do 20 k=1,99
            b(k,i)=1
            a(i,k)=1
 20      continue
 100  continue
      end

      subroutine sub6(a,b)
      integer a(100,100),b(100,100)
      a=99
      b=99
      do 100 i=1,99
         do 10 j=1,99
            do 11 k=1,99
               a(j,k)=1
               b(k,j)=1
 11         continue
 10      continue
         do 20 k=1,99
            b(k,j)=1
            a(j,k)=1
 20      continue
 100  continue
      end

      subroutine sub7(a,b)
      integer a(100,100),b(100,100)
      a=10
      b=10
      do 100 i=1,99
         do 10 j=1,99
            do 11 k=1,99
               a(j,k)=1
               b(k,j)=1
 11         continue
 10      continue
         do 20 k=1,99
            b(k,j)=1
            a(j,k)=1
 20      continue
 100  continue
      end
