      real      a(10),b(10),c(10)
      complex   c1(10),c2(10)
      data c1/(1,1),3*(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9)/
      data c2/(1,2),3*(3,3),(5,4),(5,5),(6,7),(3,7),(8,9),(9,9)/
      data a/10*1./
      data b/10*2./
      data c/10*0./
      do 10 i=1,10
        if ( c1(i) .ne. c2(i) ) go to 10
          c(i) = a(i) +  b(i)
  10  continue
      write(6,*) c
      stop
      end
