      call sub1()
      call sub2()
      stop
      end
      subroutine sub1
      parameter(n=20)
      real * 16 a(n),b(n),c(n)
      real * 4 l(n)
      data a/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data c/1,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,1/
      data l/1,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,1/
      integer * 8 i

      do i=1,n
        if (l(i)  > 0   ) then
          a(i) = a(i)+c(i)
        else
          b(i) = b(i)+c(i)
         endif
      enddo
      write(6,*) ' test-1 '
      write(6,99) a
      write(6,99) b
 99   format(5f10.5)
      end
      subroutine sub2
      parameter(n=20)
      complex  a(n),b(n),c(n)
      real * 4 l(n)
      data a/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data c/1,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,1/
      data l/1,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,1/
      integer * 8 i

      do i=1,n
        if (l(i)  > 0   ) then
          a(i) = a(i)+c(i)
        else
          b(i) = b(i)+c(i)
         endif
      enddo
      write(6,*) ' test-1 '
      write(6,99) a
      write(6,99) b
 99   format(5f10.5)
      end
