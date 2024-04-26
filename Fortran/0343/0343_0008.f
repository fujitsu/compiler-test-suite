      implicit      integer ( a )
c
      integer    i9ans1,i9comp,i9dif1,lq,l9eans,l9ecom
      integer    type
      integer    expl/10/
      common        ibln/nm/name
      equivalence  ( iequ,ieee )
      assign 701 to jpre
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
      go  to  jpre,(701,702)
  801 go  to  702
  701 continue
      i9ans1 = 1
  702 i9data = i9data + 1
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
      assign  703  to  aimp
      go  to  aimp,(703,704)
  802 go  to  704
  703 continue
      i9ans1 = 1
  704 i9data = i9data + 1
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
      assign 705 to  type
      go  to  type,(706,705)
  803 go  to  706
  705 continue
      i9ans1 = 1
  706 i9data = i9data + 1
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
      assign 708 to  expl
      if( 9.gt.1 )  assign 707 to  expl
      go  to  expl,(708,707,709)
  804 go  to  709
  707 continue
      i9ans1 = 1
  708 continue
  709 i9data = i9data + 1
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
      assign 711  to  iequ
      if( 9.gt.1 )  assign 710  to  iequ
      go  to  iequ,(711,710,712)
  805 go  to  711
  710 continue
      i9ans1 = 1
  711 continue
  712 i9data = i9data + 1
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
      assign 713  to  ibln
      go  to  ibln,(714,713,715)
  806 go  to 715
  713 continue
      i9ans1 = 1
  714 continue
  715 i9data = i9data + 1
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
      assign 716  to name
      go  to  name,(717,718,716)
  807 go  to 718
  716 continue
      i9ans1 = 1
  717 continue
  718 i9data = i9data + 1
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
      call  sdab5 ( i,isw )
      if( isw ) 720,719,720
  719 i9ans1 = 1
  720 i9data = i9data + 1
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
      assign  121  to  ipre
      go  to  ipre,(121)
  808 go  to  122
  121 i9ans1 =1
  122 i9data = i9data + 1
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
      assign  123  to  ipre
      isw = 1
      go  to  900
  125 if( isw-jsw )  127,128,127
  128 i9ans1 =1
  127 i9data = i9data + 1
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
      assign  124  to  ipre
      isw = 2
      go  to  900
  126 if( isw-jsw )  129,130,129
  130 i9ans1 = 1
  129 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23010
      if(i9keyc.eq.1) go to 23110
      write(6,31510) i9data
      go to 23110
23010 if(i9keyc.eq.1) go to 23210
      write(6,31500) i9data
      go to 23210
23110 i9errc = i9errc + 1
23210 i9ans1=0
  149 go  to  131
  900 go  to  ipre,(123,124)
  810 jsw = 0
      go  to  950
  123 jsw = 1
      go  to  950
  124 jsw = 2
  950 if( isw-1 )  149,125,126
  131   continue
c
      assign  132  to  ipre
      go  to  ipre,(133,134,132)
  809 go  to  134
  132 i9ans1 = 1
  133 continue
  134 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23011
      if(i9keyc.eq.1) go to 23111
      write(6,31510) i9data
      go to 23111
23011 if(i9keyc.eq.1) go to 23211
      write(6,31500) i9data
      go to 23211
23111 i9errc = i9errc + 1
23211 i9ans1=0
      go  to  135
  901 go  to  ipre,(136,137,138,139,140)
  811 jsw = 0
      go  to  951
  136 jsw = 1
      go  to  951
  137 jsw = 2
      go  to  951
  138 jsw = 3
      go  to  951
  139 jsw = 4
      go  to  951
  140 jsw = 5
  951 if( isw-4 )   141,143,142
  135   continue
c
      assign  137  to  ipre
      isw = 2
      go  to  901
  141 if( isw-jsw )  145,146,145
  146 i9ans1 = 1
  145 i9data = i9data + 1
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
      assign  139  to  ipre
      isw = 4
      go  to  901
  143 if( isw-jsw )  147,148,147
  148 i9ans1 = 1
  147 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23013
      if(i9keyc.eq.1) go to 23113
      write(6,31510) i9data
      go to 23113
