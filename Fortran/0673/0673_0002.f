       real*4 a1,b1,c1,a,b,c
      dimension a(3,3),a1(3,3),b(2,2),b1(2,2)
      namelist /nam1/a,b,c
      a=0
      a1=0
      a1(1,1) = 1.0
      a1(2,1) = 2.0
      a1(1,2) = 4.0
      a1(2,2) = 5.0
      a1(3,2) = 6.0
      a1(1,3) = 7.0
      a1(2,3) = 8.0
      a1(3,3) = 9.0
      c1 = 10.0
      b1(1,1) = 1.0
      b1(2,1) = 2.0
      b1(1,2) = 3.0
      b1(2,2) = 4.0
      write(6,200)
  200 format(' ***         test ****')
      write(10,*) '&aaa'
      write(10,*) '&end'
      write(10,*) '&nam1 a(1,1)=1.0,'
      write(10,*) '2.0,,4.0,a(2,2)='
      write(10,*) '5.0 ,a(3,2)=6.0'
      write(10,*) 'a(1,3)=7.0,a(2,3)=8.0,a(3,3)=9.0'
      write(10,*) 'c=10.0,b='
      write(10,*) '1.0,2.0,3.0,4.0'
      write(10,*) '&end'
      rewind 10
      read(10,nam1)
      m=0
      do 1 i=1,3
      do 2 j=1,3
      m=m+1
      if (a(j,i).eq.a1(j,i)) then
          write(6,100) m
  100     format(1h ,'***** test a(',i2,')  ok! ok! *****')
      else
          write(6,101) m
  101     format(1h ,'***** test a(',i2,')  ng! ng! *****')
      endif
    2 continue
    1 continue
      m=0
      do 6 k=1,2
      do 5 l=1,2
      m=m+1
      if (b(l,k).eq.b1(l,k)) then
          write(6,222) m
  222     format(1h ,'***** test b(',i2,')  ok! ok! *****')
      else
          write(6,201) m
  201     format(1h ,'***** test b(',i2,')  ng! ng! *****')
      endif
    5 continue
    6 continue
      if (c.eq.c1) then
          write(6,300)
  300     format(1h ,'***** test c ok! ok! *****')
      else
          write(6,301)
  301     format(1h ,'***** test c ng! ng! ****')
      endif
      stop
      end
