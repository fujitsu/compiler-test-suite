      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
c
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
  100     format(2i15)
  101     format(3i15)
  102     format(4i15)
  104     format(5i12)
  200     format(1h ,78x,i25)
c
          read(5,100) i1,i2
          i9ans1=i1
          i9comp=10
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23000
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23100
23000 write(6,31550) i9data
23100 continue
          write(6,301)
  301     format(1h+,20x,  25h                      +10,
     *                5x,  21h                 2i15,
     *                7x,  25h                       10)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=100
      if (iabs(i9ans1-i9comp).eq.0)  go to  23200
      i9errc = i9errc + 1
      write(6,31554)
      go to  23300
23200 write(6,31553)
23300 continue
          write(6,401)
  401     format(1h+,20x,  25h                     +100,
     *                5x,  21h                     ,
     *                7x,  25h                      100)
          write(6,200) i9ans1
c
          read(5,101) i1,i2,i3
          i9ans1=i1
          i9comp=99
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23001
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23101
23001 write(6,31550) i9data
23101 continue
          write(6,302)
  302     format(1h+,20x,  25h                      +99,
     *                5x,  21h                 3i15,
     *                7x,  25h                       99)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=999
      if (iabs(i9ans1-i9comp).eq.0)  go to  23201
      i9errc = i9errc + 1
      write(6,31554)
      go to  23301
23201 write(6,31553)
23301 continue
          write(6,402)
  402     format(1h+,20x,  25h                     +999,
     *                5x,  21h                     ,
     *                7x,  25h                      999)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=9999
      if (iabs(i9ans1-i9comp).eq.0)  go to  23202
      i9errc = i9errc + 1
      write(6,31554)
      go to  23302
23202 write(6,31553)
23302 continue
          write(6,502)
  502     format(1h+,20x,  25h                    +9999,
     *                5x,  21h                     ,
     *                7x,  25h                     9999)
          write(6,200) i9ans1
c
          read(5,102) i1,i2,i3,i4
          i9ans1=i1
          i9comp=1
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23002
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23102
23002 write(6,31550) i9data
23102 continue
          write(6,303)
  303     format(1h+,20x,  25h                       +1,
     *                5x,  21h                 4i15,
     *                7x,  25h                        1)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=123
      if (iabs(i9ans1-i9comp).eq.0)  go to  23203
      i9errc = i9errc + 1
      write(6,31554)
      go to  23303
23203 write(6,31553)
23303 continue
          write(6,403)
  403     format(1h+,20x,  25h                     +123,
     *             5x,     21h                     ,
     *             7x,     25h                      123)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=1234
      if (iabs(i9ans1-i9comp).eq.0)  go to  23204
      i9errc = i9errc + 1
      write(6,31554)
      go to  23304
23204 write(6,31553)
23304 continue
          write(6,503)
  503     format(1h+,20x,  25h                    +1234,
     *                5x,  21h                     ,
     *                7x,  25h                     1234)
          write(6,200) i9ans1
          i9ans1=i4
          i9comp=12345
      if (iabs(i9ans1-i9comp).eq.0)  go to  23205
      i9errc = i9errc + 1
      write(6,31554)
      go to  23305
23205 write(6,31553)
23305 continue
          write(6,603)
  603     format(1h+,20x,  25h                   +12345,
     *                5x,  21h                     ,
     *                7x,  25h                    12345)
          write(6,200) i9ans1
c
      read(5,104) i1,i2,i3,i4,i5
          i9ans1=i1
          i9comp=32
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23003
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23103
23003 write(6,31550) i9data
23103 continue
          write(6,304)
  304     format(1h+,20x,  25h                      +32,
     *                5x,  21h                 5i12,
     *                7x,  25h                       32)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=100
      if (iabs(i9ans1-i9comp).eq.0)  go to  23206
      i9errc = i9errc + 1
      write(6,31554)
      go to  23306
