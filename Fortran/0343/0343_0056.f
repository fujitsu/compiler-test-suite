      real       r9ans1,r9comp,r9dif1,r9dif2,r9dif3
          dimension final(3),dpar(2,2),blv1(2,2,2),blv2(3,2),tot(2,2)
      write(6,31501)
31501 format( // 19h + justice + item +,6x,15h+ source data +,10x,
     *       21h+ field description +,10x,17h+ answer result +,12x,
     *            14h+ difference +  / )
31502 format( //19h + justice + item +,11x,15h+ source data +,17x,
     * 21h+ field description +,9x,30h+ answer + difference result +  /
     *)
      i9errc=0
      i9data=0
31550 format(1h0,3x,4h*ok*,4x,1h(,i3,2h )  )
31551 format(1h0,3x,7h*error*,1x,1h(,i3,2h )  )
31552 format(1h0,11x,1h(,i3,2h )  )
31553 format(1h0,3x,4h*ok*    )
31554 format(1h0,3x,7h*error* )
c
          read(5,101) abc
  101     format(f10.3)
          r9ans1=abc
          r9comp=0.8
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23500
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23600 if( r9dif1 .le. 5.e-6 )  go to 23400
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23700
23400 write(6,31550)  i9data
      go to  23700
23500 r9dif1 = abs(r9ans1)
      go to  23600
23700 continue
          write(6,201) r9ans1,r9dif1
  201     format(1h+,20x,  25h                      0.8,
     *                5x,  21h                f10.3,
     *                7x,  25h                      0.8/
     *           1h ,78x,f25.1,12x,e10.3)
c
          read(5,102) p1
  102     format(f15.2)
          r9ans1=p1
          r9comp=-1.9
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23501
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23601 if( r9dif1 .le. 5.e-6 )  go to 23401
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23701
23401 write(6,31550)  i9data
      go to  23701
23501 r9dif1 = abs(r9ans1)
      go to  23601
23701 continue
          write(6,202) r9ans1,r9dif1
  202     format(1h+,20x,  25h                     -1.9,
     *                5x,  21h                f15.2,
     *                7x,  25h                     -1.9/
     *           1h ,78x,f25.1,12x,e10.3)
c
          read(5,103) psum
  103     format(f10.5)
          r9ans1=psum
          r9comp=0.999
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23502
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23602 if( r9dif1 .le. 5.e-6 )  go to 23402
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23702
23402 write(6,31550)  i9data
      go to  23702
23502 r9dif1 = abs(r9ans1)
      go to  23602
23702 continue
          write(6,203) r9ans1,r9dif1
  203     format(1h+,20x,  25h                   +0.999,
     *                5x,  21h                f10.5,
     *                7x,  25h                    0.999/
     *           1h ,78x,f25.3,12x,e10.3)
c
          read(5,104) total
  104     format(f10.2)
          r9ans1=total
          r9comp=18.09
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23503
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23603 if( r9dif1 .le. 5.e-6 )  go to 23403
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23703
23403 write(6,31550)  i9data
      go to  23703
23503 r9dif1 = abs(r9ans1)
      go to  23603
23703 continue
          write(6,204) r9ans1,r9dif1
  204     format(1h+,20x,  25h                    18.09,
     *                5x,  21h                f10.2,
     *                7x,  25h                    18.09/
     *           1h ,78x,f25.2,12x,e10.3)
c
          read(5,105) total1,total2
  105     format(f10.3,f10.5)
          r9ans1=total1
          r9comp=0.98765
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23504
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23604 if( r9dif1 .le. 5.e-6 )  go to 23404
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23704
23404 write(6,31550)  i9data
      go to  23704
23504 r9dif1 = abs(r9ans1)
      go to  23604
23704 continue
          write(6,205) r9ans1,r9dif1
  205     format(1h+,20x,  25h                  0.98765,
     *                5x,  21h          f10.3,f10.5,
     *                7x,  25h                  0.98765/
     *           1h ,78x,f25.5,12x,e10.3)
          r9ans1=total2
          r9comp=123.45
      if (abs(r9comp).eq.0.0e0 )  go to  19800
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19700 if( r9dif1 .le. 5.e-6 )  go to  19900
      i9errc = i9errc + 1
      write(6,31554)
      go to  19600
19900 write(6,31553)
      go to  19600
19800 r9dif1 = abs ( r9ans1 )
      go to  19700
19600 continue
          write(6,305)  r9ans1,r9dif1
  305     format(1h+,20x,  25h                   123.45,
     *                5x,  21h                     ,
     *                7x,  25h                   123.45/
     *           1h ,78x,f25.2,12x,e10.3)
c
          read(5,106)  (final(j),j=1,3)
  106     format(3(10x,f10.3))
          r9ans1=final(1)
          r9comp=129.999
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23505
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23605 if( r9dif1 .le. 5.e-6 )  go to 23405
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23705
23405 write(6,31550)  i9data
      go to  23705
23505 r9dif1 = abs(r9ans1)
      go to  23605
23705 continue
          write(6,206) r9ans1,r9dif1
  206     format(1h+,20x,  25h                  129.999,
     *                5x,  21h         3(10x,f10.3),
     *                7x,  25h                  129.999/
     *           1h ,78x,f25.3,12x,e10.3)
          r9ans1=final(2)
          r9comp=0.234567
      if (abs(r9comp).eq.0.0e0 )  go to  19801
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19701 if( r9dif1 .le. 5.e-6 )  go to  19901
      i9errc = i9errc + 1
      write(6,31554)
      go to  19601
19901 write(6,31553)
      go to  19601
19801 r9dif1 = abs ( r9ans1 )
      go to  19701
