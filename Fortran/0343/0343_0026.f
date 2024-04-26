          dimension dr01(4),dr02(1,3),dr03(1,2,1)
          dimension c01(4),c02(1,2),c03(1,1,2)
          dimension rc(4)
c
          double precision    dr01,dr02,dr03,dr11,d00,ddf,dans,dcom
          complex             c01,c02,c03,c11,cans,ccom
c
          equivalence         (cans,rc(1)),(ccom,rc(3))
c
31550     format( 3(/),1x,16hjustice + item +,17x,17hcomputed result +,
     *            21x,15hcompare value +,35x,10hdifference / )
          write(6,31550)
c
          r00 = 5.e-6
          d00 = 5.d-16
          iok = 0
          ier = 0
c
          item = 1
          read(5,10)          dr11,(dr01(i),i=1,2)
   10     format(3d10.0)
          dans = dr11
          dcom = 0.1d0
          isw  = 1
          go to  100
   11     dans = dr01(1)
          dcom = 0.2d-3
          isw  = 2
          go to  100
   12     dans = dr01(2)
          dcom = -0.3d18
          isw  = 3
          go to  100
   19     continue
c
          item = 2
          read(5,20)          c11,(dr01(i),i=2,3)
   20     format(2f5.0,2d10.0)
          cans = c11
          ccom = (0.11,0.12)
          jsw  = 1
          go to  110
   21     dans = dr01(2)
          dcom = 0.4d-30
          isw  = 4
          go to  100
   22     dans = dr01(3)
          dcom = -0.5d31
          isw  = 5
          go to  100
   29     continue
c
          item = 3
          read(5,30)          c02(1,2),(dr01(2*i),i=1,2)
   30     format(2f5.0,2d10.0)
          cans = c02(1,2)
          ccom = (-0.21,0.22)
          jsw  = 2
          go to  110
   31     dans = dr01(2)
          dcom = 0.6d0
          isw  = 6
          go to  100
   32     dans = dr01(4)
          dcom = -0.7d-1
          isw  = 7
          go to  100
   39     continue
c
          item = 4
          read(5,40)          dr11,(c01(1*i+1),i=2,3)
   40     format(d10.0,4f5.0)
          dans = dr11
          dcom = 0.8d11
          isw  = 8
          go to  100
   41     cans = c01(3)
          ccom = (0.31,-0.32)
          jsw  = 3
          go to  110
   42     cans = c01(4)
          ccom = (-0.41,0.42)
          jsw  = 4
          go to  110
   49     continue
c
          item = 5
          read(5,50)          dr01(item-3),dr02(1,3),(dr03(1,i,1),i=1,2)
   50     format(4d10.0)
          dans = dr01(2)
          dcom = -0.9d10
          isw  = 9
          go to  100
   51     dans = dr02(1,3)
          dcom = 1.0d-1
          isw  = 10
          go to  100
   52     dans = dr03(1,1,1)
          dcom = 1.1d23
          isw  = 11
          go to  100
   53     dans = dr03(1,2,1)
          dcom = -1.2d0
          isw  = 12
          go to  100
   59     continue
c
          item = 6
          ii   = 2
          read(5,60)          c01(ii+2),c11,(c03(1,1,i),i=1,2)
   60     format(8f5.0)
          cans = c01(4)
          ccom = (0.51,0.52)
          jsw  = 5
          go to  110
   61     cans = c11
          ccom = (-0.61,-0.62)
          jsw  = 6
          go to  110
   62     cans = c03(1,1,1)
          ccom = (0.71,0.72)
          jsw  = 7
          go to  110
   63     cans = c03(1,1,2)
          ccom = (-0.81,-0.82)
          jsw  = 8
          go to  110
   69     continue
c
          item = 7
          ii   = 2
          read(5,70)          dr11,(dr01(i),i=1,ii)
   70     format(3d10.0)
          dans = dr11
          dcom = 1.3d20
          isw  = 13
          go to  100
   71     dans = dr01(1)
          dcom = -1.4d24
          isw  = 14
          go to  100
   72     dans = dr01(2)
          dcom = 1.5d-26
          isw  = 15
          go to  100
   79     continue
c
          item = 8
          ii   = 2
          read(5,80)          c11,(c01(i),i=1,ii)
   80     format(6f5.0)
          cans = c11
          ccom = (0.91,0.92)
          jsw  = 9
          go to  110
   81     cans = c01(1)
          ccom = (1.01,-1.02)
          jsw  = 10
          go to  110
   82     cans = c01(2)
          ccom = (-1.11,1.12)
          jsw  = 11
          go to  110
   89     continue
c
          item = 9
          read(5,90)          dr03,(c01(i),i=1,2)
   90     format(2d10.0,4f5.0)
          dans = dr03(1,1,1)
          dcom = 1.6d01
          isw  = 16
          go to  100
   91     dans = dr03(1,2,1)
          dcom = -1.7d-9
          isw  = 17
          go to  100
   92     cans = c01(1)
          ccom = (1.21,1.22)
          jsw  = 12
          go to  110
   93     cans = c01(2)
          ccom = (1.31,1.32)
          jsw  = 13
          go to  110
c
  100     continue
          ddf  = dabs((dans-dcom)/dcom)
          if(ddf-d00)                   101,101,102
  101     go to (11,12,103,22,103,32,103,
     *           41,51,52,53,103,71,72,103,91,92),isw
  102     write(6,31621)                item,dans,dcom,ddf
          ier = ier + 1
          go to  104
c
  103     write(6,31500)                item
          iok = iok + 1
  104     go to (19,29,39,49,59,69,79,89,120),item
c
  110     continue
          rdf1 = abs((rc(1)-rc(3))/rc(3))
          rdf2 = abs((rc(2)-rc(4))/rc(4))
          if(rdf1-r00)                  111,111,112
  111     if(rdf2-r00)                  113,113,112
  112     write(6,31641)                item,rc(1),rc(3),rdf1,rc(2),
     *                                  rc(4),rdf2
          ier = ier + 1
          go to  104
  113     go to (21,31,42,103,61,62,63,103,81,82,103,93,103),jsw
c
  120     continue
          stop
c
31500     format(1h0,1x,4h*ok*,4x,2h( ,i2,2h ) )
31621     format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),12x,d24.17,12x,d24.17,
     *                           21x,d24.17 )
31641     format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),21x,e15.8,21x,e15.8,
     *              30x,e15.8 / 37x,e15.8,21x,e15.8,30x,e15.8 )
c
c
          end