23206 write(6,31553)
23306 continue
          write(6,404)
  404     format(1h+,20x,  25h                     +100,
     *                5x,  21h                     ,
     *                7x,  25h                      100)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=234
      if (iabs(i9ans1-i9comp).eq.0)  go to  23207
      i9errc = i9errc + 1
      write(6,31554)
      go to  23307
23207 write(6,31553)
23307 continue
          write(6,504)
  504     format(1h+,20x,  25h                     +234,
     *                5x,  21h                     ,
     *                7x,  25h                      234)
          write(6,200) i9ans1
          i9ans1=i4
          i9comp=2147483647
      if (iabs(i9ans1-i9comp).eq.0)  go to  23208
      i9errc = i9errc + 1
      write(6,31554)
      go to  23308
23208 write(6,31553)
23308 continue
          write(6,604)
  604     format(1h+,20x,  25h              +2147483647,
     *                5x,  21h                     ,
     *                7x,  25h               2147483647)
          write(6,200) i9ans1
          i9ans1=i5
          i9comp=0
      if (iabs(i9ans1-i9comp).eq.0)  go to  23209
      i9errc = i9errc + 1
      write(6,31554)
      go to  23309
23209 write(6,31553)
23309 continue
          write(6,704)
  704     format(1h+,20x,  25h                       +0,
     *                5x,  21h                     ,
     *                7x,  25h                        0)
          write(6,200) i9ans1
c
          read(5,100) i1,i2
          i9ans1=i1
          i9comp=-312
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23004
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23104
23004 write(6,31550) i9data
23104 continue
          write(6,305)
  305     format(1h+,20x,  25h                     -312,
     *                5x,  21h                 2i15,
     *                7x,  25h                     -312)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=-5678
      if (iabs(i9ans1-i9comp).eq.0)  go to  23210
      i9errc = i9errc + 1
      write(6,31554)
      go to  23310
23210 write(6,31553)
23310 continue
          write(6,405)
  405     format(1h+,20x,  25h                    -5678,
     *                5x,  21h                     ,
     *                7x,  25h                    -5678)
          write(6,200) i9ans1
      write(6,31504)
31504 format(1h1 / )
      write(6,31501)
c
          read(5,101) i1,i2,i3
          i9ans1=i1
          i9comp=-12
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23005
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23105
23005 write(6,31550) i9data
23105 continue
          write(6,306)
  306     format(1h+,20x,  25h                      -12,
     *                5x,  21h                 3i15,
     *                7x,  25h                      -12)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=-5678
      if (iabs(i9ans1-i9comp).eq.0)  go to  23211
      i9errc = i9errc + 1
      write(6,31554)
      go to  23311
23211 write(6,31553)
23311 continue
          write(6,406)
  406     format(1h+,20x,  25h                    -5678,
     *                5x,  21h                     ,
     *                7x,  25h                    -5678)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=-2147483647
      if (iabs(i9ans1-i9comp).eq.0)  go to  23212
      i9errc = i9errc + 1
      write(6,31554)
      go to  23312
23212 write(6,31553)
23312 continue
          write(6,506)
  506     format(1h+,20x,  25h              -2147483647,
     *                5x,  21h                     ,
     *                7x,  25h              -2147483647)
          write(6,200) i9ans1
c
          read(5,102) i1,i2,i3,i4
          i9ans1=i1
          i9comp=-1
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23006
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23106
23006 write(6,31550) i9data
23106 continue
          write(6,307)
  307     format(1h+,20x,  25h                       -1,
     *                5x,  21h                 4i15,
     *                7x,  25h                       -1)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=-234
      if (iabs(i9ans1-i9comp).eq.0)  go to  23213
      i9errc = i9errc + 1
      write(6,31554)
      go to  23313
23213 write(6,31553)
23313 continue
          write(6,407)
  407     format(1h+,20x,  25h                     -234,
     *                5x,  21h                     ,
     *                7x,  25h                     -234)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=-2
      if (iabs(i9ans1-i9comp).eq.0)  go to  23214
      i9errc = i9errc + 1
      write(6,31554)
      go to  23314