19601 continue
          write(6,306) r9ans1,r9dif1
  306     format(1h+,20x,  25h                 0.234567,
     *                 5x, 21h                     ,
     *                7x,  25h                 0.234567/
     *           1h ,78x,f25.6,12x,e10.3)
          r9ans1=final(3)
          r9comp=9.87654
      if (abs(r9comp).eq.0.0e0 )  go to  19802
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19702 if( r9dif1 .le. 5.e-6 )  go to  19902
      i9errc = i9errc + 1
      write(6,31554)
      go to  19602
19902 write(6,31553)
      go to  19602
19802 r9dif1 = abs ( r9ans1 )
      go to  19702
19602 continue
          write(6,406)  r9ans1,r9dif1
  406     format(1h+,20x,  25h                  9.87654,
     *                5x,  21h                     ,
     *                7x,  25h                  9.87654/
     *           1h ,78x,f25.5,12x,e10.3)
c
          read(5,107) ((dpar(i,j),i=1,2),j=1,2)
  107     format(2(10x,2f15.7/))
          r9ans1=dpar(1,1)
          r9comp=-375.1234
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23506
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23606 if( r9dif1 .le. 5.e-6 )  go to 23406
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23706
23406 write(6,31550)  i9data
      go to  23706
23506 r9dif1 = abs(r9ans1)
      go to  23606
23706 continue
          write(6,207) r9ans1,r9dif1
  207     format(1h+,20x,  25h                -375.1234,
     *            5x,      21h       2(10x,2f15.7/),
     *                7x,  25h                -375.1234/
     *         1h ,78x,f25.4,12x,e10.3)
          r9ans1=dpar(2,1)
          r9comp=0.01234567
      if (abs(r9comp).eq.0.0e0 )  go to  19803
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19703 if( r9dif1 .le. 5.e-6 )  go to  19903
      i9errc = i9errc + 1
      write(6,31554)
      go to  19603
19903 write(6,31553)
      go to  19603
19803 r9dif1 = abs ( r9ans1 )
      go to  19703
19603 continue
          write(6,307) r9ans1,r9dif1
  307     format(1h+,20x,  25h               0.01234567,
     *               33x,  25h               0.01234567/
     *           1h ,78x,f25.8,12x,e10.3)
          r9ans1=dpar(1,2)
          r9comp=-19.84256
      if (abs(r9comp).eq.0.0e0 )  go to  19804
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19704 if( r9dif1 .le. 5.e-6 )  go to  19904
      i9errc = i9errc + 1
      write(6,31554)
      go to  19604
19904 write(6,31553)
      go to  19604
19804 r9dif1 = abs ( r9ans1 )
      go to  19704
19604 continue
          write(6,407) r9ans1,r9dif1
  407     format(1h+,20x,  25h                -19.84256,
     *               33x,  25h                -19.84256/
     *           1h ,78x,f25.5,12x,e10.3)
          r9ans1=dpar(2,2)
          r9comp=0.9020351
      if (abs(r9comp).eq.0.0e0 )  go to  19805
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19705 if( r9dif1 .le. 5.e-6 )  go to  19905
      i9errc = i9errc + 1
      write(6,31554)
      go to  19605
19905 write(6,31553)
      go to  19605
19805 r9dif1 = abs ( r9ans1 )
      go to  19705
19605 continue
          write(6,507) r9ans1,r9dif1
  507     format(1h+,20x,  25h                0.9020351,
     *               33x,  25h                0.9020351/
     *           1h ,78x,f25.7,12x,e10.3)
c
          read(5,108) ((dpar(i,j),i=1,2),j=1,2)
  108     format(2(10x,2f15.7/))
          r9ans1=dpar(1,1)
          r9comp=13.45678
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23507
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23607 if( r9dif1 .le. 5.e-6 )  go to 23407
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23707
23407 write(6,31550)  i9data
      go to  23707
23507 r9dif1 = abs(r9ans1)
      go to  23607
23707 continue
          write(6,208) r9ans1,r9dif1
  208     format(1h+,20x,  25h                 13.45678,
     *            5x,      21h       2(10x,2f15.7/),
     *                7x,  25h                 13.45678/
     *           1h ,78x,f25.5,12x,e10.3)
          r9ans1=dpar(2,1)
          r9comp=-13.45678
      if (abs(r9comp).eq.0.0e0 )  go to  19806
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19706 if( r9dif1 .le. 5.e-6 )  go to  19906
      i9errc = i9errc + 1
      write(6,31554)
      go to  19606
19906 write(6,31553)
      go to  19606
19806 r9dif1 = abs ( r9ans1 )
      go to  19706
19606 continue
          write(6,308) r9ans1,r9dif1
  308     format(1h+,20x,  25h                -13.45678,
     *               33x,  25h                -13.45678/
     *           1h ,78x,f25.5,12x,e10.3)
          r9ans1=dpar(1,2)
          r9comp=13.45678
      if (abs(r9comp).eq.0.0e0 )  go to  19807
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19707 if( r9dif1 .le. 5.e-6 )  go to  19907
      i9errc = i9errc + 1
      write(6,31554)
      go to  19607
19907 write(6,31553)
      go to  19607
19807 r9dif1 = abs ( r9ans1 )
      go to  19707
19607 continue
          write(6,408) r9ans1,r9dif1
  408     format(1h+,20x,  25h                +13.45678,
     *               33x,  25h                 13.45678/
     *            1h ,78x,f25.5,12x,e10.3)
          r9ans1=dpar(2,2)
          r9comp=13.45678
      if (abs(r9comp).eq.0.0e0 )  go to  19808
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19708 if( r9dif1 .le. 5.e-6 )  go to  19908
      i9errc = i9errc + 1
      write(6,31554)
      go to  19608
19908 write(6,31553)
      go to  19608
19808 r9dif1 = abs ( r9ans1 )
      go to  19708
