      program main
      real    a(10),b(10),c(10),d(10)
      integer ia(10),ib(10),ic(10)
      data a/10*0./,b/10*1./,c/10*2./,d/10*3./

      do 10 i=1,10
        a(i) = b(i) + c(i)
10    continue

      do 20 i=2,10
        a(i) = a(i-1) + b(i)
20    continue

      do 30 i=2,10
        a(i) = a(i-1) + b(i)
        c(i) = sqrt(d(i))
30    continue
      write(6,*) ' a = ',a,' c = ',c
      stop
      end
