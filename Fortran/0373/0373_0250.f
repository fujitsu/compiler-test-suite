      program main
      parameter(n=160)
      integer a(n),res1,res2
      integer b(n),c(n),d(n)
      data a,b,c/n*10,n*20,n*30/

      res1=0
      res2=0

      do 10 i=1,n
         res1=res1+a(i)
         res2=res2+a(i)
         d(i)=b(i)+c(i)
 10   continue

      write(6,*) res1
      write(6,*) res2
      write(6,*) d
      end
