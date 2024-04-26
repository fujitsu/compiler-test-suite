          dimension dr1(3),dr2(5,4),dr3(2,3,2)
          dimension c01(4),c02(3,3),cr(2)
c
          double precision    dr1,dr2,dr3,d00,dsw,ddf
          complex             c01,c02,c00
          equivalence         (c00,cr(1))
c
31550 format( 3(/),1x,16hjustice + item +,17x,17hcomputed result +,
     *            21x,15hcompare value +,35x,10hdifference / )
          write(6,31550)
31500 format(1h0,1x,4h*ok*,4x,2h( ,i2,2h ))
31641 format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),21x,e15.8,21x,e15.8,30x,
     *            e15.8 / 37x,e15.8,21x,e15.8,30x,e15.8 )
31621 format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),21x,d15.8,21x,d15.8,30x,
     *            d15.8 )
c
c
          d00 = 5.d-16
          r00 = 5.e-5
          iok = 0
          ier = 0
c
          item = 1
          read(5,10)          (dr1(i),i=1,3)
   10     format(3d10.0)
          dsw  = 10101.d0
        do  11  i=1,3
          ddf  = dabs(dr1(i)-dsw)/dsw
          if(ddf-d00)                   11,11,12
   11     dsw  = dsw+1.d0
          write(6,31500)                item
          iok = iok + 1
          go  to  13
   12     write(6,31621)                item,dr1(i),dsw,ddf
          ier = ier + 1
   13     continue
c
          item = 2
          read(5,20)                    (c01(i),i=1,2)
   20     format(4f5.0)
        do  21  i=1,2
          rsw2 = i*2
          rsw1 = rsw2-1
          c00  = c01(i)
          rdf1 = abs(cr(1)-rsw1)/rsw1
          rdf2 = abs(cr(2)-rsw2)/rsw1
          if(rdf1.le.r00.and.rdf2.le.r00)    go to 21
          write(6,31641)           item,cr(1),rsw1,rdf1,cr(2),rsw2,rdf2
          ier = ier + 1
          go  to  22
   21     continue
          write(6,31500)                item
          iok = iok + 1
   22     continue
c
          item = 3
          read(5,30)          (dr1(i),c01(i),i=2,3)
   30     format(2(d10.0,2f5.0) )
        do  33  i=2,3
          dsw  = 20200+i
          ddf  = dabs(dr1(i)-dsw)/dsw
          if(ddf-d00)                   31,31,34
   31     rsw1 = i*2
          rsw2 = rsw1+1
          c00  = c01(i)
          rdf1 = abs(cr(1)-rsw1)/rsw1
          rdf2 = abs(cr(2)-rsw2)/rsw2
          if(rdf1-r00)                  32,32,35
   32     if(rdf2-r00)                  33,33,35
   33     continue
          write(6,31500)                item
          iok = iok + 1
          go  to  36
   34     write(6,31621)                item,dr1(i),dsw,ddf
          ier = ier + 1
          go  to  36
   35     write(6,31641)      item,cr(1),rsw1,rdf1,cr(2),rsw2,rdf2
          ier = ier + 1
   36     continue
c
          item = 4
          read(5,40)          ((dr2(i,j),i=1,2),j=1,2)
   40     format(4d10.0)
          dsw  = 1.00014d0
        do  41  j=1,2
        do  41  i=1,2
          ddf  = dabs(dr2(i,j)-dsw)/dsw
          if(ddf-d00)                   41,41,42
   41     dsw  = dsw+1.d0
          write(6,31500)                item
          iok = iok + 1
          go  to  43
   42     write(6,31621)                item,dr2(i,j),dsw,ddf
          ier = ier + 1
   43     continue
c
          item = 5
          read(5,50)          ((c02(i,j),i=2,3),j=1,2)
   50     format(8f5.0)
        do  51  j=1,2
        do  51  i=2,3
          rsw1 = i*10+j
          rsw2 = -rsw1
          c00  = c02(i,j)
          rdf1 = abs(cr(1)-rsw1)
          rdf2 = abs((cr(2)-rsw2)/rsw2)
          if(rdf1.le.r00.and.rdf2.le.r00)         go  to  51
          write(6,31641)      item,cr(1),rsw1,rdf1,cr(2),rsw2,rdf2
          ier = ier + 1
          go  to  52
   51     continue
          write(6,31500)                item
          iok = iok + 1
   52     continue
c
          item = 6
          read(5,60)          ((dr2(i,2*j),i=4,5),j=1,2)
   60     format(4d10.0)
          dsw  = 50004.d0
        do  61  j=1,2
        do  61  i=4,5
          ddf  = dabs(dr2(i,2*j)-dsw)/dsw
          if(ddf-d00)                   61,61,62
   61     dsw  = dsw+5.d0
          write(6,31500)                item
          go  to  63
   62     write(6,31621)                item,dr2(i,2*j),dsw,ddf
          ier = ier + 1
   63     continue
