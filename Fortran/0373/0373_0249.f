      program main
      parameter(n=160)
      integer a(n),res1
      integer b(n),c(n),d(n)
      data a,b/n*10,n*20/

      res1=0

      do 10 i=1,n
         res1=res1+a(i)
         c(i)=a(i)+b(i)
         d(i)=a(i)+c(i)
 10   continue

      write(6,*) res1
      write(6,*) c
      write(6,*) d
      end
