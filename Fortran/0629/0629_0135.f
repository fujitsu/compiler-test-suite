      parameter(n=100)
      real,dimension(n)::a,b
      integer,dimension(n)::k
      do i=1,n
        a(i)=i
        b(i)=i-1
        k(i)=i
      enddo
      call sub(n,a,b,k)
      end

      subroutine sub(n,a,b,k)
      real,dimension(n)::a,b
      integer,dimension(n)::k

      do i=1,n
         a(k(i))=a(k(i))+b(i)
      enddo
      print *,a
      print *,"CHECK Parallellization"
      end