19608 continue
          write(6,508) r9ans1,r9dif1
  508     format(1h+,20x,  25h               +013.45678,
     *               33x,  25h                 13.45678/
     *           1h ,78x,f25.5,12x,e10.3)
      write(6,31504)
31504 format(1h1 / )
      write(6,31501)
c
          read(5,109) (final(j),j=1,3)
  109     format(f15.7,f10.3/f10.3)
          r9ans1=final(1)
          r9comp=3.14159
          r9ans1=final(2)
          r9comp=0.246891
      if (abs(r9comp).eq.0.0e0 )  go to  19809
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19709 if( r9dif1 .le. 5.e-6 )  go to  19909
      i9errc = i9errc + 1
      write(6,31554)
      go to  19609
19909 write(6,31553)
      go to  19609
19809 r9dif1 = abs ( r9ans1 )
      go to  19709
19609 continue
          write(6,309) r9ans1,r9dif1
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23508
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23608 if( r9dif1 .le. 5.e-6 )  go to 23408
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23708
23408 write(6,31550)  i9data
      go to  23708
23508 r9dif1 = abs(r9ans1)
      go to  23608
23708 continue
          write(6,209) r9ans1,r9dif1
  209     format(1h+,20x,  25h                 +3.14159,
     *            5x,      21h  (f15.7,f10.3/f10.3),
     *                7x,  25h                  3.14159/
     *           1h ,78x,f25.5,12x,e10.3)
  309     format(1h+,20x,  25h                 0.246891,
     *               33x,  25h                 0.246891/
     *           1h ,78x,f25.6,12x,e10.3)
          r9ans1=final(3)
          r9comp=-1.02345
      if (abs(r9comp).eq.0.0e0 )  go to  19810
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19710 if( r9dif1 .le. 5.e-6 )  go to  19910
      i9errc = i9errc + 1
      write(6,31554)
      go to  19610
19910 write(6,31553)
      go to  19610
19810 r9dif1 = abs ( r9ans1 )
      go to  19710
19610 continue
          write(6,409) r9ans1,r9dif1
  409     format(1h+,20x,  25h                 -1.02345,
     *               33x,  25h                 -1.02345/
     *           1h ,78x,f25.5,12x,e10.3)
c
          read(5,110) (final(i),i=1,3)
  110     format(f15.2,f10.3/f10.3)
          r9ans1=final(1)
          r9comp=0.12345
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23509
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23609 if( r9dif1 .le. 5.e-6 )  go to 23409
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23709
23409 write(6,31550)  i9data
      go to  23709
23509 r9dif1 = abs(r9ans1)
      go to  23609
23709 continue
          write(6,210) r9ans1,r9dif1
  210     format(1h+,20x,  25h                 +0.12345,
     *            5x,      21h  (f15.2,f10.3/f10.3),
     *                7x,  25h                  0.12345/
     *           1h ,78x,f25.5,12x,e10.3)
          r9ans1=final(2)
          r9comp=0.94526
      if (abs(r9comp).eq.0.0e0 )  go to  19811
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19711 if( r9dif1 .le. 5.e-6 )  go to  19911
      i9errc = i9errc + 1
      write(6,31554)
      go to  19611
19911 write(6,31553)
      go to  19611
19811 r9dif1 = abs ( r9ans1 )
      go to  19711
19611 continue
          write(6,310) r9ans1,r9dif1
  310     format(1h+,20x,  25h                  0.94526,
     *               33x,  25h                  0.94526/
     *           1h ,78x,f25.5,12x,e10.3)
          r9ans1=final(3)
          r9comp=98765.0
      if (abs(r9comp).eq.0.0e0 )  go to  19812
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19712 if( r9dif1 .le. 5.e-6 )  go to  19912
      i9errc = i9errc + 1
      write(6,31554)
      go to  19612
19912 write(6,31553)
      go to  19612
19812 r9dif1 = abs ( r9ans1 )
      go to  19712
19612 continue
          write(6,410) r9ans1,r9dif1
  410     format(1h+,20x,  25h                   98765.,
     *               33x,  25h                  98765.0/
     *           1h ,78x,f25.1,12x,e10.3)
c
          read(5,111) blv1(1,2,1),blv1(1,2,2),blv2(2,1)
  111     format(2(f10.5),f15.7)
          r9ans1=blv1(1,2,1)
          r9comp=-300.142
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23510
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23610 if( r9dif1 .le. 5.e-6 )  go to 23410
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23710
23410 write(6,31550)  i9data
      go to  23710
23510 r9dif1 = abs(r9ans1)
      go to  23610
23710 continue
          write(6,211) r9ans1,r9dif1
  211     format(1h+,20x,  25h                 -3  .142,
     *               5x,   21h       2(f10.5),f15.7,
     *               7x,   25h                 -300.142/
     *           1h ,78x,f25.3,12x,e10.3)
          r9ans1=blv1(1,2,2)
          r9comp=-0.120456
      if (abs(r9comp).eq.0.0e0 )  go to  19813
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19713 if( r9dif1 .le. 5.e-6 )  go to  19913
      i9errc = i9errc + 1
      write(6,31554)
      go to  19613
19913 write(6,31553)
      go to  19613
19813 r9dif1 = abs ( r9ans1 )
      go to  19713
19613 continue
          write(6,311) r9ans1,r9dif1
  311     format(1h+,20x,  25h                -0.12 456,
     *               33x,  25h                -0.120456/
     *           1h ,78x,f25.6,12x,e10.3)
          r9ans1=blv2(2,1)
          r9comp=1.03606
      if (abs(r9comp).eq.0.0e0 )  go to  19814
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19714 if( r9dif1 .le. 5.e-6 )  go to  19914
      i9errc = i9errc + 1
      write(6,31554)
      go to  19614
