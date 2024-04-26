      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      complex    c9ans1,c9comp,c9df9
      real       r9dif5,r9dif6,r9dif7,r9dif8,r9dif9,r9df10,r9df11
      real       r9dim1(2),r9dim2(2),r9df99(2)
      equivalence        (c9ans1,r9dim1(1)),(c9comp,r9dim2(1)),
     *                   (c9df9,r9df99(1))
          dimension    c2dim2(2,2),c2dim1(5)
          complex  c2dim2,c2dim1,c10001,c10002
          double precision  dlett1,dlett2,dlett3,dlett4
          data   c2dim2/4*(0.0,0.0)/,c2dim1/5*(0.0,0.0)/,
     1           dlett1,dlett2/8habcdefgh,5habcde/,ilett1,ilett2/1ha,
     2           4habcd/,rlett1,rlett2/ 2hxy,3hxyz/
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
31640 format(1h+,9x,1h(,i3,2h ),21x,e15.8,21x,e15.8,30x,e15.8 /
     *      37x,e15.8,21x,e15.8,30x,e15.8 )
31650 format(1h ,36x,e15.8,21x,e15.8,30x,e15.8 )
c
          c10001=(23.0,14.3)
          c2dim2(2,2)=(23.5,-13.2 )
          c10002=(5.0,12.4)
          call  sncj01(c10001, conjg(c10002)+c10001,c2dim2(2,2),c9ans1)
          c9comp=(74.5,3.0)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24500 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24550
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-06) 24500,24500,24600
24550 if (abs(r9df99(lq))-5.0e-06) 24500,24600,24600
24500 continue
      if (i9keyc.eq.1) go to 24700
      write(6,31520)
      go to 24650
24600 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24700
      write(6,31530)
24650 write(6,31640) i9data,(r9dim1(lq),r9dim2(lq),r9df99(lq),lq=1,2)
24700 c9ans1=(0.0,0.0)
c
          c2dim2(1,1)=(1.5,-1.5)
          c2dim1(3)=(1.5,1.5)
          call  sncj02(c2dim2(1,1),c2dim1,c9ans1)
          c9comp=(4.5,0.0)
      i9data=i9data+1
      c9df9=c9comp-c9ans1
      do 24501 lq=1,2
      if (r9dim2(lq).eq.0.0) go to 24551
      if (abs(r9df99(lq))-abs(r9dim2(lq))*5.0e-06) 24501,24501,24601
24551 if (abs(r9df99(lq))-5.0e-06) 24501,24601,24601
24501 continue
      if (i9keyc.eq.1) go to 24701
      write(6,31520)
      go to 24651
24601 i9errc=i9errc+1
      if(i9keyc.eq.1) go to 24701
      write(6,31530)
24651 write(6,31640) i9data,(r9dim1(lq),r9dim2(lq),r9df99(lq),lq=1,2)
24701 c9ans1=(0.0,0.0)
c
          i9ans1=0
          call   sncj03(8habcdefgh,5habcde,1ha,dlett3,dlett4,ilett3)
          if(dlett3.eq. dlett1)                    i9ans1=i9ans1+1
          if(dlett4.eq. dlett2)                    i9ans1=i9ans1+1
          if(ilett3.eq.ilett1)                     i9ans1=i9ans1+1
          i9comp=3
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      write(6,31520)
23400 write(6,31600) i9data,i9ans1,i9comp
23500 i9ans1=0
c
          i9ans1=0
          call   sncj04(4habcd,2hxy,3hxyz,ilett4,rlett3,rlett4)
          if(rlett3.eq. rlett1)                     i9ans1=i9ans1+1
          if(rlett4.eq. rlett2)                     i9ans1=i9ans1+1
          if(ilett4.eq.ilett2)                      i9ans1=i9ans1+1
          i9comp=3
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      write(6,31520)
23401 write(6,31600) i9data,i9ans1,i9comp
23501 i9ans1=0
c
          i9ans1=0
          i10001=1
          call  sncj05(i10001,i10002)
          i9ans1=i9ans1+i10002
          i10001=2
          call  sncj05(i10001,i10002)
          i9ans1=i9ans1+i10002
          i10001=3
          call  sncj05(i10001,i10002)
          i9ans1=i9ans1+i10002
          i9comp=111
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23302
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23502
      write(6,31530)
      go to 23402
23302 if( i9keyc.eq.1 ) go to 23502
      write(6,31520)
23402 write(6,31600) i9data,i9ans1,i9comp
23502 i9ans1=0
c
          i9ans1=0
          do 15  iindex=1,5
          i10001=iindex
          call  sncj06(i10001,i10002)
   15     i9ans1=i9ans1+i10002
          i9comp=12345
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23303
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23503
      write(6,31530)
      go to 23403
23303 if( i9keyc.eq.1 ) go to 23503
      write(6,31520)
23403 write(6,31600) i9data,i9ans1,i9comp
23503 i9ans1=0
c
          i9ans1=0
          do  25  index=1,7
          i10001=index
          call  sncj07(i10001,i10002)
   25     i9ans1=i9ans1+i10002
          i9comp=1111111
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23304
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23504
      write(6,31530)
      go to 23404
