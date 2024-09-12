      program main
      complex   ca(10),cb(10),cc(10),cs1
      complex*16 cda(10)
      data      ca/10*(1,1)/,cb/10*(2,2)/,cc/10*(4,4)/
      do 10 i=1,10
        cs1 = ca(i)/cb(i)
        cda(i) = cs1 + csqrt(cc(i))
  10  continue
      write(6,*) cda
      do 20 i=1,10
        cs1 = ca(i)
        cs2 = cb(i)
        cs3 = cs1 + cs2
        cda(i) = cs3 + csqrt(cc(i))
  20  continue
      write(6,*) cda
      stop
      end
