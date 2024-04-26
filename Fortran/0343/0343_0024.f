          dimension c01(2),cr(2)
          dimension dr01(3),dr02(1,2),dr03(3,1,2)
c
          complex             c01,c11,c12,c13,c00
          double precision    dr01,dr02,dr03,dr11,dr12,dr13,dran,drco,
     1                        d00 ,ddf ,dsw
          equivalence        (c00,cr(1))
c
          r00  = 5.e-6
          d00  = 5.d-16
          iok = 0
          ier = 0
c
31550 format( 3(/),1x,16hjustice + item +,17x,17hcomputed result +,
     *            21x,15hcompare value +,35x,10hdifference / )
          write(6,31550)
c
c
          r00  = 5.e-6
          d00  = 5.d-16
c
          item = 1
          read(5,10)          dr11,dr12
   10     format(2d10.0)
          dran = dr11
          drco = 501.d0
          isw  = 1
          go to  100
   11     dran = dr12
          drco = -502.d0
          isw  = 2
          go to  100
   19     continue
c
          item = 2
          read(5,20)          c11,c12
   20     format(4f5.0)
          c00  = c11
          rco1 = -401.
          rco2 = 201.
          jsw  = 1
          go to  110
   21     c00  = c12
          rco1 = -402.
          rco2 = 202.
          jsw  = 2
          go to  110
   29     continue
c
          item = 3
          read(5,30)          dr11,dr12,dr13
   30     format(3d10.0)
          dran = dr11
          drco = 503.d01
          isw  = 3
          go to  100
   31     dran = dr12
          drco = 504.d02
          isw  = 4
          go to  100
   32     dran = dr13
          drco = -505.d03
          isw  = 5
          go to  100
   39     continue
c
          item = 4
          read(5,40)          c11,c12,c13
   40     format(6f5.0)
          c00  = c11
          rco1 = 403.
          rco2 = 203.
          jsw  = 3
          go to  110
   41     c00  = c12
          rco1 = 404.
          rco2 = 204.
          jsw  = 4
          go to  110
   42     c00  = c13
          rco1 = 405.
          rco2 = 205.
          jsw  = 5
          go to  110
   49     continue
c
          item = 5
          read(5,50)          dr11,dr01(2),dr12
   50     format(3d10.0)
          dran = dr11
          drco = 506.d0
          isw  = 6
          go to  100
   51     dran = dr01(2)
          drco = 507.d0
          isw  = 7
          go to  100
   52     dran = dr12
          drco = 508.d0
          isw  = 8
          go to  100
   59     continue
c
          item = 6
          i    = 2
          read(5,60)          c11,c01(1*i),c12
   60     format(6f5.0)
          c00  = c11
          rco1 = 406.
          rco2 = 206.
          jsw  = 6
          go to  110
   61     c00  = c01(2)
          rco1 = -407.
          rco2 = -207.
          jsw  = 7
          go to  110
   62     c00  = c12
          rco1 = 408.
          rco2 = 208.
          jsw  = 8
          go to  100
   69     continue
c
          item = 7
          i    = -1
          read(5,70)          dr11,c01(i+2),dr12
   70     format(d10.0,2f5.0,d10.0)
          dran = dr11
          drco = -509.d0
          isw  = 9
          go to  100
   71     c00  = c01(1)
          rco1 = 409.
          rco2 = 209.
          jsw  = 9
          go to  110
   72     dran = dr12
          drco = 510.d0
          isw  = 10
          go to  100
   79     continue
c
          item = 8
          i    = 2
          read(5,80)          c11,dr01(2*i-1),c12
   80     format(2f5.0,d10.0,2f5.0)
          c00  = c11
          rco1 = -410.
          rco2 = -210.
          jsw  = 10
          go to  110
   81     dran = dr01(3)
          drco = 511.d0
          isw  = 11
          go to  100
   82     c00  = c12
          rco1 = 411.
          rco2 = 211.
          jsw  = 11
          go to  110
   89     continue
c
          item = 9
          i    = 1
          read(5,90)     dr11,dr02(1,2),dr03(3*i,1,2),dr12
   90     format(4d10.0)
          dran = dr11
          drco = 512.d10
          isw  = 12
          go to  100
   91     dran = dr02(1,2)
          drco = 513.d11
          isw  = 13
          go to  100
   92     dran = dr03(3,1,2)
          drco = 514.d12
          isw  = 14
          go to  100
   93     dran = dr12
          drco = 515.d13
          isw  = 15
c
c
  100     continue
          ddf  = dabs(dran-drco)
          dsw  = dabs(drco)
          ddf  = ddf / dsw
  101     if(ddf-d00)         103,103,102
  102     write(6,31621)      item,dran,drco,ddf
          ier = ier + 1
          go to (19,19,39,39,39,59,59,59,79,79,89,120,120,120,120),isw
  103     go to (11,104,31,32,104,51,52,104,71,104,82,91,92,93,104),isw
  104     write(6,31500)      item
          iok =iok + 1
          go to (19,29,39,49,59,69,79,89,120),item
c
  110     continue
          rdf1 = abs(cr(1)-rco1)
          rdf2 = abs(cr(2)-rco2)
          rsw1 = abs(rco1)
          rsw2 = abs(rco2)
          rdf1 = rdf1 / rsw1
          rdf2 = rdf2 / rsw2
          if(rdf1.le.r00.and.rdf2.le.r00)         go to 113
          write(6,31641)      item,cr(1),rco1,rdf1,cr(2),rco2,rdf2
          ier = ier + 1
          go to (29,29,49,49,49,69,69,69,79,89,89),jsw
  113     go to (21,104,41,42,104,61,62,104,72,81,104),jsw
c
  120     continue
          stop
c
c
31500 format(1h0,1x,4h*ok*,4x,2h( ,i2,2h ) )
31621 format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),12x,d24.17,12x,d24.17,
     *           21x,d24.17 )
31641 format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),21x,e15.8,21x,e15.8,30x,
     *           e15.8 / 37x,e15.8,21x,e15.8,30x,e15.8 )
c
c
          end
