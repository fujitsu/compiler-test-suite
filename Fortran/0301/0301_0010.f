      real*4  b(20)/20*0/,c(20)
      call init(b,c,20)
      stop
      end

      subroutine init(b,c,ndim)
      real b(ndim),c(ndim)
      do 10 i=1,ndim
         b(i)=i*2.00
         c(i)=0.
         do 20 j=1,ndim
            c(i)=c(i)+b(j)
 20            continue
 10            continue
      write(6,*) c
      end
