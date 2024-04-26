      program mdt1
c
      real*4     r400,r401,r402,r403,r404,r405,r406,r407,r408,r409
      real*4     r410,r411,r412,r413,r414
      real*8     r800,r801,r802,r803,r804,r805,r806,r807,r808,r809
      real*8     r810,r811,r812,r813,r814
      real*8    rq00,rq01,rq02,rq03,rq04,rq05,rq06,rq07,rq08,rq09
      real*8    rq10,rq11,rq12,rq13,rq14
      complex*8  ce00,ce01,ce02,ce03,ce04,ce05,ce06,ce07,ce08,ce09
      complex*8  ce10,ce11,ce12,ce13,ce14
      complex*16 cd00,cd01,cd02,cd03,cd04,cd05,cd06,cd07,cd08,cd09
      complex*16 cd10,cd11,cd12,cd13,cd14
      complex*16 cq00,cq01,cq02,cq03,cq04,cq05,cq06,cq07,cq08,cq09
      complex*16 cq10,cq11,cq12,cq13,cq14
c
      r400 = 5.0e0
      r401 = 12.5e0
      r401 = r401 * r401
      if (r401.ne.156.25e0)  write(6,*)'er#1  r401=',r401
      r400 = r400
      r401 = r401
      r402 = r401
      r402 = r400 * r402
      if (r402.ne.781.25e0)  write(6,*)'er#2  r402=',r402
      r403 = 3.0e0
      r403 = r403 / r403
      if (r403.ne.1.0e0)     write(6,*)'er#3  r403=',r403
      r403 = r403
      r404 = r403 * 8.0e0
      r405 = 12.0e0
      r405 = r405 / r404
      if (r405.ne.1.5e0)     write(6,*)'er#4  r405=',r405
      r406 = r405
      r407 = 12.0e0
      r407 = r406 / r407
      if (r407.ne.0.125e0)   write(6,*)'er#5  r407=',r407
      r408 = 4.0e0 * 8.0e0
      if (r408.ne.32.0e0)    write(6,*)'er#e1 r408=',r408
      r409 = 54.0e0 / 9.0e0
      if (r409.ne.6.0e0)     write(6,*)'er#e2 r409=',r409
      r400 = r400 * 7.0e0
      if (r400.ne.35.0e0)    write(6,*)'er#6  r400=',r400
      r401 = 0.8e0 * r401
      if (r401.ne.125.0e0)   write(6,*)'er#7  r401=',r401
      r402 = r402 / 5.0e0
      if (r402.ne.156.25e0)  write(6,*)'er#8  r402=',r402
      r403 = 10.0e0 / r403
      if (r403.ne.10.0e0)    write(6,*)'er#9  r403=',r403
      r403 = r403
      r410 = r403 * 8.0e0
      if (r410.ne.80.0e0)    write(6,*)'er#e3 r410=',r410
      r410 = r410
      r411 = 2.0e0 * r410
      if (r411.ne.160.0e0)   write(6,*)'er#e4 r411=',r411
      r411 = r411
      r412 = r411 / 40.0e0
      if (r412.ne.4.0e0)     write(6,*)'er#e5 r412=',r412
      r412 = r412
      r413 = 32.0e0 / r412
      if (r413.ne.8.0e0)     write(6,*)'er#e6 r413=',r413
      r413 = r413
      r413 = r413 * 2.5e0
      if (r413.ne.20.0e0)    write(6,*)'er#10 r413=',r413
      r413 = r413
      r413 = r413 / 2.5e0
      if (r413.ne.8.0e0)     write(6,*)'er#11 r413=',r413
      r413 = r413
      r413 = 4.0e0 / r413
      if (r413.ne.0.5e0)     write(6,*)'er#11 r413=',r413
      r414 = r400 * r401 * r402 * r403 * r404 * r405 * r407 * r408 *
     .       r409 * r410 * r411 * r412 * r413
      r414 = int(r414 / 1.0e10 + 0.5e0)
      if (r414.ne.5040.0e0) write(6,*)'r4-ng  r414=',r414
      if (r414.eq.5040.0e0) write(6,*)'**** r4 ok ****'
      r800 = 5.0d0
      r801 = 12.5d0
      r801 = r801 * r801
      if (r801.ne.156.25d0)  write(6,*)'er#1  r801=',r801
      r800 = r800
      r801 = r801
      r802 = r801
      r802 = r800 * r802
      if (r802.ne.781.25d0)  write(6,*)'er#2  r802=',r802
      r803 = 3.0d0
      r803 = r803 / r803
      if (r803.ne.1.0d0)     write(6,*)'er#3  r803=',r803
      r803 = r803
      r804 = r803 * 8.0d0
      r805 = 12.0d0
      r805 = r805 / r804
      if (r805.ne.1.5d0)     write(6,*)'er#4  r805=',r805
      r806 = r405
      r807 = 12.0d0
      r807 = r806 / r807
      if (r807.ne.0.125d0)   write(6,*)'er#5  r807=',r807
      r808 = 4.0d0 * 8.0d0
      if (r808.ne.32.0d0)    write(6,*)'er#e1 r808=',r808
      r809 = 54.0d0 / 9.0d0
      if (r809.ne.6.0d0)     write(6,*)'er#e2 r809=',r809
      r800 = r800 * 7.0d0
      if (r800.ne.35.0d0)    write(6,*)'er#6  r800=',r800
      r801 = 0.8d0 * r801
      if (r801.ne.125.0d0)   write(6,*)'er#7  r801=',r801
      r802 = r802 / 5.0d0
      if (r802.ne.156.25d0)  write(6,*)'er#8  r802=',r802
      r803 = 10.0d0 / r803
      if (r803.ne.10.0d0)    write(6,*)'er#9  r803=',r803
      r803 = r803
      r810 = r803 * 8.0d0
      if (r810.ne.80.0d0)    write(6,*)'er#e3 r810=',r810
      r810 = r810
      r811 = 2.0d0 * r810
      if (r811.ne.160.0d0)   write(6,*)'er#e4 r811=',r811
      r811 = r811
      r812 = r811 / 40.0d0
      if (r812.ne.4.0d0)     write(6,*)'er#e5 r812=',r812
      r812 = r812
      r813 = 32.0d0 / r812
      if (r813.ne.8.0d0)     write(6,*)'er#e6 r813=',r813
      r813 = r813
      r813 = r813 * 2.5d0
      if (r813.ne.20.0d0)    write(6,*)'er#10 r813=',r813
      r813 = r813
      r813 = r813 / 2.5d0
      if (r813.ne.8.0d0)     write(6,*)'er#11 r813=',r813
      r813 = r813
      r813 = 4.0d0 / r813
      if (r813.ne.0.5d0)     write(6,*)'er#11 r813=',r813
      r814 = r800 * r801 * r802 * r803 * r804 * r805 * r807 * r808 *
     .       r809 * r810 * r811 * r812 * r813
      r814 = int(r814 / 1.0d10 + 0.5d0)
      if (r814.ne.5040.0d0) write(6,*)'r8-ng  r814=',r814
      if (r814.eq.5040.0d0) write(6,*)'**** r8 ok ****'
      rq00 = 5.0d0
      rq01 = 12.5d0
      rq01 = rq01 * rq01
      if (rq01.ne.156.25d0)  write(6,*)'er#1  rq01=',rq01
      rq00 = rq00
      rq01 = rq01
      rq02 = rq01
      rq02 = rq00 * rq02
      if (rq02.ne.781.25d0)  write(6,*)'er#2  rq02=',rq02
      rq03 = 3.0d0
      rq03 = rq03 / rq03
      if (rq03.ne.1.0d0)     write(6,*)'er#3  rq03=',rq03
      rq03 = rq03
      rq04 = rq03 * 8.0d0
      rq05 = 12.0d0
      rq05 = rq05 / rq04
      if (rq05.ne.1.5d0)     write(6,*)'er#4  rq05=',rq05
      rq06 = rq05
      rq07 = 12.0d0
      rq07 = rq06 / rq07
      if (rq07.ne.0.125d0)   write(6,*)'er#5  rq07=',rq07
      rq08 = 4.0d0 * 8.0d0
      if (rq08.ne.32.0d0)    write(6,*)'er#e1 rq08=',rq08
      rq09 = 54.0d0 / 9.0d0
      if (int(rq09).ne.6.0d0)write(6,*)'er#e2 rq09=',rq09
      rq00 = rq00 * 7.0d0
      if (rq00.ne.35.0d0)    write(6,*)'er#6  rq00=',rq00
      rq01 = 0.8d0 * rq01
      if (rq01.ne.125.0d0)   write(6,*)'er#7  rq01=',rq01
      rq02 = rq02 / 5.0d0
      if (int(rq02*100d0).ne.15625.0d0)
     .                       write(6,*)'er#8  rq02=',rq02
      rq03 = 10.0d0 / rq03
      if (rq03.ne.10.0d0)    write(6,*)'er#9  rq03=',rq03
      rq03 = rq03
      rq10 = rq03 * 8.0d0
      if (rq10.ne.80.0d0)    write(6,*)'er#e3 rq10=',rq10
      rq10 = rq10
      rq11 = 2.0d0 * rq10
      if (rq11.ne.160.0d0)   write(6,*)'er#e4 rq11=',rq11
      rq11 = rq11
      rq12 = rq11 / 40.0d0
      if (rq12.ne.4.0d0)     write(6,*)'er#e5 rq12=',rq12
      rq12 = rq12
      rq13 = 32.0d0 / rq12
      if (rq13.ne.8.0d0)     write(6,*)'er#e6 rq13=',rq13
      rq13 = rq13
      rq13 = rq13 * 2.5d0
      if (rq13.ne.20.0d0)    write(6,*)'er#10 rq13=',rq13
      rq13 = rq13
      rq13 = rq13 / 2.5d0
      if (int(rq13 * 10.0d0 + 0.5d0).ne.80.0d0)
     .                       write(6,*)'er#11 rq13=',rq13
      rq13 = rq13
      rq13 = 4.0d0 / rq13
      if (dint(rq13*1d10+0.5d0).ne.5.0d9)
     .                       write(6,*)'er#12 rq13=',rq13
      rq14 = rq00 * rq01 * rq02 * rq03 * rq04 * rq05 * rq07 * rq08 *
     .       rq09 * rq10 * rq11 * rq12 * rq13
      if (dint(rq14 * 1.0d4 + 0.5d0).ne.5040.0d14)
     .                       write(6,*)'rq-ng  rq14=',rq14
      if (dint(rq14 * 1.0d4 + 0.5d0).eq.5040.0d14)
     .                       write(6,*)'**** rq ok ****'
      ce01 =( 2.5e0, 1.0e0)
      ce01 = ce01 * ce01
      if (ce01.ne.( 5.25e0, 5.0e0))
     .                       write(6,*)'er#1  ce01=',ce01
      ce00 =( 4e0, 5e0)
      ce02 = ce01
      ce02 = ce00 * ce02
      if (ce02.ne.( -4.0e0, 46.25e0))
     .                       write(6,*)'er#2  ce02=',ce02
      ce03 =( 8.0e0, 2.0e0)
      ce03 = ce03 / ce03
      if (ce03.ne.( 1.0e0, 0.0e0))
     .                       write(6,*)'er#31 ce03=',ce03
      ce03 = ce03
      ce04 = ce03 * ( 9.0e0, 4.5e0)
      if (ce04.ne.( 9.0e0, 4.5e0))
     .                       write(6,*)'er#32 ce04=',ce04
      ce04 = ce04
      ce05 =(12.0e0,24.04e0)
      ce05 = ce05 / ce04
      ce05 = int(ce05 * ce05 * 100.0e0)
      if (ce05.ne.( 198.0e0, 0.0e0))
     .                       write(6,*)'er#4  ce05=',ce05
      ce06 = csqrt(ce05)
      ce06 = ce06
      ce07 =( 2.0e0, 4.0e0)
      ce07 = ce06 / ce07
      ce07 = int(ce07 * ce07 * 100.0e0)
      if ((ce07.ne.(-594.0e0, 0.0e0)).and.(ce07.ne.(-593.0e0, 0.0e0)))
     .                       write(6,*)'er#5  ce07=',ce07
      ce08 = ( 2.0e0, 3.0e0) * ( 1.0e0, 4.0e0)
      if (ce08.ne.(-10.0e0, 11.0e0))
     .                       write(6,*)'er#e1 ce08=',ce08
      ce09 = ( 4.0e0, 2.0e0) / ( 8.0e0, 16.0e0)
      ce09 = int(ce09 * ce09 * 100.0e0 + ( 0.5e0, 0.5e0))
      if (ce09.ne.( 2.0e0, 0.0e0))
     .                       write(6,*)'er#e2 ce09=',ce09
      ce00 = ce00 * (7.0e0,6.0e0)
      if (ce00.ne.(-2.0e0, 59.0e0))
     .                       write(6,*)'er#6  ce00=',ce00
      ce01 = (7.0e0,7.0e0) * ce01
      if (ce01.ne.(1.75e0, 71.75e0))
     .                       write(6,*)'er#7  ce01=',ce01
      ce02 = ce02 / (2.5e0,5.0e0)
      ce02 = int(ce02 * ce02 + 0.5e0)
      if (ce02.ne.( 31.0e0, 0.0e0))
     .                       write(6,*)'er#8  ce02=',ce02
      ce03 = (7.0e0,8.9e0) / ce03
      ce03 = int(ce03 * ce03 + 0.5e0)
      if (ce03.ne.(-29.0e0, 0.0e0))
     .                       write(6,*)'er#9  ce03=',ce03
      ce03 = ce03 + (0.0e0, 4.0e0)
      ce10 = ce03 * ( 5.0e0, 2.0e0)
      ce10 = int(ce10 * ce10 + 0.5e0)
      if (ce10.ne.( 21965.0e0, 0.0e0))
     .                       write(6,*)'er#e3 ce10=',ce10
      ce10 = ce10 + (-21940.0e0, 4.0e0)
      ce11 = 4.0e0 * ce10
      if (ce11.ne.( 100.0e0, 16.0e0))
     .                       write(6,*)'er#e4 ce11=',ce11
      ce11 = ce11 - ( 96.0e0, 0.0e0)
      ce12 = ce11 / ( 7.0e0, 5.5e0)
      ce12 = int(ce12 * ce12 * 10.0e0 + 0.5e0)
      if (ce12.ne.( 9.0e0, 0.0e0))
     .                       write(6,*)'er#e5 ce12=',ce12
      ce12 = ce12 + ( 0.0e0, 5.5e0)
      ce13 = ( 5.7e0, 8.0e0) / ce12
      ce13 = int(ce13 * ce13 * 10.0e0 + 0.5e0)
      if (ce13.ne.( 6.0e0, 0.0e0))
     .                       write(6,*)'er#e6 ce13=',ce13
      ce13 = ce13 + ( 0.0e0, 5.5e0)
      ce13 = ce13 * (9.0e0, 7.5e0)
      if (ce13.ne.(12.75e0, 94.5e0))
     .                       write(6,*)'er#10 ce13=',ce13
      ce13 = ce13
      ce13 = (6.5e0, 8.0e0) * ce13
      if (ce13.ne.(-673.125e0, 716.25e0))
     .                       write(6,*)'er#11 ce13=',ce13
      ce13 = ce13
      ce13 = ce13 / ( 6.5e0, 0.125e0)
      ce13 = int(ce13 * ce13 + 0.5e0)
      if (ce13.ne.(-2293.0e0, 0.0e0))
     .                       write(6,*)'er#12 ce13=',ce13
      ce13 = ce13 + ( 2300.0e0, 5.5e0)
      ce13 = ( 8.3e0, 8.3e0)/ ce13
      ce13 = int(ce13 * ce13 * 100.0e0 + 0.5e0)
      if (ce13.ne.( 169.0e0, 0.0e0))
     .                       write(6,*)'er#13 ce13=',ce13
      ce14 = ce00 * ce01 * ce02 * ce03 * ce04 * ce05 * ce07 * ce08 *
     .       ce09 * ce10 * ce11 * ce12 * ce13 * (1e-18, 0.0e0)
      ce14 = int(ce14 * ce14 + 0.5e0)
      if ((ce14.ne.(-10115.0e0, 0.0e0)).and.(ce14.ne.
     .    (-10081.0e0, 0.0e0))) then
          write(6,*)'**** ce ng **** ce14=',ce14
      else
          write(6,*)'**** ce ok ****'
      endif
      cd01 =( 2.5d0, 1.0d0)
      cd01 = cd01 * cd01
      if (cd01.ne.( 5.25d0, 5.0d0))
     .                       write(6,*)'er#1  cd01=',cd01
      cd00 =( 4.0d0, 5.0d0)
      cd02 = cd01
      cd02 = cd00 * cd02
      if (cd02.ne.( -4.0d0, 46.25d0))
     .                       write(6,*)'er#2  cd02=',cd02
      cd03 =( 8.0d0, 2.0d0)
      cd03 = cd03 / cd03
      if (cd03.ne.( 1.0d0, 0.0d0))
     .                       write(6,*)'er#31 cd03=',cd03
      cd03 = cd03
      cd04 = cd03 * ( 9.0d0, 4.5d0)
      if (cd04.ne.( 9.0d0, 4.5d0))
     .                       write(6,*)'er#32 cd04=',cd04
      cd04 = cd04
      cd05 =(12.0d0, 24.04d0)
      cd05 = cd05 / cd04
      cd05 = int(cd05 * cd05 * 100.0d0)
      if (cd05.ne.( 198.0d0, 0.0d0))
     .                       write(6,*)'er#4  cd05=',cd05
      cd06 = cdsqrt(cd05)
      cd06 = cd06
      cd07 =( 2.0d0, 4.0d0)
      cd07 = cd06 / cd07
      cd07 = int(cd07 * cd07 * 100.0d0 + 0.5d0)
      if (cd07.ne.(-593.0d0, 0.0d0))
     .                       write(6,*)'er#5  cd07=',cd07
      cd08 = ( 2.0d0, 3.0d0) * ( 1.0d0, 4.0d0)
      if (cd08.ne.(-10.0d0, 11.0d0))
     .                       write(6,*)'er#e1 cd08=',cd08
      cd09 = ( 4.0d0, 2.0d0) / ( 8.0d0, 16.0d0)
      cd09 = int(cd09 * cd09 * 100.0d0 + ( 0.5d0, 0.5d0))
      if (cd09.ne.( 2.0d0, 0.0d0))
     .                       write(6,*)'er#e2 cd09=',cd09
      cd00 = cd00 * (7.0d0, 6.0d0)
      if (cd00.ne.(-2.0d0, 59.0d0))
     .                       write(6,*)'er#6  cd00=',cd00
      cd01 = (7.0d0,7.0d0) * cd01
      if (cd01.ne.(1.75d0, 71.75d0))
     .                       write(6,*)'er#7  cd01=',cd01
      cd02 = cd02 / (2.5d0, 5.0d0)
      cd02 = int(cd02 * cd02 + 0.5d0)
      if (cd02.ne.( 31.0d0, 0.0d0))
     .                       write(6,*)'er#8  cd02=',cd02
      cd03 = (7.0d0, 8.9d0) / cd03
      cd03 = int(cd03 * cd03 + 0.5d0)
      if (cd03.ne.(-29.0d0, 0.0d0))
     .                       write(6,*)'er#9  cd03=',cd03
      cd03 = cd03 + (0.0d0, 4.0d0)
      cd10 = cd03 * ( 5.0d0, 2.0d0)
      cd10 = int(cd10 * cd10 + 0.5d0)
      if (cd10.ne.( 21965.0d0, 0.0d0))
     .                       write(6,*)'er#e3 cd10=',cd10
      cd10 = cd10 + (-21940.0d0, 4.0d0)
      cd11 = 4.0d0 * cd10
      if (cd11.ne.( 100.0d0, 16.0d0))
     .                       write(6,*)'er#e4 cd11=',cd11
      cd11 = cd11 - ( 96.0d0, 0.0d0)
      cd12 = cd11 / ( 7.0d0, 5.5d0)
      cd12 = int(cd12 * cd12 * 10.0d0 + 0.5d0)
      if (cd12.ne.( 9.0d0, 0.0d0))
     .                       write(6,*)'er#e5 cd12=',cd12
      cd12 = cd12 + ( 0.0d0, 5.5d0)
      cd13 = ( 5.7d0, 8.0d0) / cd12
      cd13 = int(cd13 * cd13 * 10.0d0 + 0.5d0)
      if (cd13.ne.( 6.0d0, 0.0d0))
     .                       write(6,*)'er#e6 cd13=',cd13
      cd13 = cd13 + ( 0.0d0, 5.5d0)
      cd13 = cd13 * (9.0d0, 7.5d0)
      if (cd13.ne.( 12.75d0, 94.5d0))
     .                       write(6,*)'er#10 cd13=',cd13
      cd13 = cd13
      cd13 = (6.5d0, 8.0d0) * cd13
      if (cd13.ne.(-673.125d0, 716.25d0))
     .                       write(6,*)'er#11 cd13=',cd13
      cd13 = cd13
      cd13 = cd13 / ( 6.5d0, 0.125d0)
      cd13 = int(cd13 * cd13 + 0.5d0)
      if (cd13.ne.(-2293.0d0, 0.0d0))
     .                       write(6,*)'er#12 cd13=',cd13
      cd13 = cd13 + ( 2300.0d0, 5.5d0)
      cd13 = ( 8.3d0, 8.3d0)/ cd13
      cd13 = int(cd13 * cd13 * 100.0d0 + 0.5d0)
      if (cd13.ne.( 169.0d0, 0.0d0))
     .                       write(6,*)'er#13 cd13=',cd13
      cd14 = cd00 * cd01 * cd02 * cd03 * cd04 * cd05 * cd07 * cd08 *
     .       cd09 * cd10 * cd11 * cd12 * cd13 * (1d-18, 0.0d0)
      cd14 = int(cd14 * cd14 + 0.5d0)
      if (cd14.ne.(-10081.0d0, 0.0d0)) then
          write(6,*)'**** cd ng **** cd14=',cd14
      else
          write(6,*)'**** cd ok ****'
      endif
      cq01 =( 2.5d0, 1.0d0)
      cq01 = cq01 * cq01
      if (cq01.ne.( 5.25d0, 5.0d0))
     .                       write(6,*)'er#1  cq01=',cq01
      cq00 =( 4.0d0, 5.0d0)
      cq02 = cq01
      cq02 = cq00 * cq02
      if (cq02.ne.( -4.0d0, 46.25d0))
     .                       write(6,*)'er#2  cq02=',cq02
      cq03 =( 8.0d0, 2.0d0)
      cq03 = cq03 / cq03
      if (cq03.ne.( 1.0d0, 0.0d0))
     .                       write(6,*)'er#31 cq03=',cq03
      cq03 = cq03
      cq04 = cq03 * ( 9.0d0, 4.5d0)
      if (cq04.ne.( 9.0d0, 4.5d0))
     .                       write(6,*)'er#32 cq04=',cq04
      cq04 = cq04
      cq05 =(12.0d0, 24.04d0)
      cq05 = cq05 / cq04
      cq05 = int(cq05 * cq05 * 100.0d0)
      if (cq05.ne.( 198.0d0, 0.0d0))
     .                       write(6,*)'er#4  cq05=',cq05
      cq06 = cdsqrt(cq05)
      cq06 = cq06
      cq07 =( 2.0d0, 4.0d0)
      cq07 = cq06 / cq07
      cq07 = int(cq07 * cq07 * 100.0d0 + 0.5d0)
      if (cq07.ne.(-593.0d0, 0.0d0))
     .                       write(6,*)'er#5  cq07=',cq07
      cq08 = ( 2.0d0, 3.0d0) * ( 1.0d0, 4.0d0)
      if (cq08.ne.(-10.0d0, 11.0d0))
     .                       write(6,*)'er#e1 cq08=',cq08
      cq09 = ( 4.0d0, 2.0d0) / ( 8.0d0, 16.0d0)
      cq09 = int(cq09 * cq09 * 100.0d0 + ( 0.5d0, 0.5d0))
      if (cq09.ne.( 2.0d0, 0.0d0))
     .                       write(6,*)'er#e2 cq09=',cq09
      cq00 = cq00 * (7.0d0, 6.0d0)
      if (cq00.ne.(-2.0d0, 59.0d0))
     .                       write(6,*)'er#6  cq00=',cq00
      cq01 = (7.0d0,7.0d0) * cq01
      if (cq01.ne.(1.75d0, 71.75d0))
     .                       write(6,*)'er#7  cq01=',cq01
      cq02 = cq02 / (2.5d0, 5.0d0)
      cq02 = int(cq02 * cq02 + 0.5d0)
      if (cq02.ne.( 31.0d0, 0.0d0))
     .                       write(6,*)'er#8  cq02=',cq02
      cq03 = (7.0d0, 8.9d0) / cq03
      cq03 = int(cq03 * cq03 + 0.5d0)
      if (cq03.ne.(-29.0d0, 0.0d0))
     .                       write(6,*)'er#9  cq03=',cq03
      cq03 = cq03 + (0.0d0, 4.0d0)
      cq10 = cq03 * ( 5.0d0, 2.0d0)
      cq10 = int(cq10 * cq10 + 0.5d0)
      if (cq10.ne.( 21965.0d0, 0.0d0))
     .                       write(6,*)'er#e3 cq10=',cq10
      cq10 = cq10 + (-21940.0d0, 4.0d0)
      cq11 = 4.0d0 * cq10
      if (cq11.ne.( 100.0d0, 16.0d0))
     .                       write(6,*)'er#e4 cq11=',cq11
      cq11 = cq11 - ( 96.0d0, 0.0d0)
      cq12 = cq11 / ( 7.0d0, 5.5d0)
      cq12 = int(cq12 * cq12 * 10.0d0 + 0.5d0)
      if (cq12.ne.( 9.0d0, 0.0d0))
     .                       write(6,*)'er#e5 cq12=',cq12
      cq12 = cq12 + ( 0.0d0, 5.5d0)
      cq13 = ( 5.7d0, 8.0d0) / cq12
      cq13 = int(cq13 * cq13 * 10.0d0 + 0.5d0)
      if (cq13.ne.( 6.0d0, 0.0d0))
     .                       write(6,*)'er#e6 cq13=',cq13
      cq13 = cq13 + ( 0.0d0, 5.5d0)
      cq13 = cq13 * (9.0d0, 7.5d0)
      if (cq13.ne.( 12.75d0, 94.5d0))
     .                       write(6,*)'er#10 cq13=',cq13
      cq13 = cq13
      cq13 = (6.5d0, 8.0d0) * cq13
      if (cq13.ne.(-673.125d0, 716.25d0))
     .                       write(6,*)'er#11 cq13=',cq13
      cq13 = cq13
      cq13 = cq13 / ( 6.5d0, 0.125d0)
      cq13 = int(cq13 * cq13 + 0.5d0)
      if (cq13.ne.(-2293.0d0, 0.0d0))
     .                       write(6,*)'er#12 cq13=',cq13
      cq13 = cq13 + ( 2300.0d0, 5.5d0)
      cq13 = ( 8.3d0, 8.3d0)/ cq13
      cq13 = int(cq13 * cq13 * 100.0d0 + 0.5d0)
      if (cq13.ne.( 169.0d0, 0.0d0))
     .                       write(6,*)'er#13 cq13=',cq13
      cq14 = cq00 * cq01 * cq02 * cq03 * cq04 * cq05 * cq07 * cq08 *
     .       cq09 * cq10 * cq11 * cq12 * cq13 * (1d-18, 0.0d0)
      cq14 = int(cq14 * cq14 + 0.5d0)
      if (cq14.ne.(-10081.0d0, 0.0d0)) then
          write(6,*)'**** cq ng **** cq14=',cq14
      else
          write(6,*)'**** cq ok ****'
      endif
      stop
      end