19914 write(6,31553)
      go to  19614
19814 r9dif1 = abs ( r9ans1 )
      go to  19714
19614 continue
          write(6,411) r9ans1,r9dif1
  411     format(1h+,20x,  25h                 +1. 3606,
     *               33x,  25h                  1.03606/
     *           1h ,78x,f25.5,12x,e10.3)
c
          read(5,112) blv1(2,1,2),blv1(2,2,2),blv2(1,2)
  112     format(2(f10.3),f10.3)
          r9ans1=blv1(2,1,2)
          r9comp=0.1034542
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23511
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23611 if( r9dif1 .le. 5.e-6 )  go to 23411
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23711
23411 write(6,31550)  i9data
      go to  23711
23511 r9dif1 = abs(r9ans1)
      go to  23611
23711 continue
          write(6,412) r9ans1,r9dif1
  412     format(1h+,20x,  25h               +0.1 34542,
     *                5x,  21h       2(f10.3),f10.3,
     *                7x,  25h                0.1034542/
     *           1h ,78x,f25.7,12x,e10.3)
          r9ans1=blv1(2,2,2)
          r9comp=10.25431
      if (abs(r9comp).eq.0.0e0 )  go to  19815
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19715 if( r9dif1 .le. 5.e-6 )  go to  19915
      i9errc = i9errc + 1
      write(6,31554)
      go to  19615
19915 write(6,31553)
      go to  19615
19815 r9dif1 = abs ( r9ans1 )
      go to  19715
19615 continue
          write(6,212)r9ans1,r9dif1
  212     format(1h+,20x,25h                 1 .25431,
     *               33x,  25h                 10.25431/
     *           1h ,78x,f25.5,12x,e10.3)
          r9ans1=blv2(1,2)
          r9comp=10547.05
      if (abs(r9comp).eq.0.0e0 )  go to  19816
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19716 if( r9dif1 .le. 5.e-6 )  go to  19916
      i9errc = i9errc + 1
      write(6,31554)
      go to  19616
19916 write(6,31553)
      go to  19616
19816 r9dif1 = abs ( r9ans1 )
      go to  19716
19616 continue
          write(6,312) r9ans1,r9dif1
  312     format(1h+,20x,  25h                 10547. 5,
     *               33x,  25h                 10547.05/
     *           1h ,78x,f25.2,12x,e10.3)
c
          read(5,113) final(1),final(2),blv2(2,2),blv2(3,2)
  113     format(2(5x,f10.2),2(5x,f5.2))
          r9ans1=final(1)
          r9comp=0.105
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23512
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23612 if( r9dif1 .le. 5.e-6 )  go to 23412
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23712
23412 write(6,31550)  i9data
      go to  23712
23512 r9dif1 = abs(r9ans1)
      go to  23612
23712 continue
          write(6,213) r9ans1,r9dif1
  213     format(1h+,20x,  25h                   +0.1 5,
     *                5x,  21h     2(f10.2),2(f5.2),
     *                7x,  25h                    0.105/
     *           1h ,78x,f25.3,12x,e10.3)
          r9ans1=final(2)
          r9comp=-1.03
      if (abs(r9comp).eq.0.0e0 )  go to  19817
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19717 if( r9dif1 .le. 5.e-6 )  go to  19917
      i9errc = i9errc + 1
      write(6,31554)
      go to  19617
19917 write(6,31553)
      go to  19617
19817 r9dif1 = abs ( r9ans1 )
      go to  19717
19617 continue
          write(6,313) r9ans1,r9dif1
  313     format(1h+,20x,  25h                    -1. 3,
     *               33x,  25h                    -1.03/
     *           1h ,78x,f25.2,12x,e10.3)
          r9ans1=blv2(2,2)
          r9comp=10.2
      if (abs(r9comp).eq.0.0e0 )  go to  19818
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19718 if( r9dif1 .le. 5.e-6 )  go to  19918
      i9errc = i9errc + 1
      write(6,31554)
      go to  19618
19918 write(6,31553)
      go to  19618
19818 r9dif1 = abs ( r9ans1 )
      go to  19718
19618 continue
          write(6,413) r9ans1,r9dif1
  413     format(1h+,20x,  25h                     1 .2,
     *               33x,  25h                     10.2/
     *           1h ,78x,f25.1,12x,e10.3)
          r9ans1=blv2(3,2)
          r9comp=9.05
      if (abs(r9comp).eq.0.0e0 )  go to  19819
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19719 if( r9dif1 .le. 5.e-6 )  go to  19919
      i9errc = i9errc + 1
      write(6,31554)
      go to  19619
19919 write(6,31553)
      go to  19619
19819 r9dif1 = abs ( r9ans1 )
      go to  19719
19619 continue
          write(6,513) r9ans1,r9dif1
  513     format(1h+,20x,  25h                     9. 5,
     *               33x,  25h                     9.05/
     *           1h ,78x,f25.2,12x,e10.3)
c
      write(6,31505)
31505 format(1h1 / )
      write(6,31501)
          read(5,114) final(1),final(3),dpar(1,1)
  114     format(f20.10)
          r9ans1=final(1)
          r9comp=0.5031
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23513
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23613 if( r9dif1 .le. 5.e-6 )  go to 23413
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23713
23413 write(6,31550)  i9data
      go to  23713
23513 r9dif1 = abs(r9ans1)
      go to  23613
23713 continue
          write(6,214) r9ans1,r9dif1
  214     format(1h+,20x,  25h                   0.5 31,
     *                5x,  21h             (f20.10),
     *                7x,  25h                   0.5031/
     *           1h ,78x,f25.4,12x,e10.3)
          r9ans1=final(3)
          r9comp=-10.05
      if (abs(r9comp).eq.0.0e0 )  go to  19820
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19720 if( r9dif1 .le. 5.e-6 )  go to  19920
      i9errc = i9errc + 1
      write(6,31554)
      go to  19620
