      character*16   cdh1,cdh2,cdh3,cdh4,cdh5,cdh(5)
      character*8    ch1,ch2,ch3,ch4,ch5,ch(5)
      character*16 q1,q2
      character*8  d1,d2
      equivalence (q1,cdh1),(q2,cdh2),(d1,ch1),(d2,ch2)
      write (6,10)
   10 format(1h1 / 6x,31h*fortran*     fd21701     enter / )
      write (6,20)
   20 format(1h0,10x,8h+ item +,10x,15h+ source data +,10x,
     *      20h+ field descriptor +,10x,26h+ compare value - answer +/)
      q1='fortran  f230-45'
      q2='FFFFFF'
      d1='word ''a'''
      d2='file'
      item=1
      write (6,30) item,cdh1,cdh1,cdh1
   30 format(1h0,12x,1h(,i2,1h),11x,16hfortran  f230-45,18x,4h a16,
     *       20x,16hfortran  f230-45 / 86x,a16  // 60x,6h   a20,16x,
     *       20h    fortran  f230-45 / 82x,a20 // 60x,6h   a10,26x,
     *       10hfortran  f / 92x,a10 / )
      item=2
      write (6,35) item,cdh2,cdh2
   35 format(1h0,12x,1h(,i2,1h),11x,16hFFFFFF          ,18x,4h a16,
     *       20x,16hFFFFFF           / 86x,a16 // 61x,5h   a5,30x,
     *       5hFFFFF / 96x,a5 / )
      item=3
      write (6,40) item,ch1,ch1,ch1,ch2
   40 format(1h0,12x,1h(,i2,1h),12x,15h       word 'a',17x,5h  a10,
     *       26x,10h  word 'a' / 92x,a10 // 61x,5h   a7,29x,
     *       7hword 'a / 95x,a7 // 61x,5h   a2,33x,3hwo  / 99x,a2,1x,
     *       // 29x,15h           file,18x,4h  a8,28x,8h    file /
     *       98x,a8 /1h1 /  )
      write (6,45)
   45 format(1h0,5x,11h+ justice +,5x,8h+ item +,5x,
     *      15h+ source data +,5x,20h+ field descriptor +,10x,
     *      10h+ answer +,10x,17h+ compare value + / )
      read (5,50) cdh1,cdh2,cdh3,cdh4,cdh5
   50 format(a16,4x,a9,1x,a1 / a20,10x,a13 )
      call  dchprt(1,cdh1,16h h  conversion   )
      call  dchprt(2,cdh2,16htest job         )
      call  dchprt(3,cdh3,16h+                )
      call  dchprt(4,cdh4,16hran test program )
      call  dchprt(5,cdh5,16hhollerith ' '    )
      read (5,55) ch1,ch2,ch3,ch4,ch5
   55 format(10x,a8,12x,a8,12x,a4,11x,a5 / a7 )
      call  chprt(6,ch1,8hformat   )
      call  chprt(7 ,ch2,8hstatemen )
      call  chprt(8 ,ch3,8h+*       )
      call  chprt(9 ,ch4,8hKKKKK    )
      call  chprt(10,ch5,8hdevaid   )
      i=1
      j=2
      k=-2
      read (5,60) cdh(i),cdh(2*j-2 ),ch(3*i),ch(4*k+9)
   60 format( 5x,2a16 / 50x,a8,2x,a5 )
      call  dchprt(11,cdh(1),16hFFFFFFFFF - 15/2 )
      call  dchprt(12,cdh(2),16h5/35/45/ ....... )
      call  chprt (13,ch(3),8hconvert  )
      call  chprt (14,ch(1),8h test    )
      write (6,65)
   65 format(1h0 / 6x,31h*fortran*     fd21701     exit  )
      stop
      end
      subroutine  dchprt (item,ansdh,compdh )
      integer*4       ansdh(4),compdh(4),ans(2),comp(2),
     *                sh(5),fild (2)
      read (5,10) sh,fild
   10 format(7a4)
      do 20 k =1,4
   20 if ( compdh(k).ne.ansdh(k) ) go to 30
      write (6,25)
      go to 40
   30 write (6,35)
   25 format(1h0,7x,7h*ok*    )
   35 format(1h0,7x,7h*error* )
   40 write (6,45) item,sh,fild,ansdh,compdh
   45 format(1h+,23x,1h(,i2,1h),7x,5a4,4x,2a4,15x,4a4,8x,4a4)
      return
      entry    chprt(item,ans,comp)
      read (5,60) sh,fild
   60 format(7a4)
      do 70 k=1,2
   70 if (comp(k).ne.ans(k)) go to 80
      write (6,25)
      go to 90
   80 write (6,35)
   90 write (6,95) item,sh,fild,ans,comp
   95 format(1h+,23x,1h(,i2,1h),7x,5a4,4x,2a4,23x,4a4,16x,4a4)
      return
      end
