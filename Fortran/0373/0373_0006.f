      real*4 a(10),b(10),c(10),d(10)
      integer*4 i
      data a/11,21,31,41,51,61,71,81,9,10/
      data c/59874.1406,1.31881574e+09,2.90488498e+13,6.39843474e+17,
     1       1.40934904e+22,3.10429778e+26,6.83767114e+30,
     1       1.50609726e+35,8103.08350,22026.4648/
      data d/59874.1406,4,2.90488498e+13,16,
     1       1.40934904e+22,36,6.83767114e+30,
     1       64,8103.08350,100/

      do i=1,10
          b(i)=exp(a(i))
      enddo
      write(6,*) b
      write(6,*) c
      do i=1,10
        if (mod(i,2)==1) then
          b(i)=exp(a(i))
        else
          b(i)=i*i
        endif
      enddo
      write(6,*) b
      write(6,*) d
      stop
      end