23013 if(i9keyc.eq.1) go to 23213
      write(6,31500) i9data
      go to 23213
23113 i9errc = i9errc + 1
23213 i9ans1=0
  142   continue
c
      assign  150  to  aimp
      go  to  aimp,(150,151,152,153,154,155,156,157,158,159)
  813 go  to  159
  150 i9ans1 = 1
  151 continue
  152 continue
  153 continue
  154 continue
  155 continue
  156 continue
  157 continue
  158 continue
  159 i9data = i9data + 1
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
      assign  160  to  aimp
      go  to  aimp,(161,162,163,164,165,166,167,168,169,170,
     1              171,172,173,174,175,176,177,178,179,160)
  814 go  to  179
  160 i9ans1 = 1
  161 continue
  162 continue
  163 continue
  164 continue
  165 continue
  166 continue
  167 continue
  168 continue
  169 continue
  170 continue
  171 continue
  172 continue
  173 continue
  174 continue
  175 continue
  176 continue
  177 continue
  178 continue
  179 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23015
      if(i9keyc.eq.1) go to 23115
      write(6,31510) i9data
      go to 23115
23015 if(i9keyc.eq.1) go to 23215
      write(6,31500) i9data
      go to 23215
23115 i9errc = i9errc + 1
23215 i9ans1=0
      go  to  200
  902 go  to  expl,(201,202,203,204,205,206,207,208,209,210,
     1              211,212,213,214,215,216,217,218,219,220,
     2              221,222,223,224,225,226,227,228,229,230,
     3              231,232,233,234,235,236,237,238,239,240,
     4              241,242,243,244,245,246,247,248,249,250)
  812 jsw = 0
      go  to  952
  201 jsw = 1
      go  to  952
  202 jsw = 2
      go  to  952
  203 jsw = 3
      go  to  952
  204 jsw = 4
      go  to  952
  205 jsw = 5
      go  to  952
  206 jsw = 6
      go  to  952
  207 jsw = 7
      go  to  952
  208 jsw = 8
      go  to  952
  209 jsw = 9
      go  to  952
  210 jsw = 10
      go  to  952
  211 jsw = 11
      go  to  952
  212 jsw = 12
      go  to  952
  213 jsw = 13
      go  to  952
  214 jsw = 14
      go  to  952
  215 jsw = 15
      go  to  952
  216 jsw = 16
      go  to  952
  217 jsw = 17
      go  to  952
  218 jsw = 18
      go  to  952
  219 jsw = 19
      go  to  952
  220 jsw = 20
      go  to  952
  221 jsw = 21
      go  to  952
  222 jsw = 22
      go  to  952
  223 jsw = 23
      go  to  952
  224 jsw = 24
      go  to  952
  225 jsw = 25
      go  to  952
  226 jsw = 26
      go  to  952
  227 jsw = 27
      go  to  952
  228 jsw = 28
      go  to  952
  229 jsw = 29
      go  to  952
  230 jsw = 30
      go  to  952
  231 jsw = 31
      go  to  952
  232 jsw = 32
      go  to  952
  233 jsw = 33
      go  to  952
  234 jsw = 34
      go  to  952
  235 jsw = 35
      go  to  952
  236 jsw = 36
      go  to  952
  237 jsw = 37
      go  to  952
  238 jsw = 38
      go  to  952
  239 jsw = 39
      go  to  952
  240 jsw = 40
      go  to  952
  241 jsw = 41
      go  to  952
  242 jsw = 42
      go  to  952
  243 jsw = 43
      go  to  952
  244 jsw = 44
      go  to  952
  245 jsw = 45
      go  to  952
  246 jsw = 46
      go  to  952
  247 jsw = 47
      go  to  952
  248 jsw = 48
      go  to  952
  249 jsw = 49
      go  to  952
  250 jsw = 50
  952 if( isw- 2 ) 400,401,953
  953 if( isw- 4 ) 402,403,954
  954 if( isw- 6 ) 404,405,955
  955 if( isw- 8 ) 406,407,956
  956 if( isw-10 ) 408,409,957
  957 if( isw-12 ) 410,411,958
  958 if( isw-14 ) 412,413,959
  959 if( isw-16 ) 414,415,960
  960 if( isw-18 ) 416,417,961
  961 if( isw-20 ) 418,419,962
  962 if( isw-22 ) 420,421,963
  963 if( isw-24 ) 422,423,964
  964 if( isw-26 ) 424,425,965
  965 if( isw-28 ) 426,427,966
  966 if( isw-30 ) 428,429,967
  967 if( isw-32 ) 430,431,968
  968 if( isw-34 ) 432,433,969
  969 if( isw-36 ) 434,435,970
  970 if( isw-38 ) 436,437,971
  971 if( isw-40 ) 438,439,972
  972 if( isw-42 ) 440,441,973
  973 if( isw-44 ) 442,443,974
  974 if( isw-46 ) 444,445,975
  975 if( isw-48 ) 446,447,976
  976 if( isw-50 ) 448,449,450
  200   continue