23214 write(6,31553)
23314 continue
          write(6,507)
  507     format(1h+,20x,  25h                       -2,
     *                5x,  21h                     ,
     *                7x,  25h                       -2)
          write(6,200) i9ans1
          i9ans1=i4
          i9comp=-40000
      if (iabs(i9ans1-i9comp).eq.0)  go to  23215
      i9errc = i9errc + 1
      write(6,31554)
      go to  23315
23215 write(6,31553)
23315 continue
          write(6,607)
  607     format(1h+,20x,  25h                   -40000,
     *                5x,  21h                     ,
     *                7x,  25h                   -40000)
          write(6,200) i9ans1
c
      read(5,104) i1,i2,i3,i4,i5
          i9ans1=i1
          i9comp=0
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23007
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23107
23007 write(6,31550) i9data
23107 continue
          write(6,308)
  308     format(1h+,20x,  25h                       -0,
     *                5x,  21h                 5i12,
     *                7x,  25h                        0)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=-1234
      if (iabs(i9ans1-i9comp).eq.0)  go to  23216
      i9errc = i9errc + 1
      write(6,31554)
      go to  23316
23216 write(6,31553)
23316 continue
          write(6,408)
  408     format(1h+,20x,  25h                    -1234,
     *                5x,  21h                     ,
     *                7x,  25h                    -1234)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=-56
      if (iabs(i9ans1-i9comp).eq.0)  go to  23217
      i9errc = i9errc + 1
      write(6,31554)
      go to  23317
23217 write(6,31553)
23317 continue
          write(6,508)
  508     format(1h+,20x,  25h                      -56,
     *                5x,  21h                     ,
     *                7x,  25h                      -56)
          write(6,200) i9ans1
          i9ans1=i4
          i9comp=-7
      if (iabs(i9ans1-i9comp).eq.0)  go to  23218
      i9errc = i9errc + 1
      write(6,31554)
      go to  23318
23218 write(6,31553)
23318 continue
          write(6,608)
  608     format(1h+,20x,  25h                       -7,
     *                5x,  21h                     ,
     *                7x,  25h                       -7)
          write(6,200) i9ans1
          i9ans1=i5
          i9comp=-890
      if (iabs(i9ans1-i9comp).eq.0)  go to  23219
      i9errc = i9errc + 1
      write(6,31554)
      go to  23319
23219 write(6,31553)
23319 continue
          write(6,708)
  708     format(1h+,20x,  25h                     -890,
     *                5x,  21h                     ,
     *                7x,  25h                     -890)
          write(6,200) i9ans1
c
          read(5,100) i1,i2
          i9ans1=i1
          i9comp=123
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23008
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23108
23008 write(6,31550) i9data
23108 continue
          write(6,309)
  309     format(1h+,20x,  25h                      123,
     *                5x,  21h                 2i15,
     *                7x,  25h                      123)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=456789
      if (iabs(i9ans1-i9comp).eq.0)  go to  23220
      i9errc = i9errc + 1
      write(6,31554)
      go to  23320
23220 write(6,31553)
23320 continue
          write(6,409)
  409     format(1h+,20x,  25h                   456789,
     *                5x,  21h                     ,
     *                7x,  25h                   456789)
          write(6,200) i9ans1
      write(6,31505)
31505 format(1h1 / )
      write(6,31501)
c
          read(5,101) i1,i2,i3
          i9ans1=i1
          i9comp=123
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23009
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23109
23009 write(6,31550) i9data
23109 continue
          write(6,310)
  310     format(1h+,20x,  25h                      123,
     *                5x,  21h                 3i15,
     *                7x,  25h                      123)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=2147483647
      if (iabs(i9ans1-i9comp).eq.0)  go to  23221
      i9errc = i9errc + 1
      write(6,31554)
      go to  23321
23221 write(6,31553)
23321 continue
          write(6,410)
  410     format(1h+,20x,  25h               2147483647,
     *                5x,  21h                     ,
     *                7x,  25h               2147483647)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=99999
      if (iabs(i9ans1-i9comp).eq.0)  go to  23222
      i9errc = i9errc + 1
      write(6,31554)
      go to  23322
