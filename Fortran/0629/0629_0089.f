      program main
      integer a(100,100),b,c

      call sub1(b)

      do j=1,100
         do i=1,100
            a(i,j)=b
            c=a(i,j)+i
         enddo
      enddo

      call sub2(a,c,i)

      print*, c,a(1,1),a(100,100)

      end

      subroutine sub1(b)
      integer b
      b = 2
      return
      end

      subroutine sub2(a,c,i)
      integer a(100,100),c,i

      a(1,10) = i
      a(100,10) = c

      return
      end