c
      assign  201  to  expl
      isw = 1
      go  to  902
  400 if( isw-jsw )  301,300,301
  300 i9ans1 = 1
  301 i9data = i9data + 1
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
      assign  202  to  expl
      isw = 2
      go  to  902
  401 if( isw-jsw )  303,302,303
  302 i9ans1 = 1
  303 i9data = i9data + 1
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
      assign  203  to  expl
      isw = 3
      go  to  902
  402 if( isw-jsw )  305,304,305
  304 i9ans1 = 1
  305 i9data = i9data + 1
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
      assign  204  to  expl
      isw = 4
      go  to  902
  403 if( isw-jsw )  307,306,307
  306 i9ans1 = 1
  307 i9data = i9data + 1
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
      assign  205  to  expl
      isw = 5
      go  to  902
  404 if( isw-jsw )  309,308,309
  308 i9ans1 = 1
  309 i9data = i9data + 1
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
      assign  206  to  expl
      isw = 6
      go  to  902
  405 if( isw-jsw )  311,310,311
  310 i9ans1 = 1
  311 i9data = i9data + 1
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
      assign  207  to  expl
      isw = 7
      go  to  902
  406 if( isw-jsw )  313,312,313
  312 i9ans1 = 1
  313 i9data = i9data + 1
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
      assign  208  to  expl
      isw = 8
      go  to  902
  407 if( isw-jsw )  315,314,315
  314 i9ans1 = 1
  315 i9data = i9data + 1
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
      assign  209  to  expl
      isw = 9
      go  to  902
  408 if( isw-jsw )  317,316,317
  316 i9ans1 = 1
  317 i9data = i9data + 1
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
      assign  210  to  expl
      isw = 10
      go  to  902
  409 if( isw-jsw )  319,318,319
  318 i9ans1 = 1
  319 i9data = i9data + 1
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
      assign  211  to  expl
      isw = 11
      go  to  902
  410 if( isw-jsw )  321,320,321
  320 i9ans1 = 1
  321 i9data = i9data + 1
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
      assign  212  to  expl
      isw = 12
      go  to  902
  411 if( isw-jsw )  323,322,323
  322 i9ans1 = 1
  323 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23027
      if(i9keyc.eq.1) go to 23127
      write(6,31510) i9data
      go to 23127
23027 if(i9keyc.eq.1) go to 23227
      write(6,31500) i9data
      go to 23227
23127 i9errc = i9errc + 1
23227 i9ans1=0
c
      assign  213  to  expl
      isw = 13
      go  to  902
  412 if( isw-jsw )  325,324,325
  324 i9ans1 = 1
  325 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23028
      if(i9keyc.eq.1) go to 23128
      write(6,31510) i9data
      go to 23128
23028 if(i9keyc.eq.1) go to 23228
      write(6,31500) i9data
      go to 23228
