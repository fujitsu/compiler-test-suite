      real*4    a(10),b(10),c(10)
      logical*4 m(10)/5*.true.,5*.false./
      data  a/1,2,3,4,5,6,7,8,9,10/,b/11,12,13,14,15,16,17,18,19,20/
      data  n/10/,c/10*0/

      do 10 i=1,n
        if (m(i)) then
          s = a(i)
        else
          s = b(i)
        endif
        c(i) = s
 10   continue
      write(6,*) c
      stop
      end
