      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      logical    l9ans1,l9comp
      equivalence     (l9eans,l9ans1),(l9ecom,l9comp)
          integer*4 idim11(50),idim12(50)
          logical*4 ldim41(4),ldim42(4),ldim21(2),ldim22(2),
     1              ldim31(3),ldim32(3),ldim61(6),ldim62(6)
          data idim12/50*0/,ldim42,ldim22,ldim32,ldim62/4*.true.,
     1         2*.false.,3*.true.,6*.false./
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
          read (5,*) i9ans1
          i9comp =  2147483647
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
          read (5,*) i9ans1
          i9comp =  -2147483647
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
          read (5,*) i9ans1
          i9comp =  94
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
          read (5,*) idim11
          i9ans1 = 0
          do 804 i=1,50
  804     i9ans1 = i9ans1 + idim11(i)
          i9comp = 50
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
          read (5,*) l9ans1
          l9comp = .false.
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
          read (5,*) l9ans1
          l9comp = .true.
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
          read (5,*) l9ans1
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
          read (5,*) l9ans1
          l9comp = .false.
      i9data = i9data + 1
      if((.not.l9ans1.and..not.l9comp).or.(l9ans1.and.l9comp))go to 2560
     *3
      i9errc = i9errc + 1
      if(i9keyc.eq.1) go to 25803
      write(6,31530)
      write(6,31700) i9data,l9ans1,l9comp
      go to 25703
25603 if(i9keyc.eq.1) go to 25803
      write(6,31520)
25703 continue
25803 continue
c
          read (5,*) ldim41
          i9ans1 = 0
          do 809 i=1,4
          if((.not.ldim41(i).and..not.ldim42(i)).or.
     1    (ldim41(i).and.ldim42(i)))    go to 809
          i9ans1 = i9ans1+1
  809     continue
          i9comp = 0
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
          read (5,*) ldim21
          i9ans1 = 0
          do 810 j=1,2
          if((.not.ldim21(j).and..not.ldim22(j)).or.
     1    (ldim21(j).and.ldim22(j)))    go to 810
          i9ans1 = i9ans1+1
  810     continue
          i9comp = 0
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
c
          read (5,*) ldim31
          i9ans1 = 0
          do 811 i=1,3
          if((.not.ldim31(i).and..not.ldim32(i)).or.
     1     (ldim31(i).and.ldim32(i)))   go to 811
          i9ans1 = i9ans1+1
  811     continue
          i9comp = 0
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
          read (5,*) ldim61
          i9ans1 = 0
          do 812 i=1,6
          if((.not.ldim61(i).and..not.ldim62(i)).or.
     1    (ldim61(i).and.ldim62(i)))    go to 812
          i9ans  = i9ans1+1
  812     continue
          i9comp = 0
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
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
