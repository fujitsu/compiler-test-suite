      implicit   integer ( a )
c
      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      integer    type
      integer    expl/19/
      common     ibln /nm/name
      equivalence   (ieee,iequ)
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
      ipre = 1
      go  to  ( 501 ),ipre
  601 go  to  502
  501 i9ans1 = 1
  502 i9data = i9data + 1
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
      ipre = 1
      go  to  900
  510 if( ipre - jsw ) 512,511,512
  511 i9ans1 = 1
  512 i9data = i9data + 1
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
      ipre = 2
      go  to  900
  520 if( ipre - jsw )  522,521,522
  521 i9ans1 = 1
  522 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23002
      if(i9keyc.eq.1) go to 23102
      write(6,31510) i9data
      go to 23102
23002 if(i9keyc.eq.1) go to 23202
      write(6,31500) i9data
      go to 23202
23102 i9errc = i9errc + 1
23202 i9ans1=0
  529 continue
c
      aimp = 2
      go  to  ( 531,530,531 ),aimp
  602 go  to  531
  530 i9ans1 = 1
  531 i9data = i9data + 1
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
      aimp = 3
      go  to  910
  540 if( aimp - jsw )  542,541,542
  541 i9ans1 = 1
  542 i9data = i9data + 1
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
      aimp = 5
      go  to  910
  550 if( aimp - jsw )  552,551,552
  551 i9ans1 = 1
  552 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23005
      if(i9keyc.eq.1) go to 23105
      write(6,31510) i9data
      go to 23105
23005 if(i9keyc.eq.1) go to 23205
      write(6,31500) i9data
      go to 23205
23105 i9errc = i9errc + 1
23205 i9ans1=0
  559 continue
c
      type = 1
      go  to  920
  560 if( type - jsw )  562,561,562
  561 i9ans1 = 1
  562 i9data = i9data + 1
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
      type = 2
      go  to  920
  570 if( type - jsw )  572,571,572
  571 i9ans1 = 1
  572 i9data = i9data + 1
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
      type = 3
      go  to  920
  580 if( type - jsw )  582,581,582
  581 i9ans1 = 1
  582 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23008
      if(i9keyc.eq.1) go to 23108
      write(6,31510) i9data
      go to 23108
23008 if(i9keyc.eq.1) go to 23208
      write(6,31500) i9data
      go to 23208
23108 i9errc = i9errc + 1
23208 i9ans1=0
c
      type = 4
      go  to  920
  590 if( type - jsw )  592,591,592
  591 i9ans1 = 1
  592 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23009
      if(i9keyc.eq.1) go to 23109
      write(6,31510) i9data
      go to 23109
23009 if(i9keyc.eq.1) go to 23209
      write(6,31500) i9data
      go to 23209
23109 i9errc = i9errc + 1
23209 i9ans1=0
c
      type = 5
      go  to  920
 100  if( type - jsw )  102,101,102
  101 i9ans1 = 1
  102 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23010
      if(i9keyc.eq.1) go to 23110
      write(6,31510) i9data
      go to 23110
23010 if(i9keyc.eq.1) go to 23210
      write(6,31500) i9data
      go to 23210
23110 i9errc = i9errc + 1
23210 i9ans1=0
c
      type = 6
      go  to  920
  110 if( type - jsw )  112,111,112
  111 i9ans1 = 1
  112 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23011
      if(i9keyc.eq.1) go to 23111
      write(6,31510) i9data
      go to 23111
23011 if(i9keyc.eq.1) go to 23211
      write(6,31500) i9data
      go to 23211
23111 i9errc = i9errc + 1
23211 i9ans1=0
c
      type = 7
      go  to  920
  120 if( type - jsw )  122,121,122
  121 i9ans1 = 1
  122 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23012
      if(i9keyc.eq.1) go to 23112
      write(6,31510) i9data
      go to 23112
23012 if(i9keyc.eq.1) go to 23212
      write(6,31500) i9data
      go to 23212
23112 i9errc = i9errc + 1
23212 i9ans1=0
c
      type = 8
      go  to  920
  130 if( type - jsw )  132,131,132
  131 i9ans1 = 1
  132 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23013
      if(i9keyc.eq.1) go to 23113
      write(6,31510) i9data
      go to 23113
23013 if(i9keyc.eq.1) go to 23213
      write(6,31500) i9data
      go to 23213
