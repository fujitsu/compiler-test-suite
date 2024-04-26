      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
      dimension     ii(375),i11(5),i12(5),i13(5),i21(5,5),i22(5,5),
     1              i23(5,5),i31(5,5,5),i32(5,5,5),i33(5,5,5)
      equivalence   (ii(1),i11(1),i21(1,1),i31(1,1,1)),
     1              (ii(6),i12(1)),(ii(11),i13(1)),
     2              (ii(26),i22(1,1)),(ii(51),i23(1,1)),
     3              (ii(126),i32(1,1,1)),(ii(251),i33(1,1,1))
      integer       fzzb1

      do  100  i=1,375
  100 ii(i) = i
c
31500 format(1h0,1x,4h*ok*,4x,1h( ,i3,2h ))
31510 format(1h0,1x,7h*error*,1x,1h( ,i3,2h ))
31520 format(1h0,1x,4h*ok* )
31530 format(1h0,1x,7h*error* )
31550 format( // 19h + justice + item +,15x,19h+ computed result +,
     *       19x,17h+ compare value +,31x,14h+ difference + / )
      i9keyc=1
      if (i9keyc.eq.0) go to 32010
32000 continue
32010 i9keyc = i9keyc + 1
      i9data=0
      i9errc=0
      i9ans1=0
c
31600 format(1h+, 9x,1h( ,i3,2h ),21x,i15,21x,i15 )
31700 format(1h+,9x,1h( ,i3,2h ),33x,l3,33x,l3 )
c
          do 101  i=1,2
          do 101  j=1,3,2
          do 101  k=2,3
          i9ans1=i9ans1+i11(2*i+1)+i12(1*j+2)+i13(2*k+0)
  101     continue
          i9comp = 224
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23300
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23500
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23400
23300 if( i9keyc.eq.1 ) go to 23500
      write(6,31520)
23400 continue
23500 i9ans1=0
c
          l9ans1=.true.
          do 102  i=1,2
          do 102  j=2,6,5
          do 102  k=1,1
          l9ans1 = i31(2*i+1,1,2).eq.26+i*2.and.l9ans1.and.
     1      i*20-24*j+15*k+55+i32(5,i,1*j+3).eq.i33(j,3*k+2,i)
  102     continue
          l9comp=.true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *0
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25800
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25700
25600 if(i9keyc.eq.1) go to 25800
      write(6,31520)
25700 continue
25800 continue
c
          do  103  i=2,6,2
          do  103  j=1,3
          do  103  k=2,3
          i9ans1=i9ans1+fzzb1(i21(1*i-1,k))
          i9ans1=i9ans1+fzzb1(i22(3,3*k-5))-fzzb1(i23(5,2*j-1))
  103     continue
          i9comp = -342
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23301
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23501
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23401
23301 if( i9keyc.eq.1 ) go to 23501
      write(6,31520)
23401 continue
23501 i9ans1=0
c
          l=12
          do  104  i=1,2
          do  104  j=1,5,5
          do  104  k=1,1
  204     format(1h0,80x,17hitem - 04  comp =,3i5)
  304     format(1h ,80x,17hitem - 04  ans  =,3i5)
          i9ans1 = i9ans1 + ii(l) + ii(250) + ii(251)
          l = l + 75
  104     continue
          i9comp=1101
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23302
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23502
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23402
23302 if( i9keyc.eq.1 ) go to 23502
      write(6,31520)
23402 continue
23502 i9ans1=0
c
          do  105  i=2,2,1
          do  105  j=4,5
          do  105  k=1,2
          i9ans1 = i9ans1+i11(2*i)+i12(1*j)-i13(2*k)+ii(10*j)
  105     continue
          i9comp=182
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23303
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23503
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23403
23303 if( i9keyc.eq.1 ) go to 23503
      write(6,31520)
