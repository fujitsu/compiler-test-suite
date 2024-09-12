      program main
      real    a(10),b(10),c(10),d(10)
      integer ia(10),ib(10),ic(10)
      complex ca(10),cb(10),cc(10)
      data a/10*0./,b/10*1./,c/10*2./,d/10*3./
      data ia/10*0/,ib/10*1/,ic/10*2/
      data ca/10*0./,cb/10*1./,cc/10*3./

      do 100 j=1,10
        ia(j) = ib(j) + ic(j)
        do 10 i=1,10
          a(i) = b(i) + c(i)
10      continue
        ca(j) = cb(j) + cc(j)
100   continue

      do 200 j=2,10
        ia(j) = ia(j-1) + ic(j)
        do 20 i=1,10
          a(i) = b(i) * c(i)
20      continue
        ca(j) = ca(j-1) + cb(j)
200   continue

      do 300 j=2,10
        ia(j) = ib(j) + ic(j)
        do 30 i=1,10
          a(i) = b(i) + c(i)
30      continue
        ca(j) = ca(j-1) + cc(j)
300   continue
      write(6,*) '  a = ',a
      write(6,*) ' ia = ',ia
      write(6,*) ' ca = ',ca
      stop
      end
