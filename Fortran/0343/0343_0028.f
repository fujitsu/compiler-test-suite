          dimension dr01(1),dr02(1,2),c03(1,1,2),rc(4)
          double precision    dr01,dr02,drans,drcom,d00,ddf
          complex   c03,cans,ccom
c
          equivalence (cans,rc(1)),(ccom,rc(3))
c
31550     format( 3(/),1x,16hjustice + item +,17x,17hcomputed result +,
     *                21x,15hcompare value +,35x,10hdifference / )
          write(6,31550)
c
          r00 = 5.e-6
          d00 = 5.d-16
          iok = 0
          ier = 0
c
          item  = 1
          drans = -0.123456789012345d0
          write(1)            drans
          backspace 1
          read(1)             drcom
          go to   170
   10     continue
c
          item  = 2
          drans = 0.543210987654321d0
          write(1)            drans
          backspace 1
          read(1)             drcom
          go to   170
   20     continue
c
          item  = 3
          drans = 0.0d0
          write(1)            drans
          backspace 1
          read(1)             drcom
          ddf   = dabs(drans-drcom)
          go to   171
   30     continue
c
          item  = 4
          drans =   4.2389501476285506d74
          ii    = 1
          write(1)            drans
          backspace 1
          read(1)             dr01(ii)
          drcom = dr01(1)
          go to   170
   40     continue
c
          item  = 5
          drans =     -1.2684930575634978d-60
          ii    = 2
          write(1)            drans
          backspace 1
          read(1)             dr02(ii-1,ii)
          drcom = dr02(1,2)
          go to   170
   50     continue
c
          item  = 6
          cans  =      (-0.6687914,-0.6123005)
          ii    = 1
          write(2)            cans
          backspace 2
          read(2)             c03(1,1,2*ii)
          ccom  = c03(1,1,2)
          go to   180
   60     continue
c
          item  = 7
          cans  =      (0.7812059,0.0)
          write(2)            cans
          backspace 2
          read(2)             c03(1,1,1)
          ccom  = c03(1,1,1)
          rdf1  = abs((rc(1)-rc(3))/rc(3))
          rdf2  = abs(rc(2)-rc(4))
          go to   181
   70     continue
c
          item  = 8
          cans  = (0.0,0.1234567)
          write(2)            cans
          backspace 2
          read(2)             ccom
          rdf1  = abs(rc(1)-rc(3))
          rdf2  = abs((rc(2)-rc(4))/rc(4))
          go to   181
   80     continue
c
          item  = 9
          cans  = (0.2002003,0.6005007)
          write(2)            cans
          backspace 2
          read(2)             ccom
          go to   180
   90     continue
c
          item  = 10
          cans  = (-0.3824579,0.9754283)
          write(2)            cans
          backspace 2
          read(2)             ccom
          go to   180
  100     continue
c
          item  = 11
          drans = 0.11d0
          write(4)            drans
          backspace 4
          read(4)             drcom
          go to   170
  110     continue
c
          item  = 12
          drans = -0.12d0
          write(8)            drans
          backspace 8
          read(8)             drcom
          go to   170
  120     continue
c
          item  = 13
          number = 4
          drans = 0.103d10
          write(number)        drans
          backspace number
          read(number)         drcom
          go to   170
  130     continue
c
          item  = 14
          number = 8
          drans = -0.814d-10
          write(number)        drans
          backspace number
          read(number)         drcom
          go to   170
  140     continue
c
          item  = 15
          number = 4
          drans = 15.15d-2
          call sibj01 (number,drans,drcom)
          go to   170
  150     continue
c
          item  = 16
          number = 8
          drans = -16.168d-3
          call sibj01 (number,drans,drcom)
c
c
  170     continue
          ddf   = dabs((drans-drcom)/drcom)
  171     if(ddf-d00)         190,190,172
  172     write(6,31621)      item,drans,drcom,ddf
          ier = ier + 1
          go to   191
c
  180     continue
          rdf1  = abs((rc(1)-rc(3))/rc(3))
          rdf2  = abs((rc(2)-rc(4))/rc(4))
  181     if(rdf1-r00)        182,182,183
  182     if(rdf2-r00)        190,190,183
  183     write(6,31641)      item,rc(1),rc(3),rdf1,rc(2),rc(4),rdf2
          ier = ier + 1
          go to   191
c
  190     write(6,31500)      item
          iok = iok + 1
  191     go to (10,20,30,40,50,60,70,80,90,
     *           100,110,120,130,140,150,200),item
c
  200     continue
          stop
c
31500     format(1h0,1x,4h*ok*,4x,2h( ,i2,2h ) )
31621     format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),12x,d24.17,12x,d24.17,
     *              21x,d24.17 )
31641     format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),21x,e15.8,21x,e15.8,
     *              30x,e15.8 / 37x,e15.8,21x,e15.8,30x,e15.8 )
c
          end
c
      subroutine    sibj01 (idummy,d1,d2)
          double precision    d1,d2
c
          write(idummy)       d1
          backspace idummy
          read(idummy)        d2
          return
          end
