      program main
      real    a(10,10),b(10,10),c(10,10),d(10)
      integer ia(10),ib(10),ic(10)
      complex ca(10),cb(10),cc(10)
      data a/100*0./,b/100*1./,c/100*2./,d/10*1.5/
      data ia/10*0/,ib/10*1/,ic/10*2/
      data ca/10*0./,cb/10*1./,cc/10*3./,nx/10/

      do 100 i=1,10
        ia(i) = ib(i) + ic(i)
        do 10 j=1,1
          d(j) = j
10      continue
        ca(i) = cb(i) + cc(i)
100   continue

      do 300 i=2,9
        do 30 j=2,nx,2
          a(i,j) = b(i,j)
30      continue
        ia(i) = 0
        b(i,2) = a(i,5) - c(i+1,3)
300   continue
      write(6,*) '  a = ',a
      write(6,*) ' ia = ',ia
      write(6,*) ' ca = ',ca
      write(6,*) '  b = ',b
      stop
      end
