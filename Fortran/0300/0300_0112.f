      real*4  a(100),b(100),c(100)
      data  a/100*1./,b/100*2./,c/100*3./
      call init(a,b,c,100)
      write(6,1) c
 1            format(5f12.3)
c
      stop
      end
c
      subroutine init(a,b,c,ndim)
      real a(ndim),b(ndim),c(ndim),d(100)
c
      do 10 i=1,ndim
        b(i)=i*2.00
        c(i)=0.
        do 20 j=1,ndim
           c(i)=c(i)+b(j)
 20     continue
 10    continue

      write(6,*) b,c
      end