23128 i9errc = i9errc + 1
23228 i9ans1=0
c
      assign  214  to  expl
      isw = 14
      go  to  902
  413 if( isw-jsw )  327,326,327
  326 i9ans1 = 1
  327 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23029
      if(i9keyc.eq.1) go to 23129
      write(6,31510) i9data
      go to 23129
23029 if(i9keyc.eq.1) go to 23229
      write(6,31500) i9data
      go to 23229
23129 i9errc = i9errc + 1
23229 i9ans1=0
      if(i9keyc.eq.1) go to 25901
      write(6,31570)
25901 continue
c
      assign  215  to  expl
      isw = 15
      go  to  902
  414 if( isw-jsw )  329,328,329
  328 i9ans1 = 1
  329 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23030
      if(i9keyc.eq.1) go to 23130
      write(6,31510) i9data
      go to 23130
23030 if(i9keyc.eq.1) go to 23230
      write(6,31500) i9data
      go to 23230
23130 i9errc = i9errc + 1
23230 i9ans1=0
c
      assign  216  to  expl
      isw = 16
      go  to  902
  415 if( isw-jsw )  331,330,331
  330 i9ans1 = 1
  331 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23031
      if(i9keyc.eq.1) go to 23131
      write(6,31510) i9data
      go to 23131
23031 if(i9keyc.eq.1) go to 23231
      write(6,31500) i9data
      go to 23231
23131 i9errc = i9errc + 1
23231 i9ans1=0
c
      assign  217  to  expl
      isw = 17
      go  to  902
  416 if( isw-jsw )  333,332,333
  332 i9ans1 = 1
  333 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23032
      if(i9keyc.eq.1) go to 23132
      write(6,31510) i9data
      go to 23132
23032 if(i9keyc.eq.1) go to 23232
      write(6,31500) i9data
      go to 23232
23132 i9errc = i9errc + 1
23232 i9ans1=0
c
      assign  218  to  expl
      isw = 18
      go  to  902
  417 if( isw-jsw )  335,334,335
  334 i9ans1 = 1
  335 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23033
      if(i9keyc.eq.1) go to 23133
      write(6,31510) i9data
      go to 23133
23033 if(i9keyc.eq.1) go to 23233
      write(6,31500) i9data
      go to 23233
23133 i9errc = i9errc + 1
23233 i9ans1=0
c
      assign  219  to  expl
      isw = 19
      go  to  902
  418 if( isw-jsw )  337,336,337
  336 i9ans1 = 1
  337 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23034
      if(i9keyc.eq.1) go to 23134
      write(6,31510) i9data
      go to 23134
23034 if(i9keyc.eq.1) go to 23234
      write(6,31500) i9data
      go to 23234
23134 i9errc = i9errc + 1
23234 i9ans1=0
c
      assign  220  to  expl
      isw = 20
      go  to  902
  419 if( isw-jsw )  339,338,339
  338 i9ans1 = 1
  339 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23035
      if(i9keyc.eq.1) go to 23135
      write(6,31510) i9data
      go to 23135
23035 if(i9keyc.eq.1) go to 23235
      write(6,31500) i9data
      go to 23235
23135 i9errc = i9errc + 1
23235 i9ans1=0
c
      assign  221  to  expl
      isw = 21
      go  to  902
  420 if( isw-jsw )  341,340,341
  340 i9ans1 = 1
  341 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23036
      if(i9keyc.eq.1) go to 23136
      write(6,31510) i9data
      go to 23136
23036 if(i9keyc.eq.1) go to 23236
      write(6,31500) i9data
      go to 23236
23136 i9errc = i9errc + 1
23236 i9ans1=0
c
      assign  222  to  expl
      isw = 22
      go  to  902
  421 if( isw-jsw )  343,342,343
  342 i9ans1 = 1
  343 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23037
      if(i9keyc.eq.1) go to 23137
      write(6,31510) i9data
      go to 23137
23037 if(i9keyc.eq.1) go to 23237
      write(6,31500) i9data
      go to 23237