23222 write(6,31553)
23322 continue
          write(6,510)
  510     format(1h+,20x,  25h                    99999,
     *                5x,  21h                     ,
     *                7x,  25h                    99999)
          write(6,200) i9ans1
c
          read(5,102) i1,i2,i3,i4
          i9ans1=i1
          i9comp=123456
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23010
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23110
23010 write(6,31550) i9data
23110 continue
          write(6,311)
  311     format(1h+,20x,  25h                   123456,
     *                5x,  21h                 4i15,
     *                7x,  25h                   123456)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=78901
      if (iabs(i9ans1-i9comp).eq.0)  go to  23223
      i9errc = i9errc + 1
      write(6,31554)
      go to  23323
23223 write(6,31553)
23323 continue
          write(6,411)
  411     format(1h+,20x,  25h                    78901,
     *                5x,  21h                     ,
     *                7x,  25h                    78901)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=23
      if (iabs(i9ans1-i9comp).eq.0)  go to  23224
      i9errc = i9errc + 1
      write(6,31554)
      go to  23324
23224 write(6,31553)
23324 continue
          write(6,511)
  511     format(1h+,20x,  25h                       23,
     *                5x,  21h                     ,
     *                7x,  25h                       23)
          write(6,200) i9ans1
          i9ans1=i4
          i9comp=45678
      if (iabs(i9ans1-i9comp).eq.0)  go to  23225
      i9errc = i9errc + 1
      write(6,31554)
      go to  23325
23225 write(6,31553)
23325 continue
          write(6,611)
  611     format(1h+,20x,  25h                    45678,
     *                5x,  21h                     ,
     *                7x,  25h                    45678)
          write(6,200) i9ans1
c
      read(5,104) i1,i2,i3,i4,i5
          i9ans1=i1
          i9comp=211
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23011
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23111
23011 write(6,31550) i9data
23111 continue
          write(6,312)
  312     format(1h+,20x,  25h                      211,
     *                5x,  21h                 5i12,
     *                7x,  25h                      211)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=4646
      if (iabs(i9ans1-i9comp).eq.0)  go to  23226
      i9errc = i9errc + 1
      write(6,31554)
      go to  23326
23226 write(6,31553)
23326 continue
          write(6,412)
  412     format(1h+,20x,  25h                     4646,
     *                5x,  21h                     ,
     *                7x,  25h                     4646)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=2147483647
      if (iabs(i9ans1-i9comp).eq.0)  go to  23227
      i9errc = i9errc + 1
      write(6,31554)
      go to  23327
23227 write(6,31553)
23327 continue
          write(6,512)
  512     format(1h+,20x,  25h               2147483647,
     *                5x,  21h                     ,
     *                7x,  25h               2147483647)
          write(6,200) i9ans1
          i9ans1=i4
          i9comp=7465
      if (iabs(i9ans1-i9comp).eq.0)  go to  23228
      i9errc = i9errc + 1
      write(6,31554)
      go to  23328
23228 write(6,31553)
23328 continue
          write(6,612)
  612     format(1h+,20x,  25h                     7465,
     *                5x,  21h                     ,
     *                7x,  25h                     7465)
          write(6,200) i9ans1
          i9ans1=i5
          i9comp=43210
      if (iabs(i9ans1-i9comp).eq.0)  go to  23229
      i9errc = i9errc + 1
      write(6,31554)
      go to  23329
23229 write(6,31553)
23329 continue
          write(6,712)
  712     format(1h+,20x,  25h                    43210,
     *                5x,  21h                     ,
     *                7x,  25h                    43210)
          write(6,200) i9ans1
c
          read(5,113) i1,i2
  113     format(i10,i12)
          i9ans1=i1
          i9comp=1234
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23012
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23112
23012 write(6,31550) i9data
23112 continue
          write(6,313)
  313     format(1h+,20x,  25h                    +1234,
     *                5x,  21h                  i10,
     *                7x,  25h                     1234)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=567
      if (iabs(i9ans1-i9comp).eq.0)  go to  23230
      i9errc = i9errc + 1
      write(6,31554)
      go to  23330
