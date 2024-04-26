          dimension i01(3)
          dimension r01(2),r21(4),r02(1,2),r03(1,2,3)
          dimension l01(4),l02(3,3)
c
          logical   l01,l02,lans,lcom
          logical   l11
c
31550 format( 3(/),1x,16hjustice + item + 17x,17hcomputed result +,
     *            21x,15hcompare value +,35x,10hdifference / )
          write(6,31550)
c
c
          r00  = 5.e-6
          iok = 0
          ier = 0
c
          item = 1
          read(5,10)          i11,r02(1,2),(i01(i),i=1,3,2)
   10     format(i5,f5.0,2i5)
          ians = i11
          icom = 301
          isw  = 1
          go  to  90
   11     rans = r02(1,2)
          rcom = 301.
          jsw  = 1
          go  to  100
   12     ians = i01(1)
          icom = -302
          isw  = 2
          go  to  90
   13     ians = i01(3)
          icom = -303
          isw  = 3
          go  to  90
   19     continue
c
          item = 2
          read(5,20)          l11,(i01(i),i=1,2)
   20     format(l5,2i5)
          lans = l11
          lcom = .true.
          ksw  = 1
          go  to  110
   21     ians = i01(1)
          icom = 304
          isw  = 4
          go  to  90
   22     ians = i01(2)
          icom = -305
          isw  = 5
          go  to  90
   29     continue
c
          item = 3
          read(5,30)          r11,(l02(i,1),i01(i),i=2,3)
   30     format(f5.0,2(l5,i5))
          rans = r11
          rcom = -302.
          jsw  = 2
          go  to  100
   31     lans = l02(2,1)
          lcom = .false.
          ksw  = 2
          go  to  110
   32     ians = i01(2)
          icom = 306
          isw  = 6
          go  to  90
   33     lans = l02(3,1)
          lcom = .true.
          ksw  = 3
          go  to  110
   34     ians = i01(3)
          icom = 307
          isw  = 7
          go  to  90
   39     continue
c
          item = 4
          read(5,40)          i01(2),r02(1,2),(l01(2*i),i=1,2)
   40     format(i5,f5.0,2l5)
          ians = i01(2)
          icom = 308
          isw  = 8
          go  to  90
   41     rans = r02(1,2)
          rcom = 303.
          jsw  = 3
          go  to  100
   42     lans = l01(2)
          lcom = .true.
          ksw  = 4
          go  to  110
   43     lans = l01(4)
          lcom = .false.
          ksw  = 5
          go  to  110
   49     continue
c
          item = 5
          read(5,50)          (i01(i),l02(1,i),r03(1,2,i),i=1,3,2),r11
   50     format(2(i5,l5,f5.0),f5.0)
          ians = i01(1)
          icom = -309
          isw  = 9
          go  to  90
   51     lans = l02(1,1)
          lcom = .false.
          ksw  = 6
          go  to  110
   52     rans = r03(1,2,1)
          rcom = -304.
          jsw  = 4
          go  to  100
   53     ians = i01(3)
          icom = -310
          isw  = 10
          go  to  90
   54     lans = l02(1,3)
          lcom = .true.
          ksw  = 7
          go  to  110
   55     rans = r03(1,2,3)
          rcom = 305.
          jsw  = 5
          go  to  100
   56     rans = r11
          rcom = -306.
          jsw  = 6
          go  to  100
   59     continue
c
          item = 6
          read(5,60)          i,(r01(j),j=1,i)
   60     format(i5,2f5.0)
          ians = i
          icom = 2
          isw  = 11
          go  to  90
   61     rans = r01(1)
          rcom = 307.
          jsw  = 7
          go  to  100
   62     rans = r01(2)
          rcom = 308.
          jsw  = 8
          go  to  100
   69     continue
c
          item = 7
          read(5,70)          i,(l02(j,1),j=2,i)
   70     format(i5,2l5)
          ians = i
          icom = 3
          isw  = 12
          go  to  90
   71     lans = l02(2,1)
          lcom = .true.
          ksw  = 8
          go  to  110
   72     lans = l02(3,1)
          lcom = .false.
          ksw  = 9
          go  to  110
   79     continue
c
          item = 8
          read(5,80)          r11,(r01(i),r21(i+2),i=1,2)
   80     format(5f5.0)
          rans = r11
          rcom = 309.
          jsw  = 9
          go  to  100
   81     rans = r01(1)
          rcom = -310.
          jsw  = 10
          go  to  100
   82     rans = r21(3)
          rcom = 311.
          jsw  = 11
          go  to  100
   83     rans = r01(2)
          rcom = -312.
          jsw  = 12
          go  to  100
   84     rans = r21(4)
          rcom = 313.
          jsw  = 13
          go  to  100
c
c
31500 format(1h0,1x,4h*ok*,4x,2h( ,i2,2h ) )
31601 format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),21x,i15,21x,i15 )
31611 format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),21x,e15.7,21x,e15.7,30x,
     *              e15.8 )
31701 format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),33x,l3,33x,l3 )
c
c
   90     continue
          if(ians-icom)                 91,92,91
   91     write(6,31601)                item,ians,icom
          ier = ier + 1
          go  to  (19,19,19,29,29,39,39,49,59,59,69,79),isw
   92     go  to  (11,13,93,22,93,33,93,41,51,54,61,71),isw
   93     write(6,31500)                item
          iok = iok + 1
          go  to  (19,29,39,49,59,69,79,120),item
c
  100     continue
          rdf  = abs(rans-rcom)
          rdf2 = abs(rcom)
          rdf  = rdf / rdf2
          if(rdf-r00)                   103,103,102
  102     write(6,31611)                item,rans,rcom,rdf
          ier = ier + 1
          go  to  (19,39,49,59,59,59,69,69,120,120,120,120,120),jsw
  103     go  to  (12,31,42,53,56,93,62,93,81,82,83,84,93),jsw
c
  110     continue
          if(lans.and.lcom)             go  to  111
          if(lans.or.lcom)              go  to  112
  111     go  to  (21,32,34,43,93,52,55,72,93),ksw
  112     write(6,31701)                item,lans,lcom
          ier = ier + 1
          go  to  (29,39,39,49,49,59,59,79,79),ksw
c
  120     continue
          stop
          end