23137 i9errc = i9errc + 1
23237 i9ans1=0
c
      assign  223  to  expl
      isw = 23
      go  to  902
  422 if( isw-jsw )  345,344,345
  344 i9ans1 = 1
  345 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23038
      if(i9keyc.eq.1) go to 23138
      write(6,31510) i9data
      go to 23138
23038 if(i9keyc.eq.1) go to 23238
      write(6,31500) i9data
      go to 23238
23138 i9errc = i9errc + 1
23238 i9ans1=0
c
      assign  224  to  expl
      isw = 24
      go  to  902
  423 if( isw-jsw )  347,346,347
  346 i9ans1 = 1
  347 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23039
      if(i9keyc.eq.1) go to 23139
      write(6,31510) i9data
      go to 23139
23039 if(i9keyc.eq.1) go to 23239
      write(6,31500) i9data
      go to 23239
23139 i9errc = i9errc + 1
23239 i9ans1=0
c
      assign  225  to  expl
      isw = 25
      go  to  902
  424 if( isw-jsw )  349,348,349
  348 i9ans1 = 1
  349 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23040
      if(i9keyc.eq.1) go to 23140
      write(6,31510) i9data
      go to 23140
23040 if(i9keyc.eq.1) go to 23240
      write(6,31500) i9data
      go to 23240
23140 i9errc = i9errc + 1
23240 i9ans1=0
c
      assign  226  to  expl
      isw = 26
      go  to  902
  425 if( isw-jsw )  351,350,351
  350 i9ans1 = 1
  351 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23041
      if(i9keyc.eq.1) go to 23141
      write(6,31510) i9data
      go to 23141
23041 if(i9keyc.eq.1) go to 23241
      write(6,31500) i9data
      go to 23241
23141 i9errc = i9errc + 1
23241 i9ans1=0
c
      assign  227  to  expl
      isw = 27
      go  to  902
  426 if( isw-jsw )  353,352,353
  352 i9ans1 = 1
  353 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23042
      if(i9keyc.eq.1) go to 23142
      write(6,31510) i9data
      go to 23142
23042 if(i9keyc.eq.1) go to 23242
      write(6,31500) i9data
      go to 23242
23142 i9errc = i9errc + 1
23242 i9ans1=0
c
      assign  228  to  expl
      isw = 28
      go  to  902
  427 if( isw-jsw )  355,354,355
  354 i9ans1 = 1
  355 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23043
      if(i9keyc.eq.1) go to 23143
      write(6,31510) i9data
      go to 23143
23043 if(i9keyc.eq.1) go to 23243
      write(6,31500) i9data
      go to 23243
23143 i9errc = i9errc + 1
23243 i9ans1=0
c
      assign  229  to  expl
      isw = 29
      go  to  902
  428 if( isw-jsw )  357,356,357
  356 i9ans1 = 1
  357 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23044
      if(i9keyc.eq.1) go to 23144
      write(6,31510) i9data
      go to 23144
23044 if(i9keyc.eq.1) go to 23244
      write(6,31500) i9data
      go to 23244
23144 i9errc = i9errc + 1
23244 i9ans1=0
      if(i9keyc.eq.1) go to 25902
      write(6,31570)
25902 continue
c
      assign  230  to  expl
      isw = 30
      go  to  902
  429 if( isw-jsw )  359,358,359
  358 i9ans1 = 1
  359 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23045
      if(i9keyc.eq.1) go to 23145
      write(6,31510) i9data
      go to 23145
23045 if(i9keyc.eq.1) go to 23245
      write(6,31500) i9data
      go to 23245
23145 i9errc = i9errc + 1
23245 i9ans1=0
c
      assign  231  to  expl
      isw = 31
      go  to  902
  430 if( isw-jsw )  361,360,361
  360 i9ans1 = 1
  361 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23046
      if(i9keyc.eq.1) go to 23146
      write(6,31510) i9data
      go to 23146
23046 if(i9keyc.eq.1) go to 23246
      write(6,31500) i9data
      go to 23246