19920 write(6,31553)
      go to  19620
19820 r9dif1 = abs ( r9ans1 )
      go to  19720
19620 continue
          write(6,314) r9ans1,r9dif1
  314     format(1h+,20x,  25h                   -10. 5,
     *               33x,  25h                   -10.05/
     *           1h ,78x,f25.2,12x,e10.3)
          r9ans1=dpar(1,1)
          r9comp=-3760.0
      if (abs(r9comp).eq.0.0e0 )  go to  19821
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19721 if( r9dif1 .le. 5.e-6 )  go to  19921
      i9errc = i9errc + 1
      write(6,31554)
      go to  19621
19921 write(6,31553)
      go to  19621
19821 r9dif1 = abs ( r9ans1 )
      go to  19721
19621 continue
          write(6,414) r9ans1,r9dif1
  414     format(1h+,20x,  25h                   -376 .,
     *               33x,  25h                   -3760./
     *           1h ,78x,f25.0,12x,e10.3)
c
          read(5,115)  dpar(1,1),dpar(2,2)
  115     format(f15.7)
          r9ans1=dpar(1,1)
          r9comp=120.32
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23514
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23614 if( r9dif1 .le. 5.e-6 )  go to 23414
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23714
23414 write(6,31550)  i9data
      go to  23714
23514 r9dif1 = abs(r9ans1)
      go to  23614
23714 continue
          write(6,215) r9ans1,r9dif1
  215     format(1h+,20x,  25h                   12 .32,
     *               5x,   21h              (f15.7),
     *               7x,   25h                   120.32/
     *           1h ,78x,f25.2,12x,e10.3)
          r9ans1=dpar(2,2)
          r9comp=-0.010453
      if (abs(r9comp).eq.0.0e0 )  go to  19822
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19722 if( r9dif1 .le. 5.e-6 )  go to  19922
      i9errc = i9errc + 1
      write(6,31554)
      go to  19622
19922 write(6,31553)
      go to  19622
19822 r9dif1 = abs ( r9ans1 )
      go to  19722
19622 continue
          write(6,315) r9ans1,r9dif1
  315     format(1h+,20x,  25h                -0. 1 453,
     *               33x,  25h                -0.010453/
     *           1h ,78x,f25.6,12x,e10.3)
c
          read(5,116) ((dpar(i,j),i=1,2),j=1,2)
  116     format(-1pf10.2,3(5x,f10.5/))
          r9ans1=dpar(1,1)
          r9comp=329.765
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23515
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23615 if( r9dif1 .le. 5.e-6 )  go to 23415
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23715
23415 write(6,31550)  i9data
      go to  23715
23515 r9dif1 = abs(r9ans1)
      go to  23615
23715 continue
          write(6,216) r9ans1,r9dif1
  216     format(1h+,20x,  25h                +32.9765 ,
     *            5x,      21h-1pf10.2,3(5x,f10.5/),
     *                7x,  25h                  329.765/
     *              /,78x,f25.3,12x,e10.3 )
          r9ans1=dpar(2,1)
          r9comp= 1.23456
      if (abs(r9comp).eq.0.0e0 )  go to  19823
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19723 if( r9dif1 .le. 5.e-6 )  go to  19923
      i9errc = i9errc + 1
      write(6,31554)
      go to  19623
19923 write(6,31553)
      go to  19623
19823 r9dif1 = abs ( r9ans1 )
      go to  19723
19623 continue
          write(6,316) r9ans1,r9dif1
  316     format(1h+,20x,  25h                0.123456 ,
     *               33x,  25h                  1.23456/
     *           1h ,78x,f25.5,12x,e10.3)
          r9ans1=dpar(1,2)
          r9comp=90.5321
      if (abs(r9comp).eq.0.0e0 )  go to  19824
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19724 if( r9dif1 .le. 5.e-6 )  go to  19924
      i9errc = i9errc + 1
      write(6,31554)
      go to  19624
19924 write(6,31553)
      go to  19624
19824 r9dif1 = abs ( r9ans1 )
      go to  19724
19624 continue
          write(6,416) r9ans1,r9dif1
  416     format(1h+,20x,  25h                9.05321  ,
     *               33x,  25h                  90.5321/
     *           1h ,78x,f25.4,12x,e10.3)
          r9ans1=dpar(2,2)
          r9comp=-1387.25
      if (abs(r9comp).eq.0.0e0 )  go to  19825
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19725 if( r9dif1 .le. 5.e-6 )  go to  19925
      i9errc = i9errc + 1
      write(6,31554)
      go to  19625
19925 write(6,31553)
      go to  19625
19825 r9dif1 = abs ( r9ans1 )
      go to  19725
19625 continue
          write(6,516) r9ans1,r9dif1
  516     format(1h+,20x,  25h                -138.725 ,
     *               33x,  25h                 -1387.25/
     *           1h ,78x,f25.2,12x,e10.3)
c
          read(5,117)  (final(i),i=1,3)
  117     format(3pf15.4)
          r9ans1=final(1)
          r9comp=1.087352
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23516
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23616 if( r9dif1 .le. 5.e-6 )  go to 23416
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23716
23416 write(6,31550)  i9data
      go to  23716
23516 r9dif1 = abs(r9ans1)
      go to  23616
23716 continue
          write(6,217) r9ans1,r9dif1
  217     format(1h+,20x,  25h               1087.352  ,
     *                5x,  21h            (3pf15.4),
     *                7x,  25h                 1.087352/
     *           1h ,78x,f25.6,12x,e10.3)
          r9ans1=final(2)
          r9comp=-0.01325479
      if (abs(r9comp).eq.0.0e0 )  go to  19826
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19726 if( r9dif1 .le. 5.e-6 )  go to  19926
      i9errc = i9errc + 1
      write(6,31554)
      go to  19626
