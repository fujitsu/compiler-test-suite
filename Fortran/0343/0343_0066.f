          integer   ffab1,ffab2,ffab3,ffab4,ffab5,ffab6,ffab7
          integer   ffab8
          integer  uff1,uff2
      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
          dimension idim11(80),idim12(10)
          dimension idim21(8,10),idim22(3,5)
          dimension idim31(3,4,5),idim32(2,3,5)
          dimension rdim11(20)
          dimension rdim21(5,4)
          common    ibcom1(25)
          data      idim11/2*12,3*13,14,-56,8,4,-2,23,3*6,-7,5*9,60*7/
          data      idim12/30,-46,1234,2*88,7,9,-798,2*3/
          data      idim21/5*3,5*31,20*8,-120,30*12,9*2,10*-3/
          data      idim22/2,3,5,7,11,13,17,3,19,23,5,2,13,7,-11/
          data      idim31/10*59,20*1001,1025,34,83,22,1033,25*28/
          data      idim32/5*212,319,64,91,3,129,10*88,5*9,5*332/
          data      rdim11/961.84,3*280.56,10*223.74,2*98.33,4*50.00/
          data      rdim21/839.07,3*260.33,10*103.06,2*40.06,4*26.70/
      uff1(k1,k2) = k1*k1-2*k1*k2
          uff2(m1,m2,m3) = m1*ffab2(m2,m3)
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
c
          do 100 i=1,5
          ibcom1(i) = 9
          ibcom1(i+5) = 31
          ibcom1(i+10) = 31
  100     ibcom1(i+15) = 13
          ibcom1(21) = 91
          ibcom1(22) = 91
          ibcom1(23) =124
          ibcom1(24) =124
          ibcom1(25) =124
c
          ival1 = 21
          i9ans1 = ffab1(-52,ival1,idim11(9))
          i9comp = 161
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
          ival1 = 131
          i9ans1 = ffab1(ival1-126,idim21(2,5)/4+2,(ival1-99)*3-86)
          i9comp = 12
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
          i9ans1 = ffab1(-uff1(7,3),ffab2(456,423),(ffab2(156,702)/6-31)
     1             *4-uff1(15,26))
          i9comp = -7*33*795/(-7+33+795)
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
          i1 = 7
          ival1 = 12
          i9ans1 = ffab1(idim21(4,10)+ffab2(uff1(ival1,6)-567,391)
     1             ,ffab2(ival1*23,283+i1)
     2             ,(i1+ival1)*76-1439)
          i9comp = 68
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
          i9ans1 = ffab3(idim11,idim12(6))
          i9comp = 21
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
          i9ans1 = ffab4(idim21,idim22(2,3))
          i9comp = 46
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
          i9ans1 = ffab5(idim31,idim32(2,3,1))
          i9comp = 714
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
          i9ans1 = ffab8(idim12,idim11,idim21(3,2),idim31)
          i9comp = idim12(3)*(idim21(3,2)-idim31(3,2,3))
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
          rval1 = 30.8
          i9ans1 = ffab6(rdim11(17),rval1*12.6+31.22,(rval1-5.3)/5+15.4
     1             ,rdim11,rdim21)
          i9comp = 9251
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
c
          isum = 0
          do 10 i=2,7,2
          isum = isum + ffab2(12,i)
   10     continue
          i9ans1 = isum
          i9comp = 24
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
c
          i9ans1 = 12345
          if(ffab2(55,36)-19)20,30,20
   20     i9ans1 = 67890
          go to 40
   30     i9ans1 = 99999
   40     i9comp = 99999
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
c
          i9ans1 = uff2(16,463,229)
          i9comp = 3744
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
c
          i9ans1 = ffab7(ffab2(493,401))
          i9comp = 16100
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23312
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23512
      write(6,31530)
      go to 23412
23312 if( i9keyc.eq.1 ) go to 23512
      write(6,31520)
23412 write(6,31600) i9data,i9ans1,i9comp
23512 i9ans1=0
c
          isum = 0
          do 50 i=2,7,2
   50     isum = isum + ffab2(12,i)
          i9ans1 = isum
          i9comp = 24
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23313
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23513
      write(6,31530)
      go to 23413
23313 if( i9keyc.eq.1 ) go to 23513
      write(6,31520)
23413 write(6,31600) i9data,i9ans1,i9comp
23513 i9ans1=0
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

          integer function ffab1 (ivalf1,ivalf2,ivalf3)
          ffab1 = 0
          if(ivalf1+ivalf2+ivalf3.eq.0) return
          ffab1 = ivalf1*ivalf2*ivalf3/(ivalf1+ivalf2+ivalf3)
          return
          end

          integer function ffab2 (ivalf1,ivalf2)
          ffab2 = ivalf1-ivalf2
          if(ffab2.lt.0) ffab2 = -ffab2
          return
          end

          integer function ffab3(idimf1,idimf2)
          dimension idimf1(1),idimf2(1)
          ffab3 = 0
          j = idimf2(1)
          do 10 i=1,j
   10     ffab3 = ffab3 + idimf1(i)
          return
          end

          integer function ffab4(idimf2,jdimf2)
          dimension idimf2(8,10),jdimf2(3,1)
          ffab4 = 0
          if(jdimf2(1,1).le.1) go to 20
          do 10 j=1,10
          do 10 i=1,8
          kv = idimf2(i,j)/jdimf2(1,1)
          if(idimf2(i,j).eq.kv*jdimf2(1,1)) ffab4 = ffab4+1
   10     continue
          return
   20     ffab4 = -1
          return
          end

          integer function ffab5(idimf3,jdimf3)
          dimension idimf3(3,4,5),  jdimf3(2,3,1)
          imax = idimf3(1,1,1)
          do 20 k=1,5
          do 20 j=1,4
          do 20 i=1,3
          if(imax-idimf3(i,j,k)) 10,20,20
   10     imax = idimf3(i,j,k)
   20     continue
          ffab5 = imax - jdimf3(1,1,1)
          return
          end

          integer function ffab6(rvf1,rvf2,rvf3,rdim1,rdim2)
          dimension rdim1(5,4),rdim2(5,4)
          sum =0.
          do 10 j=1,4
          do 10 i=1,5
   10     sum = sum + rdim1(i,j) - rdim2(i,j)
          ffab6 = (sum/rvf1+rvf2)*rvf3
          return
          end

          integer function ffab7(ivalf)
          common ibcomf(25)
          isum = 0
          do 10 i=2,25,5
   10     isum = isum + ibcomf(i)
          ffab7 = isum * ivalf
          return
          end

          integer function ffab8(id2,id31,id32,id1)
          dimension id2(2,5),id31(5,4,4),id32(3,5,4),id1(60)
          if(id31(5,2,1).lt.0) go to 10
          ffab8 = -999
          return
   10     ffab8 = id2(1,2)*(id32(1,1,1)-id1(30))
          return
          end