23146 i9errc = i9errc + 1
23246 i9ans1=0
c
      assign  232  to  expl
      isw = 32
      go  to  902
  431 if( isw-jsw )  363,362,363
  362 i9ans1 = 1
  363 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23047
      if(i9keyc.eq.1) go to 23147
      write(6,31510) i9data
      go to 23147
23047 if(i9keyc.eq.1) go to 23247
      write(6,31500) i9data
      go to 23247
23147 i9errc = i9errc + 1
23247 i9ans1=0
c
      assign  233  to  expl
      isw = 33
      go  to  902
  432 if( isw-jsw )  365,364,365
  364 i9ans1 = 1
  365 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23048
      if(i9keyc.eq.1) go to 23148
      write(6,31510) i9data
      go to 23148
23048 if(i9keyc.eq.1) go to 23248
      write(6,31500) i9data
      go to 23248
23148 i9errc = i9errc + 1
23248 i9ans1=0
c
      assign  234  to  expl
      isw = 34
      go  to  902
  433 if( isw-jsw )  367,366,367
  366 i9ans1 = 1
  367 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23049
      if(i9keyc.eq.1) go to 23149
      write(6,31510) i9data
      go to 23149
23049 if(i9keyc.eq.1) go to 23249
      write(6,31500) i9data
      go to 23249
23149 i9errc = i9errc + 1
23249 i9ans1=0
c
      assign  235  to  expl
      isw = 35
      go  to  902
  434 if( isw-jsw )  369,368,369
  368 i9ans1 = 1
  369 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23050
      if(i9keyc.eq.1) go to 23150
      write(6,31510) i9data
      go to 23150
23050 if(i9keyc.eq.1) go to 23250
      write(6,31500) i9data
      go to 23250
23150 i9errc = i9errc + 1
23250 i9ans1=0
c
      assign  236  to  expl
      isw = 36
      go  to  902
  435 if( isw-jsw )  371,370,371
  370 i9ans1 = 1
  371 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23051
      if(i9keyc.eq.1) go to 23151
      write(6,31510) i9data
      go to 23151
23051 if(i9keyc.eq.1) go to 23251
      write(6,31500) i9data
      go to 23251
23151 i9errc = i9errc + 1
23251 i9ans1=0
c
      assign  237  to  expl
      isw = 37
      go  to  902
  436 if( isw-jsw )  373,372,373
  372 i9ans1 = 1
  373 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23052
      if(i9keyc.eq.1) go to 23152
      write(6,31510) i9data
      go to 23152
23052 if(i9keyc.eq.1) go to 23252
      write(6,31500) i9data
      go to 23252
23152 i9errc = i9errc + 1
23252 i9ans1=0
c
      assign  238  to  expl
      isw = 38
      go  to  902
  437 if( isw-jsw )  375,374,375
  374 i9ans1 = 1
  375 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23053
      if(i9keyc.eq.1) go to 23153
      write(6,31510) i9data
      go to 23153
23053 if(i9keyc.eq.1) go to 23253
      write(6,31500) i9data
      go to 23253
23153 i9errc = i9errc + 1
23253 i9ans1=0
c
      assign  239  to  expl
      isw = 39
      go  to  902
  438 if( isw-jsw )  377,376,377
  376 i9ans1 = 1
  377 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23054
      if(i9keyc.eq.1) go to 23154
      write(6,31510) i9data
      go to 23154
23054 if(i9keyc.eq.1) go to 23254
      write(6,31500) i9data
      go to 23254
23154 i9errc = i9errc + 1
23254 i9ans1=0
c
      assign  240  to  expl
      isw = 40
      go  to  902
  439 if( isw-jsw )  379,378,379
  378 i9ans1 = 1
  379 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23055
      if(i9keyc.eq.1) go to 23155
      write(6,31510) i9data
      go to 23155
23055 if(i9keyc.eq.1) go to 23255
      write(6,31500) i9data
      go to 23255
23155 i9errc = i9errc + 1
23255 i9ans1=0
c
      assign  241  to  expl
      isw = 41
      go  to  902
  440 if( isw-jsw )  381,380,381
  380 i9ans1 = 1
  381 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23056
      if(i9keyc.eq.1) go to 23156
      write(6,31510) i9data
      go to 23156