23113 i9errc = i9errc + 1
23213 i9ans1=0
c
      type = 9
      go  to  920
  140 if( type - jsw )  142,141,142
  141 i9ans1 = 1
  142 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23014
      if(i9keyc.eq.1) go to 23114
      write(6,31510) i9data
      go to 23114
23014 if(i9keyc.eq.1) go to 23214
      write(6,31500) i9data
      go to 23214
23114 i9errc = i9errc + 1
23214 i9ans1=0
      if(i9keyc.eq.1) go to 25900
      write(6,31570)
25900 continue
c
      type = 10
      go  to  920
  150 if( type - jsw )  152,151,152
  151 i9ans1 = 1
  152 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23015
      if(i9keyc.eq.1) go to 23115
      write(6,31510) i9data
      go to 23115
23015 if(i9keyc.eq.1) go to 23215
      write(6,31500) i9data
      go to 23215
23115 i9errc = i9errc + 1
23215 i9ans1=0
  159 continue
c
      go  to  ( 161,161,161,161,161,161,161,161,161,161,
     1          161,161,161,161,161,161,161,161,160,161 ),expl
  603 go  to  161
  160 i9ans1 = 1
  161 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23016
      if(i9keyc.eq.1) go to 23116
      write(6,31510) i9data
      go to 23116
23016 if(i9keyc.eq.1) go to 23216
      write(6,31500) i9data
      go to 23216
23116 i9errc = i9errc + 1
23216 i9ans1=0
c
      iequ = 11
      go  to  940
  170 if( iequ - jsw )  172,171,172
  171 i9ans1 = 1
  172 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23017
      if(i9keyc.eq.1) go to 23117
      write(6,31510) i9data
      go to 23117
23017 if(i9keyc.eq.1) go to 23217
      write(6,31500) i9data
      go to 23217
23117 i9errc = i9errc + 1
23217 i9ans1=0
c
      iequ = 21
      go  to  940
  180 if( iequ - jsw )  182,181,182
  181 i9ans1 = 1
  182 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23018
      if(i9keyc.eq.1) go to 23118
      write(6,31510) i9data
      go to 23118
23018 if(i9keyc.eq.1) go to 23218
      write(6,31500) i9data
      go to 23218
23118 i9errc = i9errc + 1
23218 i9ans1=0
c
      iequ = 31
      go  to  940
  190 if( iequ - jsw )  192,191,192
  191 i9ans1 = 1
  192 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23019
      if(i9keyc.eq.1) go to 23119
      write(6,31510) i9data
      go to 23119
23019 if(i9keyc.eq.1) go to 23219
      write(6,31500) i9data
      go to 23219
23119 i9errc = i9errc + 1
23219 i9ans1=0
c
      iequ = 41
      go  to  940
  200 if( iequ - jsw )  202,201,202
  201 i9ans1 = 1
  202 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23020
      if(i9keyc.eq.1) go to 23120
      write(6,31510) i9data
      go to 23120
23020 if(i9keyc.eq.1) go to 23220
      write(6,31500) i9data
      go to 23220
23120 i9errc = i9errc + 1
23220 i9ans1=0
c
      iequ = 51
      go  to  940
  210 if( iequ - jsw )  212,211,212
  211 i9ans1 = 1
  212 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23021
      if(i9keyc.eq.1) go to 23121
      write(6,31510) i9data
      go to 23121
23021 if(i9keyc.eq.1) go to 23221
      write(6,31500) i9data
      go to 23221
23121 i9errc = i9errc + 1
23221 i9ans1=0
c
      ibln = 1
      go  to  950
  220 if( ibln - jsw )  222,221,222
  221 i9ans1 = 1
  222 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23022
      if(i9keyc.eq.1) go to 23122
      write(6,31510) i9data
      go to 23122
23022 if(i9keyc.eq.1) go to 23222
      write(6,31500) i9data
      go to 23222
23122 i9errc = i9errc + 1
23222 i9ans1=0
c
      ibln = 49
      go  to  950
  230 if( ibln - jsw )  232,231,232
  231 i9ans1 = 1
  232 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23023
      if(i9keyc.eq.1) go to 23123
      write(6,31510) i9data
      go to 23123
23023 if(i9keyc.eq.1) go to 23223
      write(6,31500) i9data
      go to 23223