23230 write(6,31553)
23330 continue
          write(6,413)
  413     format(1h+,20x,  25h                     +567,
     *                5x,  21h                  i12,
     *                7x,  25h                      567)
          write(6,200) i9ans1
      write(6,31506)
31506 format(1h1 / )
      write(6,31501)
c
          read(5,114) i1,i2,i3
  114     format(i5,i15,i8)
          i9ans1=i1
          i9comp=123
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23013
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23113
23013 write(6,31550) i9data
23113 continue
          write(6,314)
  314     format(1h+,20x,  25h                     +123,
     *                5x,  21h                   i5,
     *                7x,  25h                      123)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=2147483647
      if (iabs(i9ans1-i9comp).eq.0)  go to  23231
      i9errc = i9errc + 1
      write(6,31554)
      go to  23331
23231 write(6,31553)
23331 continue
          write(6,414)
  414     format(1h+,20x,  25h              +2147483647,
     *                5x,  21h                  i15,
     *                7x,  25h              +2147483647)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=1
      if (iabs(i9ans1-i9comp).eq.0)  go to  23232
      i9errc = i9errc + 1
      write(6,31554)
      go to  23332
23232 write(6,31553)
23332 continue
          write(6,514)
  514     format(1h+,20x,  25h                       +1,
     *                5x,  21h                   i8,
     *                7x,  25h                        1)
          write(6,200) i9ans1
c
  115     format(i4,i5,i10,i20)
          read(5,115) i1,i2,i3,i4
          i9ans1=i1
          i9comp=1
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23014
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23114
23014 write(6,31550) i9data
23114 continue
          write(6,315)
  315     format(1h+,20x,  25h                       +1,
     *                5x,  21h                   i4,
     *                7x,  25h                        1)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=2
      if (iabs(i9ans1-i9comp).eq.0)  go to  23233
      i9errc = i9errc + 1
      write(6,31554)
      go to  23333
23233 write(6,31553)
23333 continue
          write(6,415)
  415     format(1h+,20x,  25h                       +2,
     *                5x,  21h                   i5,
     *                7x,  25h                        2)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=3
      if (iabs(i9ans1-i9comp).eq.0)  go to  23234
      i9errc = i9errc + 1
      write(6,31554)
      go to  23334
23234 write(6,31553)
23334 continue
          write(6,515)
  515     format(1h+,20x,  25h                       +3,
     *                5x,  21h                  i10,
     *                7x,  25h                        3)
          write(6,200) i9ans1
          i9ans1=i4
          i9comp=4
      if (iabs(i9ans1-i9comp).eq.0)  go to  23235
      i9errc = i9errc + 1
      write(6,31554)
      go to  23335
23235 write(6,31553)
23335 continue
          write(6,615)
  615     format(1h+,20x,  25h                       +4,
     *                5x,  21h                  i20,
     *                7x,  25h                        4)
          write(6,200) i9ans1
c
          read(5,116) i1,i2,i3,i4,i5
  116     format(i5,i8,i10,i20,i25)
          i9ans1=i1
          i9comp=10
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23015
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23115
23015 write(6,31550) i9data
23115 continue
          write(6,316)
  316     format(1h+,20x,  25h                      +10,
     *                5x,  21h                   i5,
     *                7x,  25h                       10)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=100
      if (iabs(i9ans1-i9comp).eq.0)  go to  23236
      i9errc = i9errc + 1
      write(6,31554)
      go to  23336
23236 write(6,31553)
23336 continue
          write(6,416)
  416     format(1h+,20x,  25h                     +100,
     *                5x,  21h                   i8,
     *                7x,  25h                      100)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=1000
      if (iabs(i9ans1-i9comp).eq.0)  go to  23237
      i9errc = i9errc + 1
      write(6,31554)
      go to  23337