23056 if(i9keyc.eq.1) go to 23256
      write(6,31500) i9data
      go to 23256
23156 i9errc = i9errc + 1
23256 i9ans1=0
c
      assign  242  to  expl
      isw = 42
      go  to  902
  441 if( isw-jsw )  383,382,383
  382 i9ans1 = 1
  383 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23057
      if(i9keyc.eq.1) go to 23157
      write(6,31510) i9data
      go to 23157
23057 if(i9keyc.eq.1) go to 23257
      write(6,31500) i9data
      go to 23257
23157 i9errc = i9errc + 1
23257 i9ans1=0
c
      assign  243  to  expl
      isw = 43
      go  to  902
  442 if( isw-jsw )  385,384,385
  384 i9ans1 = 1
  385 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23058
      if(i9keyc.eq.1) go to 23158
      write(6,31510) i9data
      go to 23158
23058 if(i9keyc.eq.1) go to 23258
      write(6,31500) i9data
      go to 23258
23158 i9errc = i9errc + 1
23258 i9ans1=0
c
      assign  244  to  expl
      isw = 44
      go  to  902
  443 if( isw-jsw )  387,386,387
  386 i9ans1 = 1
  387 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23059
      if(i9keyc.eq.1) go to 23159
      write(6,31510) i9data
      go to 23159
23059 if(i9keyc.eq.1) go to 23259
      write(6,31500) i9data
      go to 23259
23159 i9errc = i9errc + 1
23259 i9ans1=0
      if(i9keyc.eq.1) go to 25903
      write(6,31570)
25903 continue
c
      assign  245  to  expl
      isw = 45
      go  to  902
  444 if( isw-jsw )  389,388,389
  388 i9ans1 = 1
  389 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23060
      if(i9keyc.eq.1) go to 23160
      write(6,31510) i9data
      go to 23160
23060 if(i9keyc.eq.1) go to 23260
      write(6,31500) i9data
      go to 23260
23160 i9errc = i9errc + 1
23260 i9ans1=0
c
      assign  246  to  expl
      isw = 46
      go  to  902
  445 if( isw-jsw )  391,390,391
  390 i9ans1 = 1
  391 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23061
      if(i9keyc.eq.1) go to 23161
      write(6,31510) i9data
      go to 23161
23061 if(i9keyc.eq.1) go to 23261
      write(6,31500) i9data
      go to 23261
23161 i9errc = i9errc + 1
23261 i9ans1=0
c
      assign  247  to  expl
      isw = 47
      go  to  902
  446 if( isw-jsw )  393,392,393
  392 i9ans1 = 1
  393 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23062
      if(i9keyc.eq.1) go to 23162
      write(6,31510) i9data
      go to 23162
23062 if(i9keyc.eq.1) go to 23262
      write(6,31500) i9data
      go to 23262
23162 i9errc = i9errc + 1
23262 i9ans1=0
c
      assign  248  to  expl
      isw = 48
      go  to  902
  447 if( isw-jsw )  395,394,395
  394 i9ans1 = 1
  395 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23063
      if(i9keyc.eq.1) go to 23163
      write(6,31510) i9data
      go to 23163
23063 if(i9keyc.eq.1) go to 23263
      write(6,31500) i9data
      go to 23263
23163 i9errc = i9errc + 1
23263 i9ans1=0
c
      assign  249  to  expl
      isw = 49
      go  to  902
  448 if( isw-jsw )  397,396,397
  396 i9ans1 = 1
  397 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23064
      if(i9keyc.eq.1) go to 23164
      write(6,31510) i9data
      go to 23164
23064 if(i9keyc.eq.1) go to 23264
      write(6,31500) i9data
      go to 23264
23164 i9errc = i9errc + 1
23264 i9ans1=0
c
      assign  250  to  expl
      isw = 50
      go  to  902
  449 if( isw-jsw )  399,398,399
  398 i9ans1 = 1
  399 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23065
      if(i9keyc.eq.1) go to 23165
      write(6,31510) i9data
      go to 23165