c
          item = 7
          read(5,70)          (((dr3(i,j,k),i=1,2),j=2,3),k=1,1)
   70     format(4d10.0)
        do  71  k=1,1
        do  71  j=2,3
        do  71  i=1,2
          dsw  = i*100+j*10+k
          ddf  = dabs(dr3(i,j,k)-dsw)/dsw
          if(ddf-d00)                   71,71,72
   71     continue
          write(6,31500)                item
          iok = iok + 1
          go  to  73
   72     write(6,31621)                item,dr3(i,j,k),dsw,ddf
          ier = ier + 1
   73     continue
c
          item = 8
          read(5,80)          (dr1(i),i=1,2,1)
   80     format(2d10.0)
          dsw  = 1210.121d0
        do  81  i=1,2,1
          dsw  = dsw+1.d0
          ddf  = dabs(dr1(i)-dsw)/dsw
          if(ddf-d00)                   81,81,82
   81     continue
          write(6,31500)                item
          iok = iok + 1
          go  to  83
   82     write(6,31621)                item,dr1(i),dsw,ddf
          ier = ier + 1
   83     continue
c
          item = 9
          read(5,90)          (c01(i),i=2,4,2)
   90     format(4f5.0)
        do  91  i=2,4,2
          rsw1 = 90+i
          rsw2 = 91+i
          c00  = c01(i)
          rdf1 = abs(cr(1)-rsw1)/rsw1
          rdf2 = abs(cr(2)-rsw2)/rsw2
          if(rdf1.le.r00.and.rdf2.le.r00)         go  to  91
          write(6,31641)      item,cr(1),rsw1,rdf1,cr(2),rsw2,rdf2
          ier = ier + 1
          go  to  92
   91     continue
          write(6,31500)                item
          iok = iok + 1
   92     continue
c
          item = 10
          read(5,100)         (dr2(2,j),j=1,3,2)
  100     format(2d10.0)
        do  101  j=1,3,2
          dsw  =-111011*j
          ddf  = dabs((dr2(2,j)-dsw)/dsw)
          if(ddf-d00)                   101,101,102
  101     continue
          write(6,31500)                item
          iok = iok + 1
          go  to  103
  102     write(6,31621)                item,dr2(2,j),dsw,ddf
          ier = ier + 1
  103     continue
c
          item = 11
          read(5,110)         (c02(i,1),i=1,3,2)
  110     format(4f5.0)
          rsw1 = -11.
        do  111  i=1,3,2
          rsw2 = rsw1-1.
          c00  = c02(i,1)
          rdf1 = abs((cr(1)-rsw1)/rsw1)
          rdf2 = abs((cr(2)-rsw2)/rsw2)
          if(rsw1.le.r00.and.rsw2.le.r00)     go to 111
          write(6,31641)      item,cr(1),rsw1,rdf1,cr(2),rsw2,rdf2
          ier = ier + 1
          go  to  112
  111    rsw1 = rsw1 -2.
          write(6,31500)                item
          iok = iok + 1
  112     continue
c
          item = 12
          read(5,120)         (dr1(i),i=1,2),((c02(i,j),i=1,1),j=2,3),
     1                        ((dr3(i,1,j),i=1,2),j=1,2)
  120     format(2d5.0,4f5.0,4d5.0)
          dsw  = 1.d-1
        do  121  i=1,2
          ddf  = dabs(dr1(i)-dsw)/dsw
          if(ddf-d00)                   121,121,125
  121     dsw  = dsw+1.d-1
          rsw1 = 301.
        do  123  j=2,3
        do  123  i=1,1
          rsw2 = rsw1+1.
          c00  = c02(i,j)
          rdf1 = abs(cr(1)-rsw1)/rsw1
          rdf2 = abs(cr(2)-rsw2)/rsw2
          if(rdf1-r00)                  122,122,126
  122     if(rdf2-r00)                  123,123,126
  123     rsw1 = rsw1+2.
        do  124  j=1,2
        do  124  i=1,2
          ddf  = dabs(dr3(i,1,j)-dsw)/dsw
          if(ddf-d00)                   124,124,127
  124     dsw  = dsw+1.d-1
          write(6,31500)                item
          go  to  128
  125     write(6,31621)                item,dr1(i),dsw,ddf
          ier = ier + 1
          go  to  128
  126     write(6,31641)      item,cr(1),rsw1,rdf1,cr(2),rsw2,rdf2
          ier = ier + 1
          go  to  128
  127     write(6,31621)                item,dr3(i,1,j),dsw,ddf
          ier = ier + 1
  128     continue
          stop
          end
