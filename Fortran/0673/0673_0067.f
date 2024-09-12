          implicit  integer *4 (a,b) , real * 4 (j)
      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
          real * 4  r0k004,r0k013
          integer * 4  i0k005,i0k006,i0k014,i0k015
          dimension i0k005 (20), a0k008 (30) ,i0k002(10), i0k003(10),
     1             i0k006 (10), b0k009 (2) , i0k012 (3) ,
     2              i0k011 (15),i0k014(2),i0k015(20),a0k017(3),
     3              b0k018(20)
          namelist /kono1/ r0k001,i0k002,i0k003,r0k004,i0k005,i0k006,
     1              j0k007,a0k008,b0k009
          namelist /kono2/r0k010,i0k011/kono3/i0k012,r0k013,i0k014
     1             /kono4/i0k015/kono5/j0k016,a0k017,b0k018
31600 format(1h+, 9x,1h( ,i3,2h ),21x,i15,21x,i15 )
31610 format(1h+,9x,1h(, i3, 2h ),21x,e15.8,21x,e15.8,30x,e15.8 )
          read (5,kono1)
31500 format(1h0,1x,4h*ok*,4x,1h( ,i3,2h ))
31510 format(1h0,1x,7h*error*,1x,1h( ,i3,2h ))
31520 format(1h0,1x,4h*ok* )
31530 format(1h0,1x,7h*error* )
31540 format(1h1 / 6x,9h*fortran*,5x,8hf20604f1,5x,5henter / )
31550 format( // 19h + justice + item +,15x,19h+ computed result +,
     *       19x,17h+ compare value +,25x,14h+ difference + / )
      write(6,31540)
      i9keyc=1
      if (i9keyc.eq.0) go to 32010
32000 write(6,31550)
32010 i9keyc = i9keyc + 1
      i9data=0
      i9errc=0
      i9ans1=0
          r9ans1=r0k001
          r9comp = 432.432
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23650
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23600 if(r9dif3 - 5.0e-6)                23700,23700,23750
23650 r9dif3 = abs(r9ans1)
      go to 23600
23700 if( i9keyc.eq.1) go to 23850
      write(6,31520)
      go to 23800
23750 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23850
      write(6,31530)
23800 write(6,31610) i9data,r9ans1,r9comp,r9dif3
23850 r9ans1 = 0.0e00
          i9ans1=i0k002(5)
          i9comp=456
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
          i9ans1=i0k003(5)
          i9comp=1000
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
          r9ans1=r0k004
          r9comp = 98621.3
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23651
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23601 if(r9dif3 - 5.0e-6)                23701,23701,23751
23651 r9dif3 = abs(r9ans1)
      go to 23601
23701 if( i9keyc.eq.1) go to 23851
      write(6,31520)
      go to 23801
23751 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23851
      write(6,31530)
23801 write(6,31610) i9data,r9ans1,r9comp,r9dif3
23851 r9ans1 = 0.0e00
          i9ans1=i0k005(11)
          i9comp=246
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
          i9ans1=i0k006(10)
          i9comp=2000
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
          r9ans1=j0k007
          r9comp = 4982.53
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23652
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23602 if(r9dif3 - 5.0e-6)                23702,23702,23752
23652 r9dif3 = abs(r9ans1)
      go to 23602
23702 if( i9keyc.eq.1) go to 23852
      write(6,31520)
      go to 23802
23752 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23852
      write(6,31530)
23802 write(6,31610) i9data,r9ans1,r9comp,r9dif3
23852 r9ans1 = 0.0e00
          i9ans1=a0k008(20)
          i9comp=222
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
          i9ans1=b0k009(1)
          i9comp=999
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
          read (5,kono2)
          read (5,kono3)
          read (5,kono4)
          read (5,kono5)
          call  sknf1 (r0k010,r9ans1)
          r9comp= 123.987
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23653
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23603 if(r9dif3 - 5.0e-6)                23703,23703,23753
23653 r9dif3 = abs(r9ans1)
      go to 23603
23703 if( i9keyc.eq.1) go to 23853
      write(6,31520)
      go to 23803
23753 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23853
      write(6,31530)
23803 write(6,31610) i9data,r9ans1,r9comp,r9dif3
23853 r9ans1 = 0.0e00
          call  sknf2 (i0k011,i9ans1,8)
          i9comp = 800
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
          call  sknf3 (i0k012(3),i9ans1)
          i9comp= 128
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
          call  sknf1 (r0k013,r9ans1)
          r9comp = 256.256
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23654
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23604 if(r9dif3 - 5.0e-6)                23704,23704,23754
23654 r9dif3 = abs(r9ans1)
      go to 23604
23704 if( i9keyc.eq.1) go to 23854
      write(6,31520)
      go to 23804
23754 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23854
      write(6,31530)
23804 write(6,31610) i9data,r9ans1,r9comp,r9dif3
23854 r9ans1 = 0.0e00
          call  sknf2 (i0k014,i9ans1,1)
          i9comp = 512
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23308
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23508
      write(6,31530)
      go to 23408
23308 if( i9keyc.eq.1 ) go to 23508
      write(6,31520)
23408 write(6,31600) i9data,i9ans1,i9comp
23508 i9ans1=0
          call  sknf3 (i0k015(15),i9ans1)
          i9comp = 4
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23309
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23509
      write(6,31530)
      go to 23409
23309 if( i9keyc.eq.1 ) go to 23509
      write(6,31520)
23409 write(6,31600) i9data,i9ans1,i9comp
23509 i9ans1=0
      if(i9keyc.eq.1) go to 25900
      write(6,31570)
25900 continue
          call  sknf1 (j0k016,r9ans1)
          r9comp = 5.245
      i9data = i9data + 1
      if( abs(r9comp) .eq. 0.0e00 ) go to 23655
      r9dif3 = abs(( r9ans1 - r9comp )/r9comp)
23605 if(r9dif3 - 5.0e-6)                23705,23705,23755
23655 r9dif3 = abs(r9ans1)
      go to 23605
23705 if( i9keyc.eq.1) go to 23855
      write(6,31520)
      go to 23805
23755 i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23855
      write(6,31530)
23805 write(6,31610) i9data,r9ans1,r9comp,r9dif3
23855 r9ans1 = 0.0e00
          call  sknf2 (a0k017,i9ans1,2)
          i9comp = 2
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23310
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23510
      write(6,31530)
      go to 23410
23310 if( i9keyc.eq.1 ) go to 23510
      write(6,31520)
23410 write(6,31600) i9data,i9ans1,i9comp
23510 i9ans1=0
          call  sknf3 (b0k018(6),i9ans1)
          i9comp =10
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23311
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23511
      write(6,31530)
      go to 23411
23311 if( i9keyc.eq.1 ) go to 23511
      write(6,31520)
23411 write(6,31600) i9data,i9ans1,i9comp
23511 i9ans1=0
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 write(6,31560)
      stop
31560 format(1h0 / 6x,9h*fortran*,5x,8hf20604f1,5x,4hexit )
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,25x,14h+ difference + / )
      end
      subroutine sknf1(e,r9ans1)
          r9ans1 = e
  100     return
          end
      subroutine sknf2(l,i9ans1,l1)
          dimension l (100)
          i9ans1 = l(l1)
  200     return
          end
      subroutine sknf3(k,i9ans1)
          i9ans1 = k
  300     return
          end