23237 write(6,31553)
23337 continue
          write(6,516)
  516     format(1h+,20x,  25h                    +1000,
     *                5x,  21h                  i10,
     *                7x,  25h                     1000)
          write(6,200) i9ans1
          i9ans1=i4
          i9comp=10000
      if (iabs(i9ans1-i9comp).eq.0)  go to  23238
      i9errc = i9errc + 1
      write(6,31554)
      go to  23338
23238 write(6,31553)
23338 continue
          write(6,616)
  616     format(1h+,20x,  25h                   +10000,
     *                5x,  21h                  i20,
     *                7x,  25h                    10000)
          write(6,200) i9ans1
          i9ans1=i5
          i9comp=100000
      if (iabs(i9ans1-i9comp).eq.0)  go to  23239
      i9errc = i9errc + 1
      write(6,31554)
      go to  23339
23239 write(6,31553)
23339 continue
          write(6,716)
  716     format(1h+,20x,  25h                  +100000,
     *                5x,  21h                  i25,
     *                7x,  25h                   100000)
          write(6,200) i9ans1
c
  117     format(i10,i20)
          read(5,117) i1,i2
          i9ans1=i1
          i9comp=-2147
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23016
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23116
23016 write(6,31550) i9data
23116 continue
          write(6,317)
  317     format(1h+,20x,  25h                    -2147,
     *                5x,  21h                  i10,
     *                7x,  25h                    -2147)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=-123456
      if (iabs(i9ans1-i9comp).eq.0)  go to  23240
      i9errc = i9errc + 1
      write(6,31554)
      go to  23340
23240 write(6,31553)
23340 continue
          write(6,417)
  417     format(1h+,20x,  25h                  -123456,
     *                5x,  21h                  i20,
     *                7x,  25h                  -123456)
          write(6,200) i9ans1
      write(6,31507)
31507 format(1h1 / )
      write(6,31501)
c
          read(5,118) i1,i2,i3
  118     format(i2,i3,i4)
          i9ans1=i1
          i9comp=-1
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23017
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23117
23017 write(6,31550) i9data
23117 continue
          write(6,318)
  318     format(1h+,20x,  25h                       -1,
     *                5x,  21h                   i2,
     *                7x,  25h                       -1)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=-2
      if (iabs(i9ans1-i9comp).eq.0)  go to  23241
      i9errc = i9errc + 1
      write(6,31554)
      go to  23341
23241 write(6,31553)
23341 continue
          write(6,418)
  418     format(1h+,20x,  25h                       -2,
     *                5x,  21h                   i3,
     *                7x,  25h                       -2)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=-3
      if (iabs(i9ans1-i9comp).eq.0)  go to  23242
      i9errc = i9errc + 1
      write(6,31554)
      go to  23342
23242 write(6,31553)
23342 continue
          write(6,518)
  518     format(1h+,20x,  25h                       -3,
     *                5x,  21h                   i4,
     *                7x,  25h                       -3)
          write(6,200) i9ans1
c
          read(5,119) i1,i2,i3,i4
  119     format(i5,i5,i15,i5)
          i9ans1=i1
          i9comp=-12
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23018
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23118
23018 write(6,31550) i9data
23118 continue
          write(6,319)
  319     format(1h+,20x,  25h                      -12,
     *                5x,  21h                   i5,
     *                7x,  25h                      -12)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=-345
      if (iabs(i9ans1-i9comp).eq.0)  go to  23243
      i9errc = i9errc + 1
      write(6,31554)
      go to  23343
23243 write(6,31553)
23343 continue
          write(6,419)
  419     format(1h+,20x,  25h                     -345,
     *                5x,  21h                   i5,
     *                7x,  25h                     -345)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=-2147483647
      if (iabs(i9ans1-i9comp).eq.0)  go to  23244
      i9errc = i9errc + 1
      write(6,31554)
      go to  23344
23244 write(6,31553)
23344 continue
          write(6,519)
  519     format(1h+,20x,  25h              -2147483647,
     *                5x,  21h                  i15,
     *                7x,  25h              -2147483647)
          write(6,200) i9ans1
          i9ans1=i4
          i9comp=-3
      if (iabs(i9ans1-i9comp).eq.0)  go to  23245
      i9errc = i9errc + 1
      write(6,31554)
      go to  23345
