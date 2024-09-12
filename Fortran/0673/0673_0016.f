         integer*4 ia(100),ib(100)
         ierr=0
         ik=1
         do 100 i=1,100
 100     ia(i)=i
         write(6,10)
  10     format(' ***test of endfile backspace')
         do 300 j=1,30
 300     write(1) ia(j)
         endfile 1
         backspace 1
         read(1,end=399) ib(j)
         write(6,20) ik,ia(30),ib(j)
         ierr=1
  399    write(6,11)
  11     format(' ***test1 ==> write-endfile-bsp-read(eod) **ok**')
         ik=ik+1
         backspace 1
         backspace 1
         read(1) ib(j)
         if(ia(30).eq.ib(j)) go to 400
         write(6,20) ik,ia(30),ib(j)
         ierr=1
  20     format(' **error** ',4i6)
  400    write(6,12)
  12     format(' ***test2 ==> eod-bsp-bsp-read **ok**')
         ik=ik+1
         do 410 i=1,15
  410    backspace 1
         read(1) ib(j)
         if(ia(16).eq.ib(j)) go to 500
         write(6,20) ik,ia(16),ib(j)
         ierr=1
  500    write(6,13)
  13     format(' ***test3 ==> eod-bsp-bsp-read **ok**')
         ik=3
         rewind 1
         do 600 i=1,20
         write(1) i,i,i
  600    continue
         endfile 1
         do 700 i=1,8
  700    backspace 1
         endfile  1
         rewind 1
  800    read(1,end=899) j
         go to 800
  899    if (j.eq.13) go to 900
         ic=13
         write(6,20) ik,ic,j
         ierr=1
  900    write(6,14)
         rewind 1
         ik=ik+1
         read(1) j
         endfile 1
         backspace 1
         read(1,end=999) j
         write(6,20) ik,j
         ierr=1
  999    write(6,14)
  14     format(' ***test5 ==> read-endfile-bsp-read **ok**')
         if (ierr.eq.0) write(6,30)
  30     format(' ***ok***   test end  ----')
         stop
         end