19926 write(6,31553)
      go to  19626
19826 r9dif1 = abs ( r9ans1 )
      go to  19726
19626 continue
          write(6,317)   r9ans1,r9dif1
  317     format(1h+,20x,  25h               -13.25479 ,
     *               33x,  25h              -0.01325479/
     *           1h ,78x,f25.8,12x,e10.3)
          r9ans1=final(3)
          r9comp=0.1572531
      if (abs(r9comp).eq.0.0e0 )  go to  19827
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19727 if( r9dif1 .le. 5.e-6 )  go to  19927
      i9errc = i9errc + 1
      write(6,31554)
      go to  19627
19927 write(6,31553)
      go to  19627
19827 r9dif1 = abs ( r9ans1 )
      go to  19727
19627 continue
          write(6,417) r9ans1,r9dif1
  417     format(1h+,20x,  25h               157.2531  ,
     *               33x,  25h                0.1572531/
     *           1h ,78x,f25.7,12x,e10.3)
c
          read(5,118) final
  118     format(f15.7, 3pf10.2)
          r9ans1=final(1)
          r9comp=0.001325067
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23517
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23617 if( r9dif1 .le. 5.e-6 )  go to 23417
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23717
23417 write(6,31550)  i9data
      go to  23717
23517 r9dif1 = abs(r9ans1)
      go to  23617
23717 continue
          write(6,218) r9ans1,r9dif1
  218     format(1h+,20x,  25h            0.001325067  ,
     *                5x,  21h      (f15.7,3pf10.2),
     *                7x,  25h              0.001325067/
     *           1h ,78x,f25.9,12x,e10.3)
          r9ans1=final(2)
          r9comp=-0.001075429
      if (abs(r9comp).eq.0.0e0 )  go to  19828
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19728 if( r9dif1 .le. 5.e-6 )  go to  19928
      i9errc = i9errc + 1
      write(6,31554)
      go to  19628
19928 write(6,31553)
      go to  19628
19828 r9dif1 = abs ( r9ans1 )
      go to  19728
19628 continue
          write(6,318) r9ans1,r9dif1
  318     format(1h+,20x,  25h              -1.075429  ,
     *               33x,  25h             -0.001075429/
     *           1h ,78x,f25.9,12x,e10.3)
          r9ans1=final(3)
          r9comp=-0.1552694
      if (abs(r9comp).eq.0.0e0 )  go to  19829
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19729 if( r9dif1 .le. 5.e-6 )  go to  19929
      i9errc = i9errc + 1
      write(6,31554)
      go to  19629
19929 write(6,31553)
      go to  19629
19829 r9dif1 = abs ( r9ans1 )
      go to  19729
19629 continue
          write(6,418)  r9ans1,r9dif1
  418     format(1h+,20x,  25h               -155.2694 ,
     *               33x,  25h               -0.1552694/
     *           1h ,78x,f25.7,12x,e10.3)
      write(6,31506)
31506 format(1h1 / )
      write(6,31501)
c
          read(5,119) tot
  119     format(f10.3,(2pf15.7))
          r9ans1=tot(1,1)
          r9comp=-0.123456
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23518
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23618 if( r9dif1 .le. 5.e-6 )  go to 23418
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23718
23418 write(6,31550)  i9data
      go to  23718
23518 r9dif1 = abs(r9ans1)
      go to  23618
23718 continue
          write(6,219) r9ans1,r9dif1
  219     format(1h+,20x,  25h              -0.123456  ,
     *                5x,  21h    (f10.3,(2pf15.7)),
     *                7x,  25h                -0.123456/
     *           1h ,78x,f25.6,12x,e10.3)
          r9ans1=tot(2,1)
          r9comp=0.192543
      if (abs(r9comp).eq.0.0e0 )  go to  19830
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19730 if( r9dif1 .le. 5.e-6 )  go to  19930
      i9errc = i9errc + 1
      write(6,31554)
      go to  19630
19930 write(6,31553)
      go to  19630
19830 r9dif1 = abs ( r9ans1 )
      go to  19730
19630 continue
          write(6,319) r9ans1,r9dif1
  319     format(1h+,20x,  25h                 19.2543 ,
     *               33x,  25h                 0.192543/
     *           1h ,78x,f25.6,12x,e10.3)
          r9ans1=tot(1,2)
          r9comp=7.00263
      if (abs(r9comp).eq.0.0e0 )  go to  19831
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19731 if( r9dif1 .le. 5.e-6 )  go to  19931
      i9errc = i9errc + 1
      write(6,31554)
      go to  19631
19931 write(6,31553)
      go to  19631
19831 r9dif1 = abs ( r9ans1 )
      go to  19731
19631 continue
          write(6,419) r9ans1,r9dif1
  419     format(1h+,20x,  25h                700.263  ,
     *                33x, 25h                    7.003/
     *           1h ,78x,f25.3,12x,e10.3)
          r9ans1=tot(2,2)
          r9comp=0.492537
      if (abs(r9comp).eq.0.0e0 )  go to  19832
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19732 if( r9dif1 .le. 5.e-6 )  go to  19932
      i9errc = i9errc + 1
      write(6,31554)
      go to  19632
19932 write(6,31553)
      go to  19632
19832 r9dif1 = abs ( r9ans1 )
      go to  19732
19632 continue
          write(6,519) r9ans1,r9dif1
  519     format(1h+,20x,  25h                49.2537  ,
     *               33x,  25h                 0.492537/
     *           1h ,78x,f25.6,12x,e10.3)
