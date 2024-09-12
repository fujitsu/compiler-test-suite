      dimension a(10),b(10),c(10)
      logical*4 m(10)
      data a/1,2,3,4,5,6,7,8,9,10/
      data b/1,2,3,4,5,6,7,8,9,10/
      data c/1,2,3,4,5,6,7,8,9,10/
      data m/.true.,.false.,.true.,.false.,.true.,
     1       .true.,.false.,.true.,.false.,.true./
      do 10 i=1,10
        if (m(i)) then
          a(i) = b(i) + a(i)
        else
          a(i) = c(i) + a(i)
        endif
 10   continue
      write(6,*) a
      stop
      end
