      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
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
      isw = 0
      do  100  ia = 101,103,2
      go to 111
  801 isw = 1
  111 continue
  100 continue
      if( isw )  130,120,130
  120 i9ans1 = 1
  130 i9data = i9data + 1
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
      isw = 0
      do  200  ia = 1,2,1
      do  200  ib = 5,5
      do  200  ic = 3,3
      do  200  id = 1,5
      do  200  ie = 2,3
      do  200  if = 1,1
      do  200  ig = 7,8,1
      do  200  ih = 1,3,3
      do  200  ii = 1,1,5
      do  200  ij = 2,3,1
      do  200  ik = 1,8,4
      do  200  il = 2,6,6
      do  200  im = 3,4,3
      do  200  in = 2,5
      do  200  io = 1,6,7
      go to 211
  802 isw = 1
  211 continue
  200 continue
      if( isw )  230,220,230
  220 i9ans1 = 1
  230 i9data = i9data + 1
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
      isw = 0
      do  300  ia = 1,1
      do  300  ib = 2,3
      do  300  ic = 7,7
      go to 300
  803 isw = 1
  300 continue
      if( isw )  330,320,330
  320 i9ans1 = 1
  330 i9data = i9data + 1
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
      isw = 0
      do  400  ia = 1,2,2
      do  400  ib = 2,3,1
      do  400  ic = 3,5,1
      go to 411
  804 isw = 1
  400 continue
  411 if( isw )  430,420,430
  420 i9ans1 = 1
  430 i9data = i9data + 1
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
      isw = 0
      do  500  ia = 1,2,1
      do  500  ib = 1,3,2
      do  500  ic = 1,4,3
      do  500  id = 1,5,4
      do  500  ie = 1,6,5
      do  500  if = 1,7,6
      go to  511
  805 isw = 1
  500 continue
  511 if ( isw )  530,520,530
  520 i9ans1 = 1
  530 i9data = i9data + 1
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
      isw = 0
      jsw = 1
      do  600  ia = 3,8,2
      go to 611
  806 isw = 1
  612 continue
  600 continue
      jsw = 0
      if( jsw )  613,613,613
  611 if( isw )  613,612,613
  613 if( isw+jsw )  630,620,630
  620 i9ans1 = 1
  630 i9data = i9data + 1
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
      isw = 0
      jsw = 1
      do  700  ia = 2,2,2
      do  700  ib = 1,8,8
      do  700  ic = 1,3,2
      go to 711
  807 isw = 1
  712 continue
  700 continue
      jsw = 0
      if ( jsw )  713,713,713
  711 if( isw )  712,712,712
  713 if( isw+jsw )  730,720,730
  720 i9ans1 = 1
  730 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23006
      if(i9keyc.eq.1) go to 23106
      write(6,31510) i9data
      go to 23106
23006 if(i9keyc.eq.1) go to 23206
      write(6,31500) i9data
      go to 23206
23106 i9errc = i9errc + 1
23206 i9ans1=0
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