c
          read(5,120) dpar
  120     format(2p2f15.3)
          r9ans1=dpar(1,1)
          r9comp=0.12345
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23519
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23619 if( r9dif1 .le. 5.e-6 )  go to 23419
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23719
23419 write(6,31550)  i9data
      go to  23719
23519 r9dif1 = abs(r9ans1)
      go to  23619
23719 continue
          write(6,220) r9ans1,r9dif1
  220     format(1h+,20x,  25h                 12.345  ,
     *                5x,  21h           (2p2f15.3),
     *                7x,  25h                  0.12345/
     *           1h ,78x,f25.5,12x,e10.3)
          r9ans1=dpar(2,1)
          r9comp=-0.0035248
      if (abs(r9comp).eq.0.0e0 )  go to  19833
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19733 if( r9dif1 .le. 5.e-6 )  go to  19933
      i9errc = i9errc + 1
      write(6,31554)
      go to  19633
19933 write(6,31553)
      go to  19633
19833 r9dif1 = abs ( r9ans1 )
      go to  19733
19633 continue
          write(6,320) r9ans1,r9dif1
  320     format(1h+,20x,  25h              -0.35248   ,
     *               33x,  25h               -0.0035248/
     *           1h ,78x,f25.7,12x,e10.3)
          r9ans1=dpar(1,2)
          r9comp=0.0010523
      if (abs(r9comp).eq.0.0e0 )  go to  19834
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19734 if( r9dif1 .le. 5.e-6 )  go to  19934
      i9errc = i9errc + 1
      write(6,31554)
      go to  19634
19934 write(6,31553)
      go to  19634
19834 r9dif1 = abs ( r9ans1 )
      go to  19734
19634 continue
          write(6,420) r9ans1,r9dif1
  420     format(1h+,20x,  25h            0.10523      ,
     *               33x,  25h                0.0010523/
     *           1h ,78x,f25.7,12x,e10.3)
          r9ans1=dpar(2,2)
          r9comp=-1.3527
      if (abs(r9comp).eq.0.0e0 )  go to  19835
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19735 if( r9dif1 .le. 5.e-6 )  go to  19935
      i9errc = i9errc + 1
      write(6,31554)
      go to  19635
19935 write(6,31553)
      go to  19635
19835 r9dif1 = abs ( r9ans1 )
      go to  19735
19635 continue
          write(6,520) r9ans1,r9dif1
  520     format(1h+,20x,  25h                 -135.27 ,
     *               33x,  25h                  -1.3527/
     *           1h ,78x,f25.4,12x,e10.3)
c
          read(5,121)  final(2),tot(2,1)
  121     format(1pf10.2)
          r9ans1=final(2)
          r9comp=0.103
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23520
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23620 if( r9dif1 .le. 5.e-6 )  go to 23420
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23720
23420 write(6,31550)  i9data
      go to  23720
23520 r9dif1 = abs(r9ans1)
      go to  23620
23720 continue
          write(6,221) r9ans1,r9dif1
  221     format(1h+,20x,  25h                     1. 3,
     *                5x,  21h              1pf10.2,
     *                 7x, 25h                     0.10/
     *           1h ,78x,f25.2,12x,e10.3)
          r9ans1=tot(2,1)
          r9comp=-9.08
      if (abs(r9comp).eq.0.0e0 )  go to  19836
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19736 if( r9dif1 .le. 5.e-6 )  go to  19936
      i9errc = i9errc + 1
      write(6,31554)
      go to  19636
19936 write(6,31553)
      go to  19636
19836 r9dif1 = abs ( r9ans1 )
      go to  19736
19636 continue
          write(6,321) r9ans1,r9dif1
  321     format(1h+,20x,  25h                    -9 .8,
     *               33x,  25h                    -9.08/
     *           1h ,78x,f25.2,12x,e10.3)
c
          read(5,122) blv1(2,2,2),dpar(2,1),dpar(1,2)
  122     format(2(5x,-1pf10.3),-3pf10.2)
          r9ans1=blv1(2,2,2)
          r9comp=12.05
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23521
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23621 if( r9dif1 .le. 5.e-6 )  go to 23421
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23721
23421 write(6,31550)  i9data
      go to  23721
23521 r9dif1 = abs(r9ans1)
      go to  23621
23721 continue
          write(6,222) r9ans1,r9dif1
  222     format(1h+,20x,  25h                    1.2 5,
     *                5x,  25h(2(5x,-1pf10.3),-3pf10.2),
     *                3x,  25h                    12.05/
     *           1h ,78x,f25.2,12x,e10.3)
          r9ans1=dpar(2,1)
          r9comp=-380.9
      if (abs(r9comp).eq.0.0e0 )  go to  19837
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19737 if( r9dif1 .le. 5.e-6 )  go to  19937
      i9errc = i9errc + 1
      write(6,31554)
      go to  19637
19937 write(6,31553)
      go to  19637
19837 r9dif1 = abs ( r9ans1 )
      go to  19737
19637 continue
          write(6,322) r9ans1,r9dif1
  322     format(1h+,20x,  25h                   -38. 9,
     *               33x,  25h                   -380.9/
     *           1h ,78x,f25.1,12x,e10.3)
          r9ans1=dpar(1,2)
          r9comp=-105.7
      if (abs(r9comp).eq.0.0e0 )  go to  19838
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19738 if( r9dif1 .le. 5.e-6 )  go to  19938
      i9errc = i9errc + 1
      write(6,31554)
      go to  19638
19938 write(6,31553)
      go to  19638
19838 r9dif1 = abs ( r9ans1 )
      go to  19738
19638 continue
          write(6,422) r9ans1,r9dif1
  422     format(1h+,20x,  25h                  -0.1 57,
     *               33x,  25h                   -105.7/
     *           1h ,78x,f25.1,12x,e10.3)