23304 if( i9keyc.eq.1 ) go to 23504
      write(6,31520)
23404 write(6,31600) i9data,i9ans1,i9comp
23504 i9ans1=0
c
          i10001=0
          call  sncj08(i10001,i9ans1)
          i9comp=3
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23305
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23505
      write(6,31530)
      go to 23405
23305 if( i9keyc.eq.1 ) go to 23505
      write(6,31520)
23405 write(6,31600) i9data,i9ans1,i9comp
23505 i9ans1=0
c
          i10001=0
          call  sncj10(i10001,i9ans1)
          i9comp=13
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23306
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23506
      write(6,31530)
      go to 23406
23306 if( i9keyc.eq.1 ) go to 23506
      write(6,31520)
23406 write(6,31600) i9data,i9ans1,i9comp
23506 i9ans1=0
c
          i10001=0
          call  sncj21(i10001,i9ans1)
          i9comp=23
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23307
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23507
      write(6,31530)
      go to 23407
23307 if( i9keyc.eq.1 ) go to 23507
      write(6,31520)
23407 write(6,31600) i9data,i9ans1,i9comp
23507 i9ans1=0
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      subroutine sncj01(c10001,c10002,c10003,c10004)
          complex c10001,c10002,c10003,c10004
          c10004=c10001+c10002+c10003
          return
          end

      subroutine sncj02(c2dim4,c2dim1,c1val1)
          complex    c2dim4(4),c2dim1(5),c1val1
          c1val1=c2dim4(1)*c2dim1(3)
          return
          end

      subroutine sncj03(dlett1,dlett2,ilett1,dlett3,dlett4,ilett3)
          double precision  dlett1,dlett2,dlett3,dlett4
          dlett3=dlett1
          dlett4=dlett2
          ilett3=ilett1
          return
          end

      subroutine sncj04(ilett2,rlett1,rlett2,ilett4,rlett3,rlett4)
          rlett3=rlett1
          rlett4=rlett2
          ilett4=ilett2
          return
          end

      subroutine sncj05(i10001,i10002)
          go to (10,20,30),i10001
   10     i10002=1
          do 11  i100a=1,5
          i10003=5
   11     continue
          return
   20     i10002=10
          return
   30     i10002=100
          return
          end

      subroutine sncj06(i10001,i10002)
          i10002=1
          do 10  iindex=1,5
          i10003=iindex
          if(i10001.ne.1) go to 11
          return
   11     i10002=i10002+10
          if(i10001.ne.2) go to 12
          return
   12     i10002=i10002+100
          if(i10001.ne.3) go to 13
          return
   13     i10002=i10002+1000
          if(i10001.ne.4) go to 14
          return
   14     i10002=i10002+10000
          return
   10     continue
          i10002=i10002+10000
          return
          end

      subroutine sncj07(i10001,i10002)
          i10002=1.
          if(i10001.eq.1)  return
          i10002=10
          if(i10001.eq.2)  return
          i10002=100
          if(i10001.eq.3)  return
          i10002=1000
          if(i10001.eq.4)  return
          i10002=10000
          if(i10001.eq.5)  return
          i10002=100000
          if(i10001.eq.6)  return
          i10002=1000000
          if(i10001.eq.7)  return
          i10002=10000000
          return
          end

      subroutine sncj08(i10001,i10002)
          i10001=i10001+1
          call  sncj09(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj09(i10001,i10002)
          i10002=i10001+1
          return
          end

      subroutine sncj10(i10001,i10002)
          i10001=i10001+1
          call  sncj11(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj11(i10001,i10002)
          i10001=i10001+1
          call  sncj12(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj12(i10001,i10002)
          i10001=i10001+1
          call  sncj13(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj13(i10001,i10002)
          i10001=i10001+1
          call  sncj14(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj14(i10001,i10002)
          i10001=i10001+1
          call  sncj15(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj15(i10001,i10002)
          i10001=i10001+1
          call  sncj16(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj16(i10001,i10002)
          i10002=i10001+1
          return
          end

      subroutine sncj21(i10001,i10002)
          i10001=i10001+1
          call  sncj22(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj22(i10001,i10002)
          i10001=i10001+1
          call  sncj23(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj23(i10001,i10002)
          i10001=i10001+1
          call  sncj24(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj24(i10001,i10002)
          i10001=i10001+1
          call  sncj25(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj25(i10001,i10002)
          i10001=i10001+1
          call sncj26(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj26(i10001,i10002)
          i10001=i10001+1
          call  sncj27(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj27(i10001,i10002)
          i10001=i10001+1
          call sncj28(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj28(i10001,i10002)
          i10001=i10001+1
          call  sncj29(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj29(i10001,i10002)
          i10001=i10001+1
          call  sncj30 (i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj30(i10001,i10002)
          i10001=i10001+1
          call  sncj31(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj31(i10001,i10002)
          i10001=i10001+1
          call  sncj32(i10001,i10002)
          i10002=i10002+1
          return
          end

      subroutine sncj32(i10001,i10002)
          i10002=i10001+1
          return
          end