23123 i9errc = i9errc + 1
23223 i9ans1=0
c
      ibln = 100
      go  to  950
  240 if( ibln - jsw )  242,241,242
  241 i9ans1 = 1
  242 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23024
      if(i9keyc.eq.1) go to 23124
      write(6,31510) i9data
      go to 23124
23024 if(i9keyc.eq.1) go to 23224
      write(6,31500) i9data
      go to 23224
23124 i9errc = i9errc + 1
23224 i9ans1=0
c
      name = 4
      go  to  ( 251,251,251,250,251,251 ),name
  604 go  to  251
  250 i9ans1 = 1
  251 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23025
      if(i9keyc.eq.1) go to 23125
      write(6,31510) i9data
      go to 23125
23025 if(i9keyc.eq.1) go to 23225
      write(6,31500) i9data
      go to 23225
23125 i9errc = i9errc + 1
23225 i9ans1=0
c
      iarg = 1
      call  sdab2 ( iarg,jsw )
      if ( jsw )  261,260,261
  260 i9ans1 = 1
  261 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23026
      if(i9keyc.eq.1) go to 23126
      write(6,31510) i9data
      go to 23126
23026 if(i9keyc.eq.1) go to 23226
      write(6,31500) i9data
      go to 23226
23126 i9errc = i9errc + 1
23226 i9ans1=0
c
      iarg = 3
      call  sdab6 ( iarg,jsw )
      if( jsw )  271,270,271
  270 i9ans1 = 1
  271 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23027
      if(i9keyc.eq.1) go to 23127
      write(6,31510) i9data
      go to 23127
23027 if(i9keyc.eq.1) go to 23227
      write(6,31500) i9data
      go to 23227
23127 i9errc = i9errc + 1
23227 i9ans1=0
      go  to  700
  900 go  to  ( 901,902 ),ipre
  606 jsw = 0
      go  to  903
  901 jsw = 1
      go  to  903
  902 jsw = 2
  903 if( ipre - 1 )  529,510,520
  910 go  to  ( 911,911,912,911,913 ),aimp
  911 jsw = 0
      go  to  914
  912 jsw = 3
      go  to  914
  913 jsw = 5
  914 if( aimp - 3 )  559,540,550
  920 go  to  ( 921,922,923,924,925,926,927,928,929,930 ),type
  607 jsw = 0
      go  to  931
  921 jsw = 1
      go  to  931
  922 jsw = 2
      go  to  931
  923 jsw = 3
      go  to  931
  924 jsw = 4
      go  to  931
  925 jsw = 5
      go  to  931
  926 jsw = 6
      go  to  931
  927 jsw = 7
      go  to  931
  928 jsw = 8
      go  to  931
  929 jsw = 9
      go  to  931
  930 jsw = 10
  931 if( type - 2 )  560,570,932
  932 if( type - 4 )  580,590,933
  933 if( type - 6 )  100,110,934
  934 if( type - 8 )  120,130,935
  935 if( type - 10 )  140,150,159
  940 go  to  ( 941,941,941,941,941,941,941,941,941,941,942,
     1              941,941,941,941,941,941,941,941,941,943,
     2              941,941,941,941,941,941,941,941,941,944,
     3              941,941,941,941,941,941,941,941,941,945,
     4              941,941,941,941,941,941,941,941,941,946),iequ
  941 jsw = 0
      go  to  947
  942 jsw = 11
      go  to  947
  943 jsw = 21
      go  to  947
  944 jsw = 31
      go  to  947
  945 jsw = 41
      go  to  947
  946 jsw = 51
  947 if( iequ - 21 )  170,180,948
  948 if( iequ - 41 )  190,200,210
  950 go  to  ( 952,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,
     1            9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,953,9,
     2            9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,
     3            9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,954 ),
     4            ibln
    9 jsw = 0
      go  to  955
  952 jsw = 1
      go  to  955
  953 jsw = 49
      go  to  955
  954 jsw = 100
  955 if( ibln - 49 )  220,230,240
  700   continue
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      subroutine sdab2(idum,isw)
      go  to  ( 801,800,800 ),idum
  800 isw = 1
  802 return
  801 isw = 0
      go  to  802
      end

      subroutine sdab6(idum,isw)
      go  to  ( 800,800,801 ),idum
  800 isw = 1
  802 return
  801 isw = 0
      go  to  802
      end
