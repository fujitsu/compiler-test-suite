      complex*16   dca(2,2,3),dcw(2,2,3),dax(3),dxw(3)
      integer*4       dia(3,2,3),diw(3,2,3) ,dix(3),dixw (5)
      character*4     daa(3,2,3),daw(3,2,3)
      equivalence  ( dia(1,2,3),dix(1)),(diw(1,1,1),dixw(1))
      write (6,10)
   10 format(1h1 / 6x,32h*fortran*     fd22502     enter / )
   20 format(1h0,11h+ justice +,3x,8h+ item +,24x,10h+ answer +,
     *       40x,17h+ compare value + /  )
      rewind 1
      dca(1,1,1) = ( 0.0d0,-8765432.1012d0)
      dca(2,1,1) = ( 0.3624518d+48,-0.36241543912638d-22 )
      dca(2,2,2) = (-0.0003624128d-55, 0.92413625d+19 )
      i = 1
      j = 3
      k = -1
      dax(1) = ( 0.321649d+31,0.264184d-31 )
      dax(2) =  (  0.3220424563,-0.003120809641 )
      dax(3) =  ( 0.98765432109876543d-28,0.0d0 )
      write (1,30) dca( i,3*j-8,j-2),dca(i+1,i,8*k+9),dca(j-1,2,k+3)
   30 format (10x,d24.3,30x,d20.13 / 20x,d14.7 // d22.14,d24.17,
     *   d8.1 )
      rewind 1
      read (1,30) (dcw(2,2,i),i=1,3 )
      call  dcchk (1,dcw(2,2,1),dca(1,1,1),1 )
      call  dcchk (2,dcw(2,2,2),dca(2,1,1),1 )
      call  dcchk(3,dcw(2,2,3),(-0.0003624128d-55,0.9d19),1 )
      rewind 1
      write (1,40) dax
   40 format( 2(2d24.17) / 2d24.17  )
      backspace 1
      backspace 1
      read (1,40) (dxw(i),i=1,3 )
      do 50 j=1,3,1
   50 call  dcchk (j+3,dxw(j),dax(j),1 )
      dia(2,2,3) = -123456789
      dia(3,2,3) =  990879899
      write (1,55)  dia(2,2,3*k+6),dia(3,2,3)
   55 format( i15,5x,i12 )
      dia(1,2,3 )= -32769
      write (1,66) dix
   66 format( 2i13,10x,i9 )
      backspace 1
      backspace 1
      read (1,70)  dixw
   70 format( i15,5x,i12 / 2i13,10x,i9  )
      k=1
      do 90 i=1,5
      if (i-3) 80,75,75
   75 k=-2
   80 j=k+i
   90 call  dichk (i+6,dixw(i),dix(j),1 )
      daw(2,1,3) = 'job.'
      daw(1,1,3) = 'abcd'
      daa(1,1,3) = '2.00'
      daa(2,1,3) = 'stop'
      rewind 1
      write(1,100) (daa(i,1,3),daw(i,1,3),i=1,2)
  100 format(2a8,4x,a8,8x,a8,a2 / 100x,a4)
      rewind 1
      read(1,100) (dix(i),dixw(i),i=1,2)
      rewind 1
      call  dichk (12,dix(1),4h2.00,0)
      call  dichk (13,dixw(1),4habcd,0)
      call  dichk (14,dix(2),4hstop,0)
      call  dichk (15,dixw(2),4hjob.,0)
      write (6,120)
  120 format (1h0 // 6x,30h*fortran*     fd22502     exit  )
      stop
      end
      subroutine    dcchk (item,dcans,dccomp,n )
      double precision   diff,dcans(2),dccomp(2)
      integer*4          dia,dic
      diff = 1.0d-15
      do 10 i=1,2
      if ( dccomp(i) ) 1,2,1
    1 if (dabs(dccomp(i)-dcans(i))-dabs(dccomp(i))*diff) 10,10,20
    2 if (dabs(dccomp(i)-dcans(i))-diff ) 10,20,20
   10 continue
      return
   20 write (6,200)
   30 if ( n ) 40,50,40
   40 write (6,300) item,dcans,dccomp
      return
   50 write (6,310) item,dcans,dccomp
      return
  100 format(1h0,2x,7h*ok*    )
  200 format(1h0,2x,7h*error* )
  300 format(1h+,16x,1h(,i2,1h),5x,1h(,2d25.17,1h),3x,1h(,2d25.17,1h) )
  310 format(1h+,16x,1h(,i2,1h),22x,1h(,2a8,1h),36x,1h(,2a8,1h)  )
      entry    dichk (item,dia,dic,n )
      if ( dia-dic ) 70,80,70
   70 write (6,200)
      go to 90
   80 return
   90 if ( n ) 95,105,95
   95 write (6,400) item,dia,dic
      return
  105 write (6,410) item,dia,dic
      return
  400 format(1h+,16x,1h(,i2,1h),25x,i11,43x,i11 )
  410 format(1h+,16x,1h(,i2,1h),29x,a4,50x,a4   )
      end
