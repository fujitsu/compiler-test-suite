      program main
      real    a(10,10),b(10,10),c(10,10)
      integer ia(10),ib(10),ic(10)
      complex ca(10),cb(10),cc(10)
      data a/100*0./,b/100*1./,c/100*2./
      data ia/10*0/,ib/10*1/,ic/10*2/
      data ca/10*0./,cb/10*1./,cc/10*3./

      do 100 i=1,10
        ia(i) = ib(i) + ic(i)
        do 10 j=1,10
          a(i,j) = b(i,j) + c(i,j)
10      continue
        ca(i) = cb(i) + cc(i)
100   continue

      do 200 i=2,10
        ia(i) = ia(i-1) + ib(i)
        do 20 j=1,5
          a(i,j) = b(i,j) + c(i,j)
20      continue
        ca(i) = ca(i-1) + cb(i)
200   continue

      do 300 i=2,10
        ia(i) = ib(i) + ic(i)
        do 30 j=1,3
          a(i,j) = b(i,j) + c(i,j)
30      continue
        ca(i) = ca(i-1) + cc(i)
300   continue
      write(6,*) '  a = ',a
      write(6,*) ' ia = ',ia
      write(6,*) ' ca = ',ca
      stop
      end
