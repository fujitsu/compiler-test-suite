      parameter(n=20)
      real * 8 a(n),b(n),c(n)
      data a/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data c/1,0,0,0,0,0,0,0,0,10,0,0,0,0,0,0,0,0,0,1/
      integer * 8 i

      do i=1,n
        if (c(i) .gt. 0  ) then
          a(i) = a(i)+b(i)
        else if (c(i).lt.10) then
          a(i) = a(i)-b(i)
        else
            b(i) = b(i) + 5
        endif
      enddo
      write(6,99) a
 99      format(5f10.5)
      stop
      end
