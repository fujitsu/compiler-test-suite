          dimension i01(10),i02(2,2),i03(2,1,3),i11(3),i13(2,2,2)
          dimension r01( 5),r02(2,2),r03(1,2,3),r11(2),r21(5),r13(2,1,3)
          dimension l01( 5),l02(1,3),l11(2)
c
          logical   l01,l02,l11,lsw
c
c
31550 format( 3(/),1x,16hjustice + item +,17x,17hcomputed result +,
     *            21x,15hcompare value +,35x,10hdifference / )
          write(6,31550)
31500 format(1h0,1x,4h*ok*,4x,2h( ,i2,2h ))
31601 format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),21x,i15,21x,i15 )
31611 format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),21x,e15.8,21x,e15.8,30x,
     *            e15.8 )
31701 format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),33x,l3,33x,l3 )
c
c
          r00 = 5.e-6
          iok = 0
          ier = 0
c
          item = 1
          read(5,10)          r01
   10     format(5f5.0)
        do  11  i=1,5
          rsw  = 50+i
          rdf  = abs(r01(i)-rsw)/rsw
          if(rdf-r00)                   11,11,12
   11     continue
          write(6,31500)                item
          iok = iok + 1
          go  to  13
   12     write(6,31611)                item,r01(i),rsw,rdf
          ier = ier + 1
   13     continue
c
          item = 2
          read(5,20)          i01
   20     format(10i5)
        do  21  i=1,10
          if(i01(i)-i)                  22,21,22
   21     continue
          write(6,31500)                item
          iok = iok + 1
          go  to  23
   22     write(6,31601)                item,i01(i),i
          ier = ier + 1
   23     continue
c
          item = 3
          read(5,30)          l01
   30     format(5l5)
          lsw  = .true.
        do  31  i=1,5
          if(l01(i).and.lsw)            go  to  31
          if(l01(i).or.lsw)             go  to  32
   31     lsw  = .not.lsw
          write(6,31500)                item
          iok = iok + 1
          go  to  33
   32     write(6,31601)                item,l01(i),lsw
          ier = ier + 1
   33     continue
c
          item = 4
          read(5,40)          r02
   40     format(4f5.0)
        do  41  j=1,2
        do  41  i=1,2
          rsw  = -i*100-j
          rdf  = abs((r02(i,j)-rsw)/rsw)
          if(rdf.le.r00)                go  to  41
          write(6,31611)                item,r02(i,j),rsw,rdf
          ier = ier + 1
          go  to  42
   41     continue
          write(6,31500)                item
          iok = iok + 1
   42     continue
c
          item = 5
          read(5,50)          i02
   50     format(4i5)
        do  51  j=1,2
        do  51  i=1,2
          isw  = -i*10-j
          if(i02(i,j).eq.isw)           go  to  51
          write(6,31601)                item,i02(i,j),isw
          ier = ier + 1
          go  to  52
   51     continue
          write(6,31500)                item
          iok = iok + 1
   52     continue
c
          item = 6
          read(5,60)          l02
   60     format(3l5)
          lsw  = .false.
        do  61  j=1,3
        do  61  i=1,1
          if(l02(i,j).and.lsw)          go  to  61
          if(l02(i,j).or.lsw)           go  to  62
   61     lsw  = .not.lsw
          write(6,31500)                item
          iok = iok + 1
          go  to  63
   62     write(6,31701)                item,l02(i,j),lsw
          ier = ier + 1
   63     continue
c
          item = 7
          read(5,70)          r03
   70     format(6f5.0)
          rsw  = 60.1
        do  71  k=1,3
        do  71  j=1,2
        do  71  i=1,1
          rdf  = abs(r03(i,j,k)-rsw)/rsw
          if(rdf-r00)                   71,71,72
   71     rsw  = rsw+0.1
          write(6,31500)                item
          iok = iok + 1
          go  to  73
   72     write(6,31611)                item,r03(i,j,k),rsw,rdf
          ier = ier + 1
   73     continue
c
          item = 8
          read(5,80)          i03
   80     format(6i5)
          isw  = 9991
        do  81  k=1,3
        do  81  j=1,1
        do  81  i=1,2
          if(i03(i,j,k)-isw)            81,81,82
   81     isw  = isw+1
          write(6,31500)                item
          iok = iok + 1
          go  to  83
   82     write(6,31601)                item,i03(i,j,k),isw
          ier = ier + 1
   83     continue
c
          item = 9
          read(5,90)          i11,r11
   90     format(3i5,3f5.0)
          isw  = -1
        do  91  i=1,3
          if(i11(i).eq.isw)             go  to  91
          write(6,31601)                item,i11(i),isw
          ier = ier + 1
          go  to  93
   91     isw  = isw-1
          rsw  = -0.01
        do  92  i=1,2
          rdf  = abs((r11(i)-rsw)/rsw)
          if(rdf.le.r00)                go  to  92
          write(6,31611)                item,r11(i),rsw,rdf
          ier = ier + 1
          go  to  93
   92     rsw  = rsw-0.01
          write(6,31500)                item
          iok = iok + 1
   93     continue
c
          item = 10
          read(5,100)         r21,l11
  100     format(5f5.0,5l5)
        do  101  i=1,5
          rsw  = i*10
          rdf  = abs(r21(i)-rsw)/rsw
          if(rdf-r00)                   101,101,103
  101     continue
          lsw  = .true.
        do  102  i=1,2
          if(l11(i).and.lsw)            go  to  102
          if(l11(i).or.lsw)             go  to  104
  102     lsw  = .not.lsw
          write(6,31500)                item
          iok = iok + 1
          go  to  105
  103     write(6,31611)      item,r21(i),rsw,rdf
          ier = ier + 1
          go  to  105
  104     write(6,31701)      item,l11(i),lsw
          ier = ier + 1
  105     continue
c
          item = 11
          read(5,110)         i02,r02
  110     format(4i5,4f5.0)
        do  112  j=1,2
        do  112  i=1,2
          isw  = i*1000+j*10
          if(i02(i,j)-isw)              113,111,113
  111     rsw  = isw*0.001
          rdf  = abs(r02(i,j)-rsw)/rsw
          if(rdf-r00)                   112,112,114
  112     continue
          write(6,31500)                item
          iok = iok + 1
          go  to  115
  113     write(6,31601)                item,i02(i,j),isw
          ier = ier + 1
          go  to  115
  114     write(6,31611)                item,r02(i,j),rsw,rdf
          ier = ier + 1
  115     continue
c
          item = 12
          read(5,120)         r13,i13
  120     format(6f5.0,8i5)
          rsw  = 511.
        do  121  k=1,3
        do  121  j=1,1
        do  121  i=1,2
          rdf  = abs(r13(i,j,k)-rsw)/rsw
          if(rdf-r00)                   121,121,123
  121     rsw  = rsw+1.
          isw  = 121
        do  122  k=1,2
        do  122  j=1,2
        do  122  i=1,2
          if(i13(i,j,k)-isw)            124,122,124
  122     isw  = isw+1
          write(6,31500)                item
          iok = iok + 1
          go  to  125
  123     write(6,31611)                item,r13(i,j,k),rsw,rdf
          ier = ier + 1
          go  to  125
  124     write(6,31601)                item,i13(i,j,k),isw
          ier = ier + 1
  125     continue
          stop
          end
