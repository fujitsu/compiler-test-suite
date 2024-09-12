       program main
       real * 4 a(30) , b(30) , c(30)
       integer * 4 n , m , nn , x,z
       data n/1/,  m/10/, nn/1/ ,x/1/,z/1/
       data a/1.,2.,3.,4.,5.,6.,7.,8.,9.,10.,20*1./
       data b/1.,1.,1.,1.,2.,2.,2.,2.,1.,1.,20*2./
       data c/2.,2.,2.,2.,1.,1.,1.,1.,2.,2.,20*3./
       n = 1
       m = n + 9
       nn = 1

       do 10 i=n,m,nn
         a(i) = a(i) + 1.
         b(i) = a(i) + 1.
         c(i) = b(i) + a(i)
         do 20 j=1,10
          a(j) = a(j+n)
          b(j) = b(j+m)
          c(j) = c(j+nn)
 20      continue
 10    continue
        write(6,*) ' a = ' , a
        write(6,*) ' b = ' , b
        write(6,*) ' c = ' , c

       do 30 i=n,m,nn
         do 40 j=1,10
          a(j) = a(j+x)
          b(j) = b(j+z)
 40      continue
 30    continue
        write(6,*) ' a = ' , a
        write(6,*) ' b = ' , b
        stop
        end