23245 write(6,31553)
23345 continue
          write(6,619)
  619     format(1h+,20x,  25h                       -3,
     *                5x,  21h                   i5,
     *                7x,  25h                       -3)
          write(6,200) i9ans1
c
          read(5,120) i1,i2,i3,i4,i5
  120     format(i5,i8,i2,i15,i6)
          i9ans1=i1
          i9comp=-1
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23019
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23119
23019 write(6,31550) i9data
23119 continue
          write(6,320)
  320     format(1h+,20x,  25h                       -1,
     *                5x,  21h                   i5,
     *                7x,  25h                       -1)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=-2
      if (iabs(i9ans1-i9comp).eq.0)  go to  23246
      i9errc = i9errc + 1
      write(6,31554)
      go to  23346
23246 write(6,31553)
23346 continue
          write(6,420)
  420     format(1h+,20x,  25h                       -2,
     *                5x,  21h                   i8,
     *                7x,  25h                       -2)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=-3
      if (iabs(i9ans1-i9comp).eq.0)  go to  23247
      i9errc = i9errc + 1
      write(6,31554)
      go to  23347
23247 write(6,31553)
23347 continue
          write(6,520)
  520     format(1h+,20x,  25h                       -3,
     *                5x,  21h                   i2,
     *                7x,  25h                       -3)
          write(6,200) i9ans1
          i9ans1=i4
          i9comp=-2147483647
      if (iabs(i9ans1-i9comp).eq.0)  go to  23248
      i9errc = i9errc + 1
      write(6,31554)
      go to  23348
23248 write(6,31553)
23348 continue
          write(6,620)
  620     format(1h+,20x,  25h              -2147483647,
     *                5x,  21h                  i15,
     *                7x,  25h              -2147483647)
          write(6,200) i9ans1
          i9ans1=i5
          i9comp=-10
      if (iabs(i9ans1-i9comp).eq.0)  go to  23249
      i9errc = i9errc + 1
      write(6,31554)
      go to  23349
23249 write(6,31553)
23349 continue
          write(6,720)
  720     format(1h+,20x,  25h                      -10,
     *                5x,  21h                   i6,
     *                7x,  25h                      -10)
          write(6,200) i9ans1
c
          read(5,121) i1,i2
  121     format(i10,i6)
          i9ans1=i1
          i9comp=123
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23020
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23120
23020 write(6,31550) i9data
23120 continue
          write(6,321)
  321     format(1h+,20x,  25h                      123,
     *                5x,  21h                  i10,
     *                7x,  25h                      123)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=456789
      if (iabs(i9ans1-i9comp).eq.0)  go to  23250
      i9errc = i9errc + 1
      write(6,31554)
      go to  23350
23250 write(6,31553)
23350 continue
          write(6,421)
  421     format(1h+,20x,  25h                   456789,
     *                5x,  21h                   i6,
     *                7x,  25h                   456789)
          write(6,200) i9ans1
      write(6,31508)
31508 format(1h1 / )
      write(6,31501)
c
          read(5,122) i1,i2,i3
  122     format(i10,i10,i15)
          i9ans1=i1
          i9comp=1234
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23021
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23121
23021 write(6,31550) i9data
23121 continue
          write(6,322)
  322     format(1h+,20x,  25h                     1234,
     *                5x,  21h                  i10,
     *                7x,  25h                     1234)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=567
      if (iabs(i9ans1-i9comp).eq.0)  go to  23251
      i9errc = i9errc + 1
      write(6,31554)
      go to  23351
23251 write(6,31553)
23351 continue
          write(6,422)
  422     format(1h+,20x,  25h                      567,
     *                5x,  21h                  i10,
     *                7x,  25h                      567)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=2147483647
      if (iabs(i9ans1-i9comp).eq.0)  go to  23252
      i9errc = i9errc + 1
      write(6,31554)
      go to  23352