c
          read(5,123) dpar(1,1),dpar(2,1),tot(1,1)
  123     format(2(5x,-1pf10.4),0pf10.2)
          r9ans1=dpar(1,1)
          r9comp=35.052
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23522
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23622 if( r9dif1 .le. 5.e-6 )  go to 23422
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23722
23422 write(6,31550)  i9data
      go to  23722
23522 r9dif1 = abs(r9ans1)
      go to  23622
23722 continue
          write(6,223) r9ans1,r9dif1
  223     format(1h+,20x,  25h                   3.5 52,
     *               5x,   24h(2(5x,-1pf10.4),0pf10.2)
     *               4x,   25h                   35.052/
     *           1h ,78x,f25.3,12x,e10.3)
          r9ans1=dpar(2,1)
          r9comp=-90.075
      if (abs(r9comp).eq.0.0e0 )  go to  19839
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19739 if( r9dif1 .le. 5.e-6 )  go to  19939
      i9errc = i9errc + 1
      write(6,31554)
      go to  19639
19939 write(6,31553)
      go to  19639
19839 r9dif1 = abs ( r9ans1 )
      go to  19739
19639 continue
          write(6,323) r9ans1,r9dif1
  323     format(1h+,20x,  25h                  -9.  75,
     *               33x,  25h                  -90.075/
     *           1h ,78x,f25.3,12x,e10.3)
          r9ans1=tot(1,1)
          r9comp=0.35021
      if (abs(r9comp).eq.0.0e0 )  go to  19840
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19740 if( r9dif1 .le. 5.e-6 )  go to  19940
      i9errc = i9errc + 1
      write(6,31554)
      go to  19640
19940 write(6,31553)
      go to  19640
19840 r9dif1 = abs ( r9ans1 )
      go to  19740
19640 continue
          write(6,423) r9ans1,r9dif1
  423     format(1h+,20x,  25h                  0.35 21,
     *               33x,  25h                  0.35021/
     *           1h ,78x,f25.5,12x,e10.3)
c
          read(5,124)  blv1(2,1,2),blv2(1,2)
  124     format(3pf15.6)
          r9ans1=blv1(2,1,2)
          r9comp=0.140356e3
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23523
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23623 if( r9dif1 .le. 5.e-6 )  go to 23423
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23723
23423 write(6,31550)  i9data
      go to  23723
23523 r9dif1 = abs(r9ans1)
      go to  23623
23723 continue
          write(6,224) r9ans1,r9dif1
  224     format(1h+,20x,  25h              +0.14 356e3,
     *                5x,  21h            (3pf15.6),
     *                7x,  25h             0.140356e 03/
     *           1h ,78x,e25.6,12x,e10.3)
          r9ans1=blv2(1,2)
          r9comp=-0.525079e-9
      if (abs(r9comp).eq.0.0e0 )  go to  19841
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19741 if( r9dif1 .le. 5.e-6 )  go to  19941
      i9errc = i9errc + 1
      write(6,31554)
      go to  19641
19941 write(6,31553)
      go to  19641
19841 r9dif1 = abs ( r9ans1 )
      go to  19741
19641 continue
          write(6,324) r9ans1,r9dif1
  324     format(1h+,20x,  25h             -0.525 79e-9,
     *               33x,  25h            -0.525079e-09/
     *           1h ,78x,e25.6,12x,e10.3)
c
      write(6,31506)
      write(6,31501)
          read(5,125) tot(1,1),tot(1,2),final(1)
  125     format(2(5x,2pf15.5),f15.2)
          r9ans1=tot(1,1)
          r9comp=0.1520567e-4
      i9data = i9data + 1
      if( abs( r9comp) .eq. 0.0e0 ) go to  23524
      r9dif1 = abs((r9ans1 - r9comp)/r9comp)
23624 if( r9dif1 .le. 5.e-6 )  go to 23424
      i9errc = i9errc + 1
      write(6,31551)  i9data
      go to  23724
23424 write(6,31550)  i9data
      go to  23724
23524 r9dif1 = abs(r9ans1)
      go to  23624
23724 continue
          write(6,225) r9ans1,r9dif1
  225     format(1h+,20x,  25h              1.52 567e-5,
     *                5x,  21h(2(5x,2pf15.5),f15.2),
     *                7x,  25h            0.1520567e-04/
     *           1h ,78x,e25.7,12x,e10.3)
          r9ans1=tot(1,2)
          r9comp=-0.1250342e-10
      if (abs(r9comp).eq.0.0e0 )  go to  19842
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19742 if( r9dif1 .le. 5.e-6 )  go to  19942
      i9errc = i9errc + 1
      write(6,31554)
      go to  19642
19942 write(6,31553)
      go to  19642
19842 r9dif1 = abs ( r9ans1 )
      go to  19742
19642 continue
          write(6,325) r9ans1,r9dif1
  325     format(1h+,20x,  25h           -0.125 342e-10,
     *               33x,  25h           -0.1250342e-10/
     *           1h ,78x,e25.7,12x,e10.3)
          r9comp=0.1035202e-19
          r9ans1=final(1)
      if (abs(r9comp).eq.0.0e0 )  go to  19843
      r9dif1 = abs ((r9ans1 - r9comp)/r9comp)
19743 if( r9dif1 .le. 5.e-6 )  go to  19943
      i9errc = i9errc + 1
      write(6,31554)
      go to  19643
19943 write(6,31553)
      go to  19643
19843 r9dif1 = abs ( r9ans1 )
      go to  19743
19643 continue
          write(6,425) r9ans1,r9dif1
  425     format(1h+,20x,  25h            0.1035202e-19,
     *               33x,  25h            0.1035202e-19/
     *           1h ,78x,e25.7,12x,e10.3)
      stop
      end
