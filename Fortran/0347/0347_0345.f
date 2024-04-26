      dimension a(10),b(10),c(10)
      real*8 t2(10)/1,2,3,4,5,6,7,8,9,10/,soc(10)
      integer j/10/
      do 1200 i = 1,10
        soc(j) =yeldpt(t2(j))
        if(soc(j).le.0) soc(j) = 0
        j =j-1
1200  continue
      write(6,*) soc
      end
      function yeldpt(t)
      real*8 t
      yeldpt=t**t
      return
      end
