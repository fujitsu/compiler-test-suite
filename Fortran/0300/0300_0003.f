      real*8 e(1024),c(1024,100)
      data   c/102400*1.0/
      data   e/1024*0.0/

      do 10 k=1,256
      do 10 i=1,1024
      e(i)=c(i,1)
 10   continue
 99   continue
      write(6,*) e(1)

      end
