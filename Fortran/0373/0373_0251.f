      program main
      parameter(n=160)
      integer a(n),res1,res2,res3,res4
      data a/n*10/

      res1=0
      res2=0
      res3=0
      res4=0

      do 10 i=1,n
         res1=res1+a(i)
         res2=res2+a(i)
         res3=res3+a(i)
         res4=res4+a(i)
 10   continue

      write(6,*) res1
      write(6,*) res2
      write(6,*) res3
      write(6,*) res4
      end