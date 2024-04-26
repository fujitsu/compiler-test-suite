      program ast1
c
      real*4     r420,r421,r422,r423,r424,r425,r426,r427,r428,r429
      real*4     r430,r431,r432,r433,r434
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
      r420 = 5.0e0
      r421 = 12.5e0
      r421 = r421 + r421
      if (r421.ne.25.0e0)  write(6,*)'er#1  r421=',r421
      r420 = r420
      r421 = r421
      r422 = r421
      r422 = r420 + r422
      if (r422.ne.30.0e0)  write(6,*)'er#2  r422=',r422
      r423 = 3.0e0
      r423 = r423 - r423
      if (r423.ne.0.0e0)     write(6,*)'er#3  r423=',r423
      r423 = r423
      r424 = r423 + 8.0e0
      r425 = 12.0e0
      r425 = r425 - r424
      if (r425.ne.4.0e0)     write(6,*)'er#4  r425=',r425
      r426 = r425
      r427 = 12.0e0
      r427 = r426 - r427
      if (r427.ne.-8.0e0)    write(6,*)'er#5  r427=',r427
      r428 = 4.0e0 + 8.0e0
      if (r428.ne.12.0e0)    write(6,*)'er#e1 r428=',r428
      r429 = 54.0e0 - 9.0e0
      if (r429.ne.45.0e0)    write(6,*)'er#e2 r429=',r429
      r420 = r420 + 8.0e0
      if (r420.ne.13.0e0)    write(6,*)'er#6  r420=',r420
      r421 = 0.75e0 + r421
      if (r421.ne.25.75e0)   write(6,*)'er#7  r421=',r421
      r422 = r422 - 5.0e0
      if (r422.ne.25.0e0)    write(6,*)'er#8  r422=',r422
      r423 = 10.0e0 - r423
      if (r423.ne.10.0e0)    write(6,*)'er#9  r423=',r423
      r423 = r423
      r430 = r423 + 8.0e0
      if (r430.ne.18.0e0)    write(6,*)'er#e3 r430=',r430
      r430 = r430
      r431 = 2.0e0 + r430
      if (r431.ne.20.0e0)    write(6,*)'er#e4 r431=',r431
      r431 = r431
      r432 = r431 - 40.0e0
      if (r432.ne.-20.0e0)   write(6,*)'er#e5 r432=',r432
      r432 = r432
      r433 = 32.0e0 - r432
      if (r433.ne.52.0e0)    write(6,*)'er#e6 r433=',r433
      r433 = r433
      r433 = r433 + 2.5e0
      if (r433.ne.54.5e0)    write(6,*)'er#10 r433=',r433
      r433 = r433
      r433 = r433 - 2.5e0
      if (r433.ne.52.0e0)    write(6,*)'er#11 r433=',r433
      r433 = r433
      r433 = 8.0e0 - r433
      if (r433.ne.-44.0e0)   write(6,*)'er#11 r433=',r433
      r434 = r420 + r421 + r422 + r423 + r424 + r425 + r427 + r428 +
     .       r429 + r430 + r431 + r432 + r433
      if (r434.ne.108.75e0)  write(6,*)'r4-ng  r434=',r434
      if (r434.eq.108.75e0)  write(6,*)'**** r4 ok ****'
      r800 = 5.0d0
      r801 = 12.5d0
      r801 = r801 + r801
      if (r801.ne.25.0d0)    write(6,*)'er#1  r801=',r801
      r800 = r800
      r801 = r801
      r802 = r801
      r802 = r800 + r802
      if (r802.ne.30.0d0)    write(6,*)'er#2  r802=',r802
      r803 = 3.0d0
      r803 = r803 - r803
      if (r803.ne.0.0d0)     write(6,*)'er#3  r803=',r803
      r803 = r803
      r804 = r803 + 8.0d0
      r805 = 12.0d0
      r805 = r805 - r804
      if (r805.ne.4.0d0)     write(6,*)'er#4  r805=',r805
      r806 = r425
      r807 = 12.0d0
      r807 = r806 - r807
      if (r807.ne.-8.00d0)   write(6,*)'er#5  r807=',r807
      r808 = 4.0d0 + 8.0d0
      if (r808.ne.12.0d0)    write(6,*)'er#e1 r808=',r808
      r809 = 54.0d0 - 9.0d0
      if (r809.ne.45.0d0)    write(6,*)'er#e2 r809=',r809
      r800 = r800 + 7.0d0
      if (r800.ne.12.0d0)    write(6,*)'er#6  r800=',r800
      r801 = 0.75d0 + r801
      if (r801.ne.25.75d0)   write(6,*)'er#7  r801=',r801
      r802 = r802 - 5.0d0
      if (r802.ne.25.0d0)    write(6,*)'er#8  r802=',r802
      r803 = 10.0d0 - r803
      if (r803.ne.10.0d0)    write(6,*)'er#9  r803=',r803
      r803 = r803
      r810 = r803 + 8.0d0
      if (r810.ne.18.0d0)    write(6,*)'er#e3 r810=',r810
      r810 = r810
      r811 = 2.0d0 + r810
      if (r811.ne.20.0d0)    write(6,*)'er#e4 r811=',r811
      r811 = r811
      r812 = r811 - 40.0d0
      if (r812.ne.-20.0d0)   write(6,*)'er#e5 r812=',r812
      r812 = r812
      r813 = 32.0d0 - r812
      if (r813.ne.52.0d0)    write(6,*)'er#e6 r813=',r813
      r813 = r813
      r813 = r813 + 2.5d0
      if (r813.ne.54.5d0)    write(6,*)'er#10 r813=',r813
      r813 = r813
      r813 = r813 - 2.5d0
      if (r813.ne.52.0d0)    write(6,*)'er#11 r813=',r813
      r813 = r813
      r813 = 8.0d0 - r813
      if (r813.ne.-44.0d0)   write(6,*)'er#11 r813=',r813
      r814 = r800 + r801 + r802 + r803 + r804 + r805 + r807 + r808 +
     .       r809 + r810 + r811 + r812 + r813
      if (r814.ne.107.75d0)  write(6,*)'r8-ng  r814=',r814
      if (r814.eq.107.75d0)  write(6,*)'**** r8 ok ****'
      rq00 = 5.0d0
      rq01 = 12.5d0
      rq01 = rq01 + rq01
      if (rq01.ne.25.0d0)    write(6,*)'er#1  rq01=',rq01
      rq00 = rq00
      rq01 = rq01
      rq02 = rq01
      rq02 = rq00 + rq02
      if (rq02.ne.30.0d0)    write(6,*)'er#2  rq02=',rq02
      rq03 = 3.0d0
      rq03 = rq03 - rq03
      if (rq03.ne.0.0d0)     write(6,*)'er#3  rq03=',rq03
      rq03 = rq03
      rq04 = rq03 + 8.0d0
      rq05 = 12.0d0
      rq05 = rq05 - rq04
      if (rq05.ne.4.0d0)     write(6,*)'er#4  rq05=',rq05
      rq06 = rq05
      rq07 = 12.0d0
      rq07 = rq06 - rq07
      if (rq07.ne.-8.0d0)    write(6,*)'er#5  rq07=',rq07
      rq08 = 4.0d0 + 8.0d0
      if (rq08.ne.12.0d0)    write(6,*)'er#e1 rq08=',rq08
      rq09 = 54.0d0 - 9.0d0
      if (int(rq09).ne.45.0d0) write(6,*)'er#e2 rq09=',rq09
      rq00 = rq00 + 7.0d0
      if (rq00.ne.12.0d0)    write(6,*)'er#6  rq00=',rq00
      rq01 = 0.75d0 + rq01
      if (rq01.ne.25.75d0)   write(6,*)'er#7  rq01=',rq01
      rq02 = rq02 - 5.0d0
      if (rq02.ne.25.0d0)
     .                       write(6,*)'er#8  rq02=',rq02
      rq03 = 10.0d0 - rq03
      if (rq03.ne.10.0d0)    write(6,*)'er#9  rq03=',rq03
      rq03 = rq03
      rq10 = rq03 + 8.0d0
      if (rq10.ne.18.0d0)    write(6,*)'er#e3 rq10=',rq10
      rq10 = rq10
      rq11 = 2.0d0 + rq10
      if (rq11.ne.20.0d0)    write(6,*)'er#e4 rq11=',rq11
      rq11 = rq11
      rq12 = rq11 - 40.0d0
      if (rq12.ne.-20.0d0)   write(6,*)'er#e5 rq12=',rq12
      rq12 = rq12
      rq13 = 32.0d0 - rq12
      if (rq13.ne.52.0d0)    write(6,*)'er#e6 rq13=',rq13
      rq13 = rq13
      rq13 = rq13 + 2.5d0
      if (rq13.ne.54.5d0)    write(6,*)'er#10 rq13=',rq13
      rq13 = rq13
      rq13 = rq13 - 2.5d0
      if (rq13.ne.52.0d0)
     .                       write(6,*)'er#11 rq13=',rq13
      rq13 = rq13
      rq13 = 8.0d0 - rq13
      if (rq13.ne.-44.0d0)
     .                       write(6,*)'er#12 rq13=',rq13
      rq14 = rq00 + rq01 + rq02 + rq03 + rq04 + rq05 + rq07 + rq08 +
     .       rq09 + rq10 + rq11 + rq12 + rq13
      if (rq14.ne.107.75d0)
     .                       write(6,*)'rq-ng  rq14=',rq14
      if (rq14.eq.107.75d0)
     .                       write(6,*)'**** rq ok ****'
      ce00 =(   5e0,   5e0)
      ce01 =(12.5e0,12.5e0)
      ce01 = ce01 + ce01
      if (ce01.ne.(25.0e0,25.0e0))   write(6,*)'er#1  ce01=',ce01
      ce00 = ce00
      ce01 = ce01
      ce02 = ce01
      ce02 = ce00 + ce02
      if (ce02.ne.(30.0e0,30.0e0))   write(6,*)'er#2  ce02=',ce02
      ce02 = ce02
      ce03 =(3.0e0,2.0e0)
      ce03 = ce03 - ce03
      ce04 = ce03 +(9.0e0,4.25e0)
      if (ce04.ne.(9.0e0,4.25e0))    write(6,*)'er#3  ce04=',ce04
      ce04 = ce04
      ce05 =(12.0e0,3.125e0)
      ce05 = ce05 - ce04
      if (ce05.ne.(3.0e0,-1.125e0))  write(6,*)'er#4  ce05=',ce05
      ce06 = ce05
      ce07 =(12.0e0,12.0e0)
      ce07 = ce06 - ce07
      if (ce07.ne.(-9.0e0,-13.125e0))
     .                               write(6,*)'er#5  ce07=',ce07
      ce08 = (7.0e0,5.0e0)+(8.0e0,3.0e0)
      if (ce08.ne.(15.0e0,8.0e0))
     .                               write(6,*)'er#e1 ce08=',ce08
      ce09 = (54.0e0,4.3e0)- (9.0e0,6.5e0)
      ce00 =  ce00 + (7.0e0,6.0e0)
      if (ce00.ne.(12.0e0,11.0e0))
     .                               write(6,*)'er#6  ce00=',ce00
      ce01 = (7.0e0,5.0e0) +  ce01
      if (ce01.ne.(32.0e0,30.0e0))
     .                               write(6,*)'er#7  ce01=',ce01
      ce02 = ce02 - (2.5e0,3.25e0)
      if (ce02.ne.(27.5e0,26.75e0))
     .                               write(6,*)'er#8  ce02=',ce02
      ce03 = (7.0e0,8.75e0) - ce03
      if (ce03.ne.(7.0e0,8.75e0))
     .                               write(6,*)'er#9  ce03=',ce03
      ce03 = ce03
      ce10 = ce03 + (5.0e0,6.2e0)
      if (ce10.ne.(12.0e0,14.95e0))
     .                               write(6,*)'er#e2 ce10=',ce10
      ce10 = ce10
      ce11 = 4.0e0 + ce10
      if (ce11.ne.(16.0e0,14.95e0))
     .                               write(6,*)'er#e3 ce11=',ce11
      ce11 = ce11
      ce12 = ce11 - (7.0e0,-0.25e0)
      if (ce12.ne.(9.0e0,15.2e0))
     .                               write(6,*)'er#e4 ce12=',ce12
      ce12 = ce12
      ce13 = (5.75e0,8.0e0) - ce12
      ce13 =  ce13 + (9.0e0,-7.25e0)
      if (ce13.ne.(5.75e0,-14.45e0))
     .                               write(6,*)'er#10 ce13=',ce13
      ce13 = ce13
      ce13 = (12.5e0,-8.55e0) + ce13
      if (ce13.ne.(18.25e0,-23.0e0))
     .                               write(6,*)'er#11 ce13=',ce13
      ce13 = ce13
      ce13 = ce13 - (6.5e0,2.25e0)
      if (ce13.ne.(11.75e0,-25.25e0))
     .                               write(6,*)'er#12 ce13=',ce13
      ce13 = ce13
      ce13 = (8.25e0,7.25e0) - ce13
      if (ce13.ne.(-3.5e0,32.5e0))
     .                               write(6,*)'er#13 ce13=',ce13
      ce13 = ce13
      ce14 = ce00 - ce01 + ce02 + ce03 - ce04 + ce05 - ce07 + ce08 -
     .       ce09 + ce10 - ce11 + ce12 - ce13 - (0.0e0,0.15e0)
      if (int(ce14 * ce14).eq.-274.0e0) then
          write(6,*)'**** ce ng ****' ,ce14
      else
          write(6,*)'**** ce ok ****'
      endif
      cd00 =(   5d0,   5d0)
      cd01 =(12.5d0,12.5d0)
      cd01 = cd01 + cd01
      if (cd01.ne.(25.0d0,25.0d0))   write(6,*)'er#1  cd01=',cd01
      cd00 = cd00
      cd01 = cd01
      cd02 = cd01
      cd02 = cd00 + cd02
      if (cd02.ne.(30.0d0,30.0d0))   write(6,*)'er#2  cd02=',cd02
      cd02 = cd02
      cd03 =(3.0d0,2.0d0)
      cd03 = cd03 - cd03
      cd04 = cd03 +(9.0d0,4.25d0)
      if (cd04.ne.(9.0d0,4.25d0))    write(6,*)'er#3  cd04=',cd04
      cd04 = cd04
      cd05 =(12.0d0,3.125d0)
      cd05 = cd05 - cd04
      if (cd05.ne.(3.0d0,-1.125d0))  write(6,*)'er#4  cd05=',cd05
      cd06 = cd05
      cd07 =(12.0d0,12.0d0)
      cd07 = cd06 - cd07
      if (cd07.ne.(-9.0d0,-13.125d0))
     .                               write(6,*)'er#5  cd07=',cd07
      cd08 = (7.0d0,5.0d0)+(8.0d0,3.0d0)
      if (cd08.ne.(15.0d0,8.0d0))
     .                               write(6,*)'er#e1 cd08=',cd08
      cd09 = (54.0d0,4.3d0) - (9.0d0,6.5d0)
      cd00 =  cd00 + (7.0d0,6.0d0)
      if (cd00.ne.(12.0d0,11.0d0))
     .                               write(6,*)'er#6  cd00=',cd00
      cd01 = (7.0d0,5.0d0) + cd01
      if (cd01.ne.(32.0d0,30.0d0))
     .                               write(6,*)'er#7  cd01=',cd01
      cd02 = cd02 - (2.5d0,3.25d0)
      if (cd02.ne.(27.5d0,26.75d0))
     .                               write(6,*)'er#8  cd02=',cd02
      cd03 = (7.0d0,8.75d0) - cd03
      if (cd03.ne.(7.0d0,8.75d0))
     .                               write(6,*)'er#9  cd03=',cd03
      cd03 = cd03
      cd10 = cd03 + (5.0d0,6.2d0)
      if (abs(cd10-(12.0d0,14.95d0)) .ge. 0.2e-14 )
     .                               write(6,*)'er#e2 cd10=',cd10
      cd10 = cd10
      cd11 = 4.0d0 + cd10
      if (abs(cd11-(16.0d0,14.95d0))  .ge. 0.2e-14 )
     .                               write(6,*)'er#e3 cd11=',cd11
      cd11 = cd11
      cd12 = cd11 - (7.0d0,-0.25d0)
      if (abs(cd12-(9.0d0,15.2d0)) .ge. 0.2e-14 )
     .                               write(6,*)'er#e4 cd12=',cd12
      cd12 = cd12
      cd13 = (5.75d0,8.0d0) - cd12
      cd13 = cd13 + (9.0d0,-7.25d0)
      if (abs(cd13-(5.75d0,-14.45d0)) .ge.  0.2e-14 )
     .                               write(6,*)'er#10 cd13=',cd13
      cd13 = cd13
      cd13 = (12.5d0,-8.55d0) + cd13
      if (cd13.ne.(18.25d0,-23.0d0))
     .                               write(6,*)'er#11 cd13=',cd13
      cd13 = cd13
      cd13 = cd13 - (6.5d0,2.25d0)
      if (cd13.ne.(11.75d0,-25.25d0))
     .                               write(6,*)'er#12 cd13=',cd13
      cd13 = cd13
      cd13 = (8.25d0,7.25d0) - cd13
      if (cd13.ne.(-3.5d0,32.5d0))
     .                               write(6,*)'er#13 cd13=',cd13
      cd13 = cd13
      cd14 = cd00 - cd01 + cd02 + cd03 - cd04 + cd05 - cd07 + cd08 -
     .       cd09 + cd10 - cd11 + cd12 - cd13 - (0.0d0,0.15d0)
      if (int(cd14 * cd14).eq.-274.0d0) then
          write(6,*)'**** cd ng ****' ,cd14
      else
          write(6,*)'**** cd ok ****'
      endif
      cq00 =(   5d0,   5d0)
      cq01 =(12.5d0,12.5d0)
      cq01 = cq01 + cq01
      if (cq01.ne.(25.0d0,25.0d0))   write(6,*)'er#1  cq01=',cq01
      cq00 = cq00
      cq01 = cq01
      cq02 = cq01
      cq02 = cq00 + cq02
      if (cq02.ne.(30.0d0,30.0d0))   write(6,*)'er#2  cq02=',cq02
      cq02 = cq02
      cq03 =(3.0d0,2.0d0)
      cq03 = cq03 - cq03
      cq04 = cq03 +(9.0d0,4.25d0)
      if (cq04.ne.(9.0d0,4.25d0))    write(6,*)'er#3  cq04=',cq04
      cq04 = cq04
      cq05 =(12.0d0,3.125d0)
      cq05 = cq05 - cq04
      if (cq05.ne.(3.0d0,-1.125d0))  write(6,*)'er#4  cq05=',cq05
      cq06 = cq05
      cq07 =(12.0d0,12.0d0)
      cq07 = cq06 - cq07
      if (cq07.ne.(-9.0d0,-13.125d0))
     .                               write(6,*)'er#5  cq07=',cq07
      cq08 = (7.0d0,5.0d0)+(8.0d0,3.0d0)
      if (cq08.ne.(15.0d0,8.0d0))
     .                               write(6,*)'er#e1 cq08=',cq08
      cq09 = (54.0d0,4.3d0) - (9.0d0,6.5d0)
      cq00 = cq00 + (7.0d0,6.0d0)
      if (cq00.ne.(12.0d0,11.0d0))
     .                               write(6,*)'er#6  cq00=',cq00
      cq01 = (7.0d0,5.0d0) + cq01
      if (cq01.ne.(32.0d0,30.0d0))
     .                               write(6,*)'er#7  cq01=',cq01
      cq02 = cq02 - (2.5d0,3.25d0)
      if (cq02.ne.(27.5d0,26.75d0))
     .                               write(6,*)'er#8  cq02=',cq02
      cq03 = (7.0d0,8.75d0) - cq03
      if (cq03.ne.(7.0d0,8.75d0))
     .                               write(6,*)'er#9  cq03=',cq03
      cq03 = cq03
      cq10 = cq03 + (5.0d0,6.2d0)
      if (abs(cq10-(12.0d0,14.95d0)) .ge. 0.2e-14 )
     .                               write(6,*)'er#e2 cq10=',cq10
      cq10 = cq10
      cq11 = 4.0d0 + cq10
      if (abs(cq11-(16.0d0,14.95d0)) .ge. 0.2e-14 )
     .                               write(6,*)'er#e3 cq11=',cq11
      cq11 = cq11
      cq12 = cq11 - (7.0d0,-0.25d0)
      if (abs(cq12-(9.0d0,15.2d0)) .ge. 0.2e-14 )
     .                               write(6,*)'er#e4 cq12=',cq12
      cq12 = cq12
      cq13 = (5.75d0,8.0d0) - cq12
      cq13 = cq13 + (9.0d0,-7.25d0)
      if (abs(cq13-(5.75d0,-14.45d0)) .ge. 0.2e-14 )
     .                               write(6,*)'er#10 cq13=',cq13
      cq13 = cq13
      cq13 = (12.5d0,-8.55d0) + cq13
      if (cq13.ne.(18.25d0,-23.0d0))
     .                               write(6,*)'er#11 cq13=',cq13
      cq13 = cq13
      cq13 = cq13 - (6.5d0,2.25d0)
      if (cq13.ne.(11.75d0,-25.25d0))
     .                               write(6,*)'er#12 cq13=',cq13
      cq13 = cq13
      cq13 = (8.25d0,7.25d0) - cq13
      if (cq13.ne.(-3.5d0,32.5d0))
     .                               write(6,*)'er#13 cq13=',cq13
      cq13 = cq13
      cq14 = cq00 - cq01 + cq02 + cq03 - cq04 + cq05 - cq07 + cq08 -
     .       cq09 + cq10 - cq11 + cq12 - cq13 - (0.0d0,0.15d0)
      if (int(cq14 * cq14).eq.-274.0d0) then
          write(6,*)'**** cq ng ****'
      else
          write(6,*)'**** cq ok ****'
      endif
      stop
      end
