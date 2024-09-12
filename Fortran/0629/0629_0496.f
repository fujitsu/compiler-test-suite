      real * 4 a(10),b(10)
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/1,2,3,4,5,6,7,8,9,10/
      s = 0
      do i=1,10
       s = s + a(i)
       s = s + b(i)
      enddo
      write(6,*) s
      stop
      end 
