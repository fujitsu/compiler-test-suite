      print *, '***** sequential i/o combination test start *****'
      i1=0
      i2=0
   01 print *, ' '
      print *, '*+*+* test of non open st. file is new *+*+*'
      write(11,100) i1
      write(12,100) i2
      rewind 11
      rewind 12
      read(11,100) ii1
      read(12,100) ii2
      if(i1 .ne. ii1) go to 1101
      if(i2 .ne. ii2) go to 1201
      rewind 11
      rewind 12
      print *, '*+*+* test is ok !! *+*+*'
      go to 03
 1101 print *, '*+*+* ng !! unit=11 *+*+*'
      go to 9999
 1201 print *, '*+*+* ng !! unit=12 *+*+*'
      go to 9999
   03 print *, ' '
      print *, '*+*+* test of after open st(scratch file)*+*+*+'
      data  k1,k2/30,300/
      open(31)
      open(32)
      write(31,100) k1
      write(32,100) k2
      rewind 31
      rewind 32
      read(31,100) kk1
      read(32,100) kk2
      if(k1 .ne. kk1) go to 3101
      if(k2 .ne. kk2) go to 3201
      rewind 31
      rewind 32
      print *, '*+*+* test is ok !! *+*+*'
      go to 05
 3101 print *, '*+*+* ng !! unit=31 *+*+*'
      go to 9999
 3201 print *, '*+*+* ng !! unit=32 *+*+*'
      go to 9999
   05 print *, ' '
      print *, '*+*+* test of after open st(file is new)*+*+*'
      data  ij1,ij2/50,500/
      open(51,file='ioct008.f01',access='sequential',status='new')
      open(52,file='ioct008.f02')
      write(51,100) ij1
      write(52,100) ij2
      rewind 51
      rewind 52
      read(51,100) iij1
      read(52,100) iij2
      if(ij1 .ne. iij1) go to 5101
      if(ij2 .ne. iij2) go to 5201
      rewind 51
      rewind 52
      print *, '*+*+* test is ok !! *+*+*'
      go to 06
 5101 print *, '*+*+* ng !! unit=51 *+*+*'
      go to 9999
 5201 print *, '*+*+* ng !! unit=52 *+*+*'
      go to 9999
   06 print *, ' '
      print *, '*+*+* test of after open st(file is old)*+*+*'
      data jk1,jk3/50,500/
      close(51)
      close(52)
      open(61,file='ioct008.f01',access='sequential',status='old')
      open(63,file='ioct008.f02')
      rewind 61
      rewind 63
      read(61,100) jjk1
      if(jk1 .ne. jjk1) go to 6101
      read(63,100) jjk3
      if(jk3 .ne. jjk3) go to 6301
      print *, '*+*+* test is ok !! *+*+*'
      go to 9998
 6101 print *, '*+*+* ng !! unit=61 *+*+*'
      go to 9999
 6301 print *, '*+*+* ng !! unit=63 *+*+*'
      go to 9999
  100 format(i5)
 9999 print *, '***** test is abnormal. *****'
      go to 999
 9998 print *, '***** test is all ok !! *****'
  999 close(61,status='delete')
      close(63,status='delete')
      stop
      end