23252 write(6,31553)
23352 continue
          write(6,522)
  522     format(1h+,20x,  25h               2147483647,
     *                5x,  21h                  i15,
     *                7x,  25h               2147483647)
          write(6,200) i9ans1
c
          read(5,123) i1,i2,i3,i4
  123     format(i1,i2,i3,i4)
          i9ans1=i1
          i9comp=1
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23022
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23122
23022 write(6,31550) i9data
23122 continue
          write(6,323)
  323     format(1h+,20x,  25h                        1,
     *                5x,  21h                   i1,
     *                7x,  25h                        1)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=2
      if (iabs(i9ans1-i9comp).eq.0)  go to  23253
      i9errc = i9errc + 1
      write(6,31554)
      go to  23353
23253 write(6,31553)
23353 continue
          write(6,423)
  423     format(1h+,20x,  25h                        2,
     *                5x,  21h                   i2,
     *                7x,  25h                        2)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=3
      if (iabs(i9ans1-i9comp).eq.0)  go to  23254
      i9errc = i9errc + 1
      write(6,31554)
      go to  23354
23254 write(6,31553)
23354 continue
          write(6,523)
  523     format(1h+,20x,  25h                        3,
     *                5x,  21h                   i3,
     *                7x,  25h                        3)
          write(6,200) i9ans1
          i9ans1=i4
          i9comp=4
      if (iabs(i9ans1-i9comp).eq.0)  go to  23255
      i9errc = i9errc + 1
      write(6,31554)
      go to  23355
23255 write(6,31553)
23355 continue
          write(6,623)
  623     format(1h+,20x,  25h                        4,
     *                5x,  21h                   i4,
     *                7x,  25h                        4)
          write(6,200) i9ans1
c
          read(5,124) i1,i2,i3,i4,i5
  124     format(i2,i5,i3,i8,i2)
          i9ans1=i1
          i9comp=12
      i9data = i9data + 1
      if (iabs(i9ans1-i9comp).eq.0) go to  23023
      i9errc = i9errc + 1
      write(6,31551) i9data
      go to  23123
23023 write(6,31550) i9data
23123 continue
          write(6,324)
  324     format(1h+,20x,  25h                       12,
     *                5x,  21h                   i2,
     *                7x,  25h                       12)
          write(6,200) i9ans1
          i9ans1=i2
          i9comp=0
      if (iabs(i9ans1-i9comp).eq.0)  go to  23256
      i9errc = i9errc + 1
      write(6,31554)
      go to  23356
23256 write(6,31553)
23356 continue
          write(6,424)
  424     format(1h+,20x,  25h                        0,
     *                5x,  21h                   i5,
     *                7x,  25h                        0)
          write(6,200) i9ans1
          i9ans1=i3
          i9comp=3
      if (iabs(i9ans1-i9comp).eq.0)  go to  23257
      i9errc = i9errc + 1
      write(6,31554)
      go to  23357
23257 write(6,31553)
23357 continue
          write(6,524)
  524     format(1h+,20x,  25h                        3,
     *                5x,  21h                   i3,
     *                7x,  25h                        3)
          write(6,200) i9ans1
          i9ans1=i4
          i9comp=0
      if (iabs(i9ans1-i9comp).eq.0)  go to  23258
      i9errc = i9errc + 1
      write(6,31554)
      go to  23358
23258 write(6,31553)
23358 continue
          write(6,624)
  624     format(1h+,20x,  25h                        0,
     *                5x,  21h                   i8,
     *                7x,  25h                        0)
          write(6,200) i9ans1
          i9ans1=i5
          i9comp=1
      if (iabs(i9ans1-i9comp).eq.0)  go to  23259
      i9errc = i9errc + 1
      write(6,31554)
      go to  23359
23259 write(6,31553)
23359 continue
          write(6,724)
  724     format(1h+,20x,  25h                        1,
     *                5x,  21h                   i2,
     *                7x,  25h                        1)
          write(6,200) i9ans1
      stop
      end