23403 continue
23503 i9ans1=0
c
          l9ans1 = .false.
          do  106  i=1,2
          do  106  j=1,1
          do  106  k=1,4
          l9ans1 = l9ans1.or.i21(2*i,1).ne.ii(2*i).or.
     1               i22(5*j,5).ne.50.or.i23(1,1*k).ne.46+k*5
  106     continue
          l9comp = .false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *1
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25801
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25701
25601 if(i9keyc.eq.1) go to 25801
      write(6,31520)
25701 continue
25801 continue
c
          do  107  i=2,3,1
          do  107  j=3,4
          do  107  k=1,2
          i9ans1 = i9ans1 + fzzb1(i11(i+2))+fzzb1(i12(j+1)-i13(k+3))
  107     continue
          i9comp = -4
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23304
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23504
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23404
23304 if( i9keyc.eq.1 ) go to 23504
      write(6,31520)
23404 continue
23504 i9ans1=0
c
  208     format(1h0,80x,17hitem - 08  comp =,15h  331   13  234 /
     1           1h ,97x,                     15h  356   13  234 /
     2           1h ,97x,                     15h  331   63  244 /
     3           1h ,97x,                     15h  356   63  244 /)
         do  108  i=1,3,2
         do  108  j=2,3
         do  108  k=1,3,3
          write(1,308)  i33(1,2,j+2),i31(k+2,3,i),i32(4,i+1,5)
  308     format(1h ,80x,17hitem - 08  ans  =,3i5)
         i9ans1=i9ans1+i+j+k
  108    continue
         i9comp=22
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23305
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23505
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23405
23305 if( i9keyc.eq.1 ) go to 23505
      write(6,31520)
23405 continue
23505 i9ans1=0
      if(i9keyc.eq.1) go to 25900
25900 continue
c
          do  109  i=2,3
          do  109  j=97,99,2
          do  109  k=2,97,96
          i9ans1=i21(i-1,2)*i22(j-95,1)-i23(k,k-1)+i9ans1
  109     continue
          i9comp=520
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23306
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23506
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23406
23306 if( i9keyc.eq.1 ) go to 23506
      write(6,31520)
23406 continue
23506 i9ans1=0
c
          l9ans1 = .true.
          do  110  i=4,9,3
          do  110  j=3,4
          do  110  k=2,3,1
          l9ans1 = l9ans1.and.i31(i-2,1,1).eq.i-2.and.
     1      i32(1,2,j-2).eq.131+25*(j-3).and.i33(4,k-1,2).eq.5*k+269
  110     continue
          l9comp = .true.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *2
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25802
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25702
25602 if(i9keyc.eq.1) go to 25802
      write(6,31520)
25702 continue
25802 continue
c
          do  111  i=1,5,3
          do  111  j=2,4
          do  111  k=6,9,2
          i9ans1=i9ans1+fzzb1(i11(i)*i13(j)/i12(i))+fzzb1(ii(k))
  111     continue
          i9comp=128
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23307
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23507
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23407
23307 if( i9keyc.eq.1 ) go to 23507
      write(6,31520)
23407 continue
23507 i9ans1=0
c
  212     format(1h0,80x,17hitem - 12  comp =,15h    7   32   52 /
     1           1h ,97x,                     15h    8   37   53 /
     2           1h ,97x,                     15h   17   34   52 /
     3           1h ,97x,                     15h   18   39   53 /
     4           1h ,97x,                     15h    7   32   57 /
     5           1h ,97x,                     15h    8   37   58 /
     6           1h ,97x,                     15h   17   34   57 /
     7           1h ,97x,                     15h   18   39   58 /)
          do  112  i=1,2
          do  112  j=2,4,2
          do  112  k=2,3
  312     format(1h ,80x,17hitem - 12  ans  =,3i5)
  112     i9ans1=i9ans1+i+j+k
          i9comp=56
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23308
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23508
      write(6,31530)
      write(6,31600) i9data,i9ans1,i9comp
      go to 23408
23308 if( i9keyc.eq.1 ) go to 23508
      write(6,31520)
23408 continue
23508 i9ans1=0
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      integer function fzzb1(i)
      fzzb1 = i
      return
      end
