      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
         data  i1211,i1212,i1213/1,3,6/,i1221,i1222,i1223/20,4,25/
         data  i1231,i1232,i1233/98,98,99/
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
         i1111=41
         do  1  i=i1111,41
         i9ans1=i
    1    continue
         i9comp=i1111
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
         i1122=1
         do  2  i=1,i1122,79
         i9ans1=i
    2    continue
         i9comp=i1122
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
         i1133=1
         do 3 i=1,3,i1133
         i9ans1=i9ans1+i
    3    continue
         i9comp=6
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
         i1141=11
         i1142=14
         do  4  i=i1141,i1142,3
         i9ans1 = i9ans1+i
    4    continue
         i9comp=25
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
         do 5 i=1,i1212,i1213
         i9ans1=i
    5    continue
         i9comp= 1
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
         do  6  i=i1221,50,i1223
         i9ans1=i9ans1+i
    6    continue
         i9comp=65
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
         do 7 i=i1231,i1232,i1233
         i9ans1=i9ans1+i
    7    continue
         i9comp=98
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
         do 8 i=1,1
         i9ans1=i9ans1+i
    8    continue
         i9comp=1
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
         read(5,500) i1311,i1312,i1313
  500 format(3i5)
         do 9 i=1,i1312,i1313
         i9ans1=i9ans1+i
    9    continue
         i9comp=36
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
         read(5,500) i1321,i1322,i1323
         do  10  i=i1321,11,i1323
         i9ans1=i9ans1+i
   10    continue
         i9comp=12
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
         read(5,500) i1331,i1332,i1333
         do 11 i=i1331,i1332,i1333
         i9ans1=i9ans1+i
   11    continue
         i9comp=64
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
         do 12 i=1,4,2
         i9ans1=i9ans1+i
   12    continue
         i9comp=4
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
         i1411 =11111
         do  13  i=i1411,32767,10000
         i9ans1=i9ans1+i
   13    continue
         i9comp=63333
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
         i1421=32123
         i1422=32767
         i1423=321
         do 14 i=i1421,i1422,i1423
         i9ans1=i9ans1+i
   14    continue
         i9comp=97332
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
         i1433=32767
         do  15  i=1,800,i1433
         i9ans1=i9ans1+i
   15    continue
         i9comp=1
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23314
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23514
      write(6,31530)
      go to 23414
23314 if( i9keyc.eq.1 ) go to 23514
      write(6,31520)
23414 write(6,31600) i9data,i9ans1,i9comp
23514 i9ans1=0
      if(i9keyc.eq.1) go to 25900
      write(6,31570)
25900 continue
c
         i1441=1
         i1442=32766
         do 16 i=i1441,i1442,32767
         i9ans1=i9ans1+i
   16    continue
         i9comp=1
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23315
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23515
      write(6,31530)
      go to 23415
23315 if( i9keyc.eq.1 ) go to 23515
      write(6,31520)
23415 write(6,31600) i9data,i9ans1,i9comp
23515 i9ans1=0
c
         i1451=32767
         i1453=1
         do 17 i=i1451,32767,i1453
         i9ans1=i9ans1+i
   17    continue
         i9comp=32767
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23316
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23516
      write(6,31530)
      go to 23416
23316 if( i9keyc.eq.1 ) go to 23516
      write(6,31520)
23416 write(6,31600) i9data,i9ans1,i9comp
23516 i9ans1=0
c
         do 18 i=32767,32767,1
         i9ans1=i9ans1+i
   18    continue
         i9comp=32767
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23317
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23517
      write(6,31530)
      go to 23417
23317 if( i9keyc.eq.1 ) go to 23517
      write(6,31520)
23417 write(6,31600) i9data,i9ans1,i9comp
23517 i9ans1=0
c
         i1471=1
          do 19 i=i1471,32767,32767
         i9ans1=i9ans1+i
   19     continue
         i9comp= 1
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23318
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23518
      write(6,31530)
      go to 23418
23318 if( i9keyc.eq.1 ) go to 23518
      write(6,31520)
23418 write(6,31600) i9data,i9ans1,i9comp
23518 i9ans1=0
c
         i1482=32767
         i1483=32767
         do 20 i=1,i1482,i1483
         i9ans1=i9ans1+i
   20    continue
         i9comp= 1
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to 23319
      i9errc = i9errc + 1
      if( i9keyc.eq.1) go to 23519
      write(6,31530)
      go to 23419
23319 if( i9keyc.eq.1 ) go to 23519
      write(6,31520)
23419 write(6,31600) i9data,i9ans1,i9comp
23519 i9ans1=0
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end
