          dimension i01(10),i02(3,5)
          dimension r01( 4),r02(3,4),r03(3,2,2)
          dimension l01( 5),l02(3,3)
c
          logical   l01,l02,lsw
c
c
31550 format( 3(/),1x,16hjustice + item +,17x,17hcomputed result +,
     *            21x,15hcompare value +,35x,10hdifference / )
          write(6,31550)
31500 format(1h0,1x,4h*ok*,4x,2h( ,i2,2h ))
31601 format(1h0,1x,8h*error*  ,2h( ,i2,2h ),21x,i15,21x,i15 )
31611 format(1h0,1x,8h*error*  ,2h( ,i2,2h ),21x,e15.8,21x,e15.8,30x,
     *            e15.8 )
31701 format(1h0,1x,8h*error*  ,2h( ,i2,2h ),33x,l3,33x,l3 )
c
c
          r00 = 5.e-6
          iok = 0
          ier = 0
c
          item = 1
          read(5,10)          (i01(i),i=1,10)
   10     format(10i5)
        do  11  i=11,20
          if(i01(i-10).eq.i)            go  to  11
          write(6,31601)                item,i01(i-10),i
          ier = ier + 1
          go  to  12
   11     continue
          write(6,31500)                item
          iok = iok + 1
   12     continue
c
          item = 2
          read(5,20)          (r01(i),i=1,3),(i01(i),i=2,5)
   20     format(3f5.0,4i5)
        do  21  i=1,3
          rsw  = 100+i
          if(abs(r01(i)-rsw)/rsw-r00)   21,21,23
   21     continue
        do  22  i=2,5
          if(i01(i)-i)                  24,22,24
   22     continue
          write(6,31500)                item
          iok = iok + 1
          go  to  25
   23     rdf  = abs(r01(i)-rsw)/rsw
          write(6,31611)                item,r01(i),rsw,rdf
          ier = ier + 1
          go  to  25
   24     write(6,31601)                item,i01(i),i
          ier = ier + 1
   25     continue
c
          item = 3
          read(5,30)          (i01(i),r01(i),l01(i),i=1,3)
   30     format(3(i5,f5.0,l5))
        do  31  i=6,8
          if(i01(i-5).eq.i)             go  to  31
          write(6,31601)                item,i01(i-5),i
          ier = ier + 1
          go  to  35
   31     continue
        do  32  i=1,3
          rsw  = 200+i
          rdf  = abs(r01(i)-rsw)/rsw
          if(rdf.le.r00)                go  to  32
          write(6,31611)                item,r01(i),rsw,rdf
          ier = ier + 1
          go  to  35
   32     continue
          lsw  = .true.
        do  33  i=1,3
          if(l01(i).and.lsw)            go  to  33
          if(.not.l01(i).and..not.lsw)  go  to  33
          write(6,31701)                item,l01(i),lsw
          ier = ier + 1
          go  to  35
   33     lsw  = .not.lsw
          write(6,31500)                item
          iok = iok + 1
   35     continue
c
          item = 4
          read(5,40)          ((i02(i,j),i=1,2),j=1,2)
   40     format(4i5)
        do  41  j=1,2
        do  41  i=1,2
          isw  = -i*10-j
          if(i02(i,j).eq.isw)           go  to  41
          write(6,31601)                item,i02(i,j),isw
          ier = ier + 1
          go  to  42
   41     continue
          write(6,31500)                item
          iok = iok + 1
   42     continue
c
          item = 5
          read(5,50)          ((r02(i,j),l02(1*i,j),i=2,3),j=1,3)
   50     format(6(f5.0,l5))
          rsw  = 351.
          lsw  = .false.
        do  53  j=1,3
        do  53  i=2,3
          rdf  = abs(r02(i,j)-rsw)/rsw
          if(rdf.le.r00)                go  to  51
          write(6,31611)                item,r02(i,j),rsw,rdf
          ier = ier + 1
          go  to  54
   51     if(l02(i,j).and.lsw)          go  to  52
          if(.not.l02(i,j).and..not.lsw) go to  52
          write(6,31701)                item,l02(i,j),lsw
          ier = ier + 1
          go  to  54
   52     rsw  = rsw+1.
   53     lsw  = .not.lsw
          write(6,31500)                item
          iok = iok + 1
   54     continue
