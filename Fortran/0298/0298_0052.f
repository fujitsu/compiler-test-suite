      real b(51),c(52)
      data b /51*1.0/
      data c /52*1.0/
      l=1
      m=2

      do 10 i=2,50
       l=l+1
       c(m)=c(m-1)+b(i)
        if(.true.) then
          m=m+1
        endif
       c(m)=m+l
   10 continue
      write(6,*) c
      end

