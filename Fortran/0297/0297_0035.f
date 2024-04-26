      parameter(n=20)
      real * 8 a(n),b(n),c(n)
      data a/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data c/1,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,1/
      integer * 8 i

      do i=1,n
        s = a(i)
        if (c(i)  > 0   ) then
          s = a(i)+c(i)
         endif
          b(i) = b(i) + s
      enddo
      write(6,99) b
 99      format(5f10.5)
      stop
      end