23065 if(i9keyc.eq.1) go to 23265
      write(6,31500) i9data
      go to 23265
23165 i9errc = i9errc + 1
23265 i9ans1=0
      go to 450
  977 go  to  expl,(500,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,
     1    20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,
     2    40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,
     3    60,61,62,63,64,65,66,567,68,69,70,71,72,73,74,75,76,77,78,79,
     4    80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,599)
    1 continue
    2 continue
    3 continue
    4 continue
    5 continue
    6 continue
    7 continue
    8 continue
    9 continue
   10 continue
   11 continue
   12 continue
   13 continue
   14 continue
   15 continue
   16 continue
   17 continue
   18 continue
   19 continue
   20 continue
   21 continue
   22 continue
   23 continue
   24 continue
   25 continue
   26 continue
   27 continue
   28 continue
   29 continue
   30 continue
   31 continue
   32 continue
   33 continue
   34 continue
   35 continue
   36 continue
   37 continue
   38 continue
   39 continue
   40 continue
   41 continue
   42 continue
   43 continue
   44 continue
   45 continue
   46 continue
   47 continue
   48 continue
   49 continue
   50 continue
   51 continue
   52 continue
   53 continue
   54 continue
   55 continue
   56 continue
   57 continue
   58 continue
   59 continue
   60 continue
   61 continue
   62 continue
   63 continue
   64 continue
   65 continue
   66 continue
   68 continue
   69 continue
   70 continue
   71 continue
   72 continue
   73 continue
   74 continue
   75 continue
   76 continue
   77 continue
   78 continue
   79 continue
   80 continue
   81 continue
   82 continue
   83 continue
   84 continue
   85 continue
   86 continue
   87 continue
   88 continue
   89 continue
   90 continue
   91 continue
   92 continue
   93 continue
   94 continue
   95 continue
   96 continue
   97 continue
   98 jsw = 0
      go  to  978
  500 jsw = 1
      go  to  978
  567 jsw = 2
      go  to  978
  599 jsw = 3
  978 if( isw-2 ) 600,601,602
  450   continue
c
      assign  500  to  expl
      isw = 1
      go  to  977
  600 if( isw-jsw )  651,650,651
  650 i9ans1 = 1
  651 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23066
      if(i9keyc.eq.1) go to 23166
      write(6,31510) i9data
      go to 23166
23066 if(i9keyc.eq.1) go to 23266
      write(6,31500) i9data
      go to 23266
23166 i9errc = i9errc + 1
23266 i9ans1=0
c
      assign  567  to  expl
      isw = 2
      go  to  977
  601 if( isw-jsw )  653,652,653
  652 i9ans1 = 1
  653 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23067
      if(i9keyc.eq.1) go to 23167
      write(6,31510) i9data
      go to 23167
23067 if(i9keyc.eq.1) go to 23267
      write(6,31500) i9data
      go to 23267
23167 i9errc = i9errc + 1
23267 i9ans1=0
c
      assign  599  to  expl
      isw = 3
      go  to  977
  602 if( isw-jsw )  655,654,655
  654 i9ans1 = 1
  655 i9data = i9data + 1
      if(i9ans1.eq.1) go to 23068
      if(i9keyc.eq.1) go to 23168
      write(6,31510) i9data
      go to 23168
23068 if(i9keyc.eq.1) go to 23268
      write(6,31500) i9data
      go to 23268
23168 i9errc = i9errc + 1
23268 i9ans1=0
c
      if (i9keyc-1) 32030,32020,32030
32020 if( i9errc )     32000,32030,32000
32030 continue
      stop
31570 format(1h1 // 19h + justice + item +,15x,19h+ computed result +,
     *      19x,17h+ comapre value +,31x,14h+ difference + / )
      end

      subroutine sdab5(idum,isw)
      assign  1  to  idum
  100 go  to  idum,(2,3,1)
  813 go  to  3
    1 continue
      isw = 0
      return
    2 continue
    3 isw = 1
      return
      end
