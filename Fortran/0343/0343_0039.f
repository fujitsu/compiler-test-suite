      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
      double precision   d9ans1,d9comp,d9dif1,d9dif2,d9dif3
      complex    c9ans1,c9comp,c9df9
      real       r9dif5,r9dif6,r9dif7,r9dif8,r9dif9,r9df10,r9df11
      real       r9dim1(2),r9dim2(2),r9df99(2)
      equivalence        (c9ans1,r9dim1(1)),(c9comp,r9dim2(1)),
     *                   (c9df9,r9df99(1))
      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
          common  /a/ i01
          common  /b/ i02,jb2
          common  /c/ i03,jc2,jc3(3)
          common  /d/ jd1,jd2,jd3,i04,d01(6)
          common  /e01/ i05 /e02/ e05
          common  /f01/ jf1,i06 /f02/ f06(2)
          common  /g01/ jg1,jg2,i07,jg4,g02(2) /g02/ g07(6)
          common  /h01/ jh1,i08,jh2,jh3(17) /h02/ h08(20)
          common  /o01/ i09 /o02/ o12 /o03/ o13 /o04/ o14 /o05/ o15
          common  /p01/ i10,jp1 /p02/ p12(2) /p03/ p13(2) /p04/ p14(2)
     1                          /p05/ p15(2)
          common  /q01/ jq1(6),i11 /q02/ q12(7) /q03/ q13(7)
     1                             /q04/ q14(7) /q05/ q15(7)
          common  /r01/ jr1,jr2,i12,jr4(27) /r02/ r12(30) /r03/ r13(30)
     1                        /r04/ r14(30) /r05/ r15(30)
          common  /s01/ i13 /s02/ s22 /s03/ s23 /s04/ s24 /s05/ s25
     1                      /s06/ s26 /s07/ s27 /s08/ s28 /s09/ s29
     2                      /s10/ s30 /s11/ s31 /s12/ s32 /s13/ s33
     3                      /s14/ s34 /s15/ s35 /s16/ s36 /s17/ s37
     4                      /s18/ s38 /s19/ s39 /s20/ s40
          common  /t01/ i14,jt1 /t02/ t22(2) /t03/ t23(2) /t04/ t24(2)
     1                          /t05/ t25(2) /t06/ t26(2) /t07/ t27(2)
     2                          /t08/ t28(2) /t09/ t29(2) /t10/ t30(2)
     3                          /t11/ t31(2) /t12/ t32(2) /t13/ t33(2)
     4                          /t14/ t34(2) /t15/ t35(2) /t16/ t36(2)
     5                          /t17/ t37(2) /t18/ t38(2) /t19/ t39(2)
     6                          /t20/ t40(2)
          common  /u01/ ju1,ju2,i15,ju3(5) /u02/ u22(8) /u03/ u23(8)
     1                        /u04/ u24(8) /u05/ u25(8) /u06/ u26(8)
     2                        /u07/ u27(8) /u08/ u28(8) /u09/ u29(8)
     3                        /u10/ u30(8) /u11/ u31(8) /u12/ u32(8)
     4                        /u13/ u33(8) /u14/ u34(8) /u15/ u35(8)
     5                        /u16/ u36(8) /u17/ u37(8) /u18/ u38(8)
     6                        /u19/ u39(8) /u20/ u40(8)
          common  /v01/ jv1,jv2,i16,jv3(47) /v02/ v22(50) /v03/ v23(50)
     1                        /v04/ v24(50) /v05/ v25(50) /v06/ v26(50)
     2                        /v07/ v27(50) /v08/ v28(50) /v09/ v29(50)
     3                        /v10/ v30(50) /v11/ v31(50) /v12/ v32(50)
     4                        /v13/ v33(50) /v14/ v34(50) /v15/ v35(50)
     5                        /v16/ v36(50) /v17/ v37(50) /v18/ v38(50)
     6                        /v19/ v39(50) /v20/ v40(50)
