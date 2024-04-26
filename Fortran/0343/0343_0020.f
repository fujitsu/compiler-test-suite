          dimension i01(5),i03(1,2,1)
          dimension r01(3),r02(1,2)
          dimension l01(3)
c
          logical   l01,l11,l12,l13,lans,lcom
c
31550 format( 3(/),1x,16hjustice + item +,17x,17hcomputed result +,
     *            21x,15hcompare value +,35x,10hdifference / )
          write(6,31550)
c
31500 format(1h0,1x,4h*ok*,4x,2h( ,i2,2h ) )
31601 format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),21x,i15,21x,i15 )
31611 format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),21x,e15.8,21x,e15.8,30x,
     *              e15.8 )
31701 format(1h0,1x,7h*error*,1x,2h( ,i2,2h ),33x,l3,33x,l3 )
c
          r00  = 5.e-6
          iok = 0
          ier = 0
c
          item = 1
          read(5,10)          i11,i12
   10     format(2i5)
          ians = i11
          icom = 123
          isw  = 1
          go  to  80
   11     ians = i12
          icom = 456
          isw  = 2
          go  to  80
   12     continue
c
          item = 2
          read(5,20)          r11,r12
   20     format(2f5.0)
          rans = r11
          rcom = 123.
          jsw  = 1
          go  to  90
   21     rans = r12
          rcom = 456.
          jsw  = 2
          go  to  90
   22     continue
c
          item = 3
          read(5,30)          l11,l12,l13
   30     format(3l5)
          lans = l11
          lcom = .true.
          ksw  = 1
          go  to  100
   31     lans = l12
          lcom = .false.
          ksw  = 2
          go  to  100
   32     lans = l13
          lcom = .true.
          ksw  = 3
          go  to  100
   33     continue
c
          item = 4
          read(5,40)          i11,i12,r11,r12,l11,l12
   40     format(2i5,2f5.0,2l5)
          ians = i11
          icom = 789
          isw  = 3
          go  to  80
   41     ians = i12
          icom = 234
          isw  = 4
          go  to  80
   42     rans = r11
          rcom = 789.
          jsw  = 3
          go  to  90
   43     rans = r12
          rcom = 234.
          jsw  = 4
          go  to  90
   44     lans = l11
          lcom = .false.
          ksw  = 4
          go  to  100
   45     lans = l12
          lcom = .true.
          ksw  = 5
          go  to  100
   46     continue
c
          item = 5
          read(5,50)          r11,r01(3),r02(1,2)
   50     format(3f5.0)
          rans = r11
          rcom = 567.
          jsw  = 5
          go  to  90
   51     rans = r01(3)
          rcom = 891.
          jsw  = 6
          go  to  90
   52     rans = r02(1,2)
          rcom = 345.
          jsw  = 7
          go  to  90
   53     continue
c
          item = 6
          i    = -1
          j    =  3
          read(5,60)          i11,i01(i+2),l11,l01(1*j)
   60     format(2i5,2l5)
          ians = i11
          icom = 567
          isw  = 5
          go  to  80
   61     ians = i01(1)
          icom = 891
          isw  = 6
          go  to  80
   62     lans = l11
          lcom = .true.
          ksw  = 6
          go  to  100
   63     lans = l01(3)
          lcom = .false.
          ksw  = 7
          go  to  100
   64     continue
c
          item = 7
          i    = 3
          read(5,70)          l11,l01(2),i11,i01(5),i01(i-1),i03(1,2,1)
   70     format(2l5,4i5)
          lans = l11
          lcom = .false.
          ksw  = 8
          go  to  100
   71     lans = l01(2)
          lcom = .true.
          ksw  = 9
          go  to  100
   72     ians = i11
          icom = 345
          isw  = 7
          go  to  80
   73     ians = i01(5)
          icom = 678
          isw  = 8
          go  to  80
   74     ians = i01(2)
          icom = 912
          isw  = 9
          go  to  80
   75     ians = i03(1,2,1)
          icom = 103
          isw  = 10
c
c
   80     continue
          if(ians-icom)                 81,82,81
   81     write(6,31601)                item,ians,icom
      ier=ier+1
          go  to  (12,12,46,46,64,64,110,110,110,110),isw
   82     go  to  (11,83,41,42,61,62,73,74,75,83),isw
   83     write(6,31500)                item
          iok = iok + 1
          go  to  (12,22,33,46,53,64,110),item
c
   90     continue
          rdf  = abs(rans-rcom)
          rdf  = rdf / abs(rcom)
   91     if(rdf-r00)                   93,93,92
   92     write(6,31611)                item,rans,rcom,rdf
          ier = ier + 1
          go  to  (22,22,46,46,53,53,53),jsw
   93     go  to  (21,83,43,44,51,52,83),jsw
c
  100     continue
          if(lans.and.lcom)             go  to  101
          if(lans.or.lcom)              go  to  102
  101     go  to  (31,32,83,45,83,63,83,71,72),ksw
  102     write(6,31701)                item,lans,lcom
          ier = ier + 1
          go  to  (33,33,33,46,46,64,64,110,110),ksw
c
  110     continue
          stop
          end
