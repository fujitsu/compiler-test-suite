      character c1(2)*4,cfm1*4,cfm2*4,cfm3*30,cfm4*60,cfm5*30,cfm6*30
      character cfm7*30
      data cfm1/'(4x)'/
      data cfm2/'(i4)'/
      data cfm3/'(''            *** ok ***'')'/
      data cfm4/'('' character format and format code mixed test '')'/
      data cfm5/'(''     *** item 2 ok ***'')'/
      data cfm6/'(''     *** item 4 ok ***'')'/
      data cfm7/'(''     *** item 7 ok ***'')'/
      c1(1)='1000'
      c1(2)='2000'
      write(6,5)
5     format('         ***start***')
      write(6,cfm4)
      write(c1(1),cfm1)
      read(c1(2),20) ia1
      write(10,cfm2) 1000
      write(10,20) 2000
      backspace 10
      read(10,cfm2) ia2
      backspace 10
      backspace 10
      backspace 10
      backspace 10
      read(10,20) ia3
20    format(i4)
      open(20,access='direct',recl=4,form='formatted',status='scratch')
      write(20,rec=3,fmt=cfm2) 1000
      write(20,rec=7,fmt=20) 2000
      read(20,rec=3,fmt=20) ia4
      read(20,rec=3,fmt=cfm2) ia5
      read(20,rec=7,fmt=20) ia6
      if(c1(1).ne.'    ') goto 777
      print 40
 40   format('      *** item 1 ok ***')
      if(ia1.ne.2000) goto 777
      print cfm5
      if(ia2.ne.2000) goto 777
      print 41
 41   format('      *** item 3 ok ***')
      if(ia3.ne.1000) goto 777
      print cfm6
      if(ia4.ne.1000) goto 777
      print 42
 42   format('      *** item 5 ok ***')
      if(ia5.ne.1000) goto 777
      print 43
 43   format('      *** item 6 ok ***')
      if(ia6.ne.2000) goto 777
      print cfm7
      write(6,cfm3)
      goto 888
777   write(6,30)
30    format('         *** error ***')
888   stop
      end