c
31500 format(1h0,1x,4h*ok*,4x,1h( ,i3,2h ))
31510 format(1h0,1x,7h*error*,1x,1h( ,i3,2h ))
31520 format(1h0,1x,4h*ok* )
31530 format(1h0,1x,7h*error* )
31550 format( // 19h + justice + item +,15x,19h+ computed result +,
     *       19x,17h+ compare value +,31x,14h+ difference + / )
      i9keyc=1
      if (i9keyc.eq.0) go to 32010
32000 write(6,31550)
32010 i9keyc = i9keyc + 1
      i9data=0
      i9errc=0
      i9ans1=0
c
31600 format(1h+, 9x,1h( ,i3,2h ),21x,i15,21x,i15 )
31610 format(1h+,9x,1h(, i3, 2h ),21x,e15.8,21x,e15.8,30x,e15.8 )
31620 format(1h+,9x,1h(, i3,2h ),12x,d24.17,12x,d24.17,21x,d24.17 )
31640 format(1h+,9x,1h(,i3,2h ),21x,e15.8,21x,e15.8,30x,e15.8 /
     *      37x,e15.8,21x,e15.8,30x,e15.8 )
31650 format(1h ,36x,e15.8,21x,e15.8,30x,e15.8 )
31700 format(1h+,9x,1h( ,i3,2h ),33x,l3,33x,l3 )
c
          i01    = 1
          i9comp = 1
      i9data = i9data + 1
      if (iabs(i01-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      write(6,31520)
23400 write(6,31600) i9data,i01,i9comp
23500 i9ans1=0
c
          i02    = 1+1
          i9comp = 2
      i9data = i9data + 1
      if (iabs(i02-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      write(6,31520)
23401 write(6,31600) i9data,i02,i9comp
23501 i9ans1=0
c
          jc2    = 1
          jc3(1) = 1
          jc3(2) = 1
          i03    = jc2+jc3(1)+jc3(2)
          i9comp = 3
      i9data = i9data + 1
      if (iabs(i03-i9comp).eq.0) go to 23302
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23502
      write(6,31530)
      go to 23402
23302 if( i9keyc.eq.1 ) go to 23502
      write(6,31520)
23402 write(6,31600) i9data,i03,i9comp
23502 i9ans1=0
c
          jd1    = 1
          jd2    = 2
          jd3    = 3
          i04    = jd1+jd2-jd3
          i9comp = 0
      i9data = i9data + 1
      if (iabs(i04-i9comp).eq.0) go to 23303
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23503
      write(6,31530)
      go to 23403
23303 if( i9keyc.eq.1 ) go to 23503
      write(6,31520)
23403 write(6,31600) i9data,i04,i9comp
23503 i9ans1=0
c
          i05    = 5
          i9comp = 5
      i9data = i9data + 1
      if (iabs(i05-i9comp).eq.0) go to 23304
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23504
      write(6,31530)
      go to 23404
23304 if( i9keyc.eq.1 ) go to 23504
      write(6,31520)
23404 write(6,31600) i9data,i05,i9comp
23504 i9ans1=0
c
          jf1    = 6
          i06    = 3
          i06    = jf1/i06*2
          i9comp = 4
      i9data = i9data + 1
      if (iabs(i06-i9comp).eq.0) go to 23305
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23505
      write(6,31530)
      go to 23405
23305 if( i9keyc.eq.1 ) go to 23505
      write(6,31520)
23405 write(6,31600) i9data,i06,i9comp
23505 i9ans1=0
c
          jg1    = 1
          jg2    = 2
          i07    = 3
          jg4    = 4
          i07    = i07*jg4 - jg1*jg2
          i9comp = 10
      i9data = i9data + 1
      if (iabs(i07-i9comp).eq.0) go to 23306
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23506
      write(6,31530)
      go to 23406
23306 if( i9keyc.eq.1 ) go to 23506
      write(6,31520)
23406 write(6,31600) i9data,i07,i9comp
23506 i9ans1=0
c
          jh1    = 11
          jh2    = 12
          jh3(1) = 18
          i08    = jh1+jh2-jh3(1)+3
          i9comp = 8
      i9data = i9data + 1
      if (iabs(i08-i9comp).eq.0) go to 23307
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23507
      write(6,31530)
      go to 23407
23307 if( i9keyc.eq.1 ) go to 23507
      write(6,31520)
23407 write(6,31600) i9data,i08,i9comp
23507 i9ans1=0
c
          i09    = 3
          i09    = i09**2
          if(i09-9)           15,10,15
   10     i9ans1 = 1
   15 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23000
      if(i9keyc.eq.1) go to 23100
      write(6,31510) i9data
      go to 23100
23000 if(i9keyc.eq.1) go to 23200
      write(6,31500) i9data
      go to 23200
23100 i9errc = i9errc + 1
23200 i9ans1=0
c
          jp1    = 10
          i10    = 10
          if(i10-jp1)         25,20,25
   20     i9ans1 = 1
   25 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23001
      if(i9keyc.eq.1) go to 23101
      write(6,31510) i9data
      go to 23101
23001 if(i9keyc.eq.1) go to 23201
      write(6,31500) i9data
      go to 23201
23101 i9errc = i9errc + 1
23201 i9ans1=0
c
          jq1(5) = 5
          jq1(6) = 6
          i11    = 11 - (jq1(5)+jq1(6))
          if(i11)             35,30,35
   30     i9ans1 = 1
   35 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23002
      if(i9keyc.eq.1) go to 23102
      write(6,31510) i9data
      go to 23102
23002 if(i9keyc.eq.1) go to 23202
      write(6,31500) i9data
      go to 23202
23102 i9errc = i9errc + 1
23202 i9ans1=0
c
          jr1    = 30
          jr2    = 5
          i12    = 12
          if(jr1/jr2*2-i12)   45,40,45
   40     i9ans1 = 1
   45 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23003
      if(i9keyc.eq.1) go to 23103
      write(6,31510) i9data
      go to 23103
23003 if(i9keyc.eq.1) go to 23203
      write(6,31500) i9data
      go to 23203
23103 i9errc = i9errc + 1
23203 i9ans1=0
c
          i13    = 13
          if(i13-13)          55,50,55
   50     i9ans1 = 1
   55 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23004
      if(i9keyc.eq.1) go to 23104
      write(6,31510) i9data
      go to 23104
23004 if(i9keyc.eq.1) go to 23204
      write(6,31500) i9data
      go to 23204
23104 i9errc = i9errc + 1
23204 i9ans1=0
c
          jt1    = 7
          i14    = 14
          if(jt1-i14/2)       65,60,65
   60     i9ans1 = 1
   65 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23005
      if(i9keyc.eq.1) go to 23105
      write(6,31510) i9data
      go to 23105
23005 if(i9keyc.eq.1) go to 23205
      write(6,31500) i9data
      go to 23205
23105 i9errc = i9errc + 1
23205 i9ans1=0
c
          ju1    = 3
          ju2    = 5
          i15    = 15
          if(ju1*ju2-i15)     75,70,75
   70     i9ans1 = 1
   75 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23006
      if(i9keyc.eq.1) go to 23106
      write(6,31510) i9data
      go to 23106
23006 if(i9keyc.eq.1) go to 23206
      write(6,31500) i9data
      go to 23206
23106 i9errc = i9errc + 1
23206 i9ans1=0
      if(i9keyc.eq.1) go to 25900
      write(6,31570)
25900 continue
c
          jv1    = 2
          jv2    = 4
          i16    = 16
          if(jv1**jv2-i16)    85,80,85
   80     i9ans1 = 1
   85 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23007
      if(i9keyc.eq.1) go to 23107
      write(6,31510) i9data
      go to 23107
23007 if(i9keyc.eq.1) go to 23207
      write(6,31500) i9data
      go to 23207
23107 i9errc = i9errc + 1
23207 i9ans1=0
c
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
