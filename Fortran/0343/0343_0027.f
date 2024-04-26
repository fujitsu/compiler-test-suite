          dimension dr01(10),dr02(2,3),dr03(2,1,2),dr10(5),dr20(3,4),
     *              dr30(2,3,2)
          dimension c01(5),c02(1,2),c03(2,3,1),c10(10),c20(2,3),
     *              c30(2,1,3),rc(4)
c
          double precision    dr01,dr02,dr03,dr10,dr20,dr30,
     *                        d00,ddf,dans,dcom
          complex             c01,c02,c03,c10,c20,c30,cans,ccom
c
          equivalence         (cans,rc(1)),(ccom,rc(3))
c
          r00 = 5.e-6
          d00 = 5.d-16
          iok = 0
          ier = 0
c
31550     format( 3(/),1x,16hjustice + item +,17x,17hcomputed result +,
     *                21x,15hcompare value +,35x,10hdifference / )
          write(6,31550)
c
          item = 1
          read(5,10)          dr01
   10     format(7d10.0/3d10.0)
          dcom = 0.501d0
        do 11 i=1,10
          dans = dr01(i)
          ddf  = dabs((dans-dcom)/dcom)
          if(ddf-d00)         11,11,110
   11     dcom = dcom+0.001d0
          go to  100
c
   19     item = 2
          read(5,20)          c01
   20     format(10f5.0)
          ccom = (1.0,2.0)
        do 22 i=1,5
          cans = c01(i)
          rdf1 = abs((rc(1)-rc(3))/rc(3))
          rdf2 = abs((rc(2)-rc(4))/rc(4))
          if(rdf1-r00)        21,21,120
   21     if(rdf2-r00)        22,22,120
   22     ccom = ccom+(2.0,2.0)
          go to  100
   29     continue
c
          item = 3
          read(5,30)          dr02
   30     format(6d10.0)
          dcom = -0.11d20
        do 31 j=1,3
        do 31 i=1,2
          dans = dr02(i,j)
          ddf  = dabs((dans-dcom)/dcom)
          if(ddf-d00)         31,31,110
   31     dcom = dcom-0.11d20
          go to  100
   39     continue
c
          item = 4
          read(5,40)          c02
   40     format(4f5.0)
          ccom = (-0.1,-0.2)
        do 42 j=1,2
        do 42 i=1,1
          cans = c02(i,j)
          rdf1 = abs((rc(1)-rc(3))/rc(2))
         rfdf2 = abs((rc(2)-rc(4))/rc(4))
          if(rdf1-r00)        41,41,120
   41     if(rdf2-r00)        42,42,120
   42     ccom = ccom-(0.2,0.2)
          go to  100
   49     continue
c
          item = 5
          read(5,50)          dr03
   50     format(4d10.0)
          dcom = 0.4d-16
        do 51 k=1,2
        do 51 j=1,1
        do 51 i=1,2
          dans = dr03(i,j,k)
          ddf  = dabs((dans-dcom)/dcom)
          if(ddf-d00)         51,51,110
   51     dcom = dcom+0.1d-16
          go to  100
   59     continue
c
          item = 6
          read(5,60)          c03
   60     format(12f5.0)
          ccom = (1.1,1.2)
        do 62 k=1,1
        do 62 j=1,3
        do 62 i=1,2
          cans = c03(i,j,k)
          rdf1 = abs((rc(1)-rc(3))/rc(3))
          rdf2 = abs((rc(2)-rc(4))/rc(4))
          if(rdf1-r00)        61,61,120
   61     if(rdf2-r00)        62,62,120
   62     ccom = ccom+(1.0,1.0)
          go to  100
   69     continue
c
          item = 7
          read(5,70)          dr10,c10
   70     format(5d10.0/14f5.0/6f5.0)
          dcom = 1.707d0
        do 71 i=1,5
          dans = dr10(i)
          ddf  = dabs((dans-dcom)/dcom)
          if(ddf-d00)         71,71,110
   71     dcom = dcom+1.d0
          ccom = (1.7,2.7)
        do 73 i=1,10
          cans = c10(i)
          rdf1 = abs((rc(1)-rc(3))/rc(3))
          rdf2 = abs((rc(2)-rc(4))/rc(4))
          if(rdf1-r00)        72,72,120
   72     if(rdf2-r00)        73,73,120
   73     ccom = ccom+(2.0,2.0)
          go to  100
   79     continue
c
          item = 8
          read(5,80)          dr20,c20
   80     format(7d10.0/5d10.0/12f5.0)
          dcom = -12.66d10
        do 81 j=1,4
        do 81 i=1,3
          dans = dr20(i,j)
          ddf  = dabs((dans-dcom)/dcom)
          if(ddf-d00)         81,81,110
   81     dcom = dcom+1.d10
          ccom = (-12.0,-11.0)
        do 83 j=1,3
        do 83 i=1,2
          cans = c20(i,j)
          rdf1 = abs((rc(1)-rc(3))/rc(3))
          rdf2 = abs((rc(2)-rc(4))/rc(4))
          if(rdf1-r00)        82,82,120
   82     if(rdf2-r00)        83,83,120
   83     ccom = ccom+(2.0,2.0)
          go to  100
   89     continue
c
          item = 9
          read(5,90)          c30,dr30
   90     format(12f5.0/7d10.0/5d10.0)
          ccom = (0.001,0.002)
        do 92 k=1,3
        do 92 j=1,1
        do 92 i=1,2
          cans = c30(i,j,k)
          rdf1 = abs((rc(1)-rc(3))/rc(3))
          rdf2 = abs((rc(2)-rc(4))/rc(4))
          if(rdf1-r00)        91,91,120
   91     if(rdf2-r00)        92,92,120
   92     ccom = ccom+(0.002,0.002)
          dcom = 1.0001d-1
        do 93 k=1,2
        do 93 j=1,3
        do 93 i=1,2
          dans = dr30(i,j,k)
          ddf  = dabs((dans-dcom)/dcom)
          if(ddf-d00)         93,93,110
   93     dcom = dcom+0.0001d-1
c
c
  100     continue
          write(6,31500)      item
          iok = iok + 1
  101     go to  (19,29,39,49,59,69,79,89,130),item
c
  110     continue
          write(6,31621)      item,dans,dcom,ddf
          ier = ier + 1
          go to  101
c
  120     continue
          write(6,31641)      item,rc(1),rc(3),rdf1,rc(2),rc(4),rdf2
          ier = ier + 1
          go to  101
c
  130     continue
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