c
          item = 6
          read(5,60)          (((r03(i,j,k),i=1,2),j=1,2),k=1,2)
   60     format(8f5.0)
          rsw  =-411.
        do  61  k=1,2
        do  61  j=1,2
        do  61  i=1,2
          rdf  = abs((r03(i,j,k)-rsw)/rsw)
          if(rdf.le.r00)                go  to  61
          write(6,31611)                item,r03(i,j,k),rsw,rdf
          ier = ier + 1
          go  to  62
   61     rsw  = rsw-1.
          write(6,31500)                item
          iok = iok + 1
   62     continue
c
          item = 7
          read(5,70)          (i01(i),i=1,4,3),(r01(i),i=2,4,2)
   70     format(2i5,2f5.0)
        do  71  i=1,4,3
          isw  = 140+i
          if(i01(i).eq.isw)             go  to  71
          write(6,31601)                item,i01(i),isw
          ier = ier + 1
          go  to  73
   71     continue
        do  72  i=2,4,2
          rsw  = 240+i
          rdf  = abs(r01(i)-rsw)/rsw
          if(rdf.le.r00)                go  to  72
          write(6,31611)                item,r01(i),rsw,rdf
          ier = ier + 1
          go  to  73
   72     continue
          write(6,31500)                item
          iok = iok + 1
   73     continue
c
          item = 8
          read(5,80)          (r02(1,j),j=2,4,1)
   80     format(3f5.0)
        do  81  j=2,4,1
          rsw  = 100+j*10
          rdf  = abs(r02(1,j)-rsw)/rsw
          if(rdf-r00)                   81,81,82
   81     continue
          write(6,31500)                item
          iok = iok + 1
          go  to  83
   82     write(6,31611)                item,r02(1,j),rsw,rdf
          ier = ier + 1
   83     continue
c
          item = 9
          read(5,90)          (i02(i,2),l02(2,i),i=1,3,2)
   90     format(2(i5,l5))
          lsw  = .true.
        do  92  i=1,3,2
          isw  = i*10+2
          if(i02(i,2)-isw)              93,91,93
   91     if(l02(2,i).and.lsw)          go  to  92
          if(l02(2,i).or.lsw)           go  to  94
   92     lsw  = .not.lsw
          write(6,31500)                item
          iok = iok + 1
          go  to  95
   93     write(6,31601)                item,i02(i,2),isw
          ier = ier + 1
          go  to  95
   94     write(6,31701)                item,l02(2,i),lsw
          ier = ier + 1
   95     continue
c
          item = 10
          read(5,100)         (r03(i,1,2),i=1,4,2)
  100     format(2f5.0)
        do  101  i=1,4,2
          rsw  = i*100+12
          rdf  = abs(r03(i,1,2)-rsw)/rsw
          if(rdf-r00)                   101,101,102
  101     continue
          write(6,31500)                item
          iok = iok + 1
          go  to  103
  102     write(6,31611)                item,r03(i,1,2),rsw,rdf
          ier = ier + 1
  103     continue
c
          item = 11
          read(5,110)         (l01(i),i02(1,i),i=1,5,2),
     1                        ((r03(i,1,k),i=1,2),k=1,2)
  110     format(3(l5,i5),4f5.0)
          lsw  = .false.
        do  112  i=1,5,2
          if(l01(i).and.lsw)            go  to  111
          if(l01(i).or.lsw)             go  to  114
  111     isw  = 150+i
          if(i02(1,i)-isw)              115,112,115
  112     lsw  = .not.lsw
        do  113  k=1,2
        do  113  i=1,2
          rsw  = 1000*i+100+10*k
          rdf  = abs(r03(i,1,k)-rsw)/rsw
          if(rdf-r00)                   113,113,116
  113     continue
          write(6,31500)                item
          iok = iok + 1
          go  to  117
  114     write(6,31701)                item,l01(i),lsw
          ier = ier + 1
          go  to  117
  115     write(6,31601)                item,i02(1,i),isw
          ier = ier + 1
          go  to  117
  116     write(6,31611)                item,r03(i,1,k),rsw,rdf
          ier = ier + 1
  117     continue
c
          stop
          end
