      program main
      real*4  a1(200,8),a2(200,8),a3(200,8),a4(200,8)
      real*4  a5(200,8),a6(200,8),a7(200,8),a8(200,8)
      real*4  b1(300,8),b2(300,8),b3(300,8),b4(300,8)
      real*4  b5(300,8),b6(300,8),b7(300,8),b8(300,8)
      real*4  c1(200,8),c2(200,8),c3(200,8),c4(200,8)
      real*4  c5(200,8),c6(200,8),c7(200,8),c8(200,8)
      data    a1/1600*0./,a2/1600*1./,a3/1600*2./,a4/1600*3./
      data    a5/1600*4./,a6/1600*5./,a7/1600*6./,a8/1600*7./
      data    b1/2400*0./,b2/2400*1./,b3/2400*2./,b4/2400*3./
      data    b5/2400*4./,b6/2400*5./,b7/2400*6./,b8/2400*7./
      data    c1/1600*0./,c2/1600*1./,c3/1600*2./,c4/1600*3./
      data    c5/1600*4./,c6/1600*5./,c7/1600*6./,c8/1600*7./

      do 600 n1=1,2
      do 500 n2=1,3
        nn=n2-3
      do 400 n3=1,4
      do 300 n4=1,3
      do 200 n5=1,2
      do 100 j=1,8

        do 10 i=1,300
          b1(i,j)=b2(i,j)+b3(i,j)+b4(i,j)+
     +            b5(i,j)+b6(i,j)+b7(i,j)+b8(i,j)
  10    continue

        do 20 i=1,200
          a1(i,j)=a2(i,j)+a3(i,j)+a4(i,j)+
     +            a5(i,j)+a6(i,j)+a7(i,j)+a8(i,j)
  20    continue

        do 30 i=1,200
          c1(i,j)=c2(i,j)+c3(i,j)+c4(i,j)+
     +            c5(i,j)+c6(i,j)+c7(i,j)+c8(i,j)
  30    continue
 100  continue
 200  continue
 300  continue
 400  continue
 500  continue
 600  continue

      write(6,*) '***** start *****'
      do 999 j=1,8
      do 999 i=1,200
        if(nint(a1(i,j)).ne.nint(c1(i,j))) goto 990
        if(nint(a1(i,j)).ne.nint(b1(i,j))) goto 990
        if(nint(a1(i,j)).ne.nint(b1(i+100,j))) goto 990
999   continue
      write(6,*) '                         '
      write(6,*) '***** ooooo  k   k  *****'
      write(6,*) '***** o   o  k  k   *****'
      write(6,*) '***** o   o  kkk    *****'
      write(6,*) '***** o   o  k  k   *****'
      write(6,*) '***** oooon  k   k  *****'
      write(6,*) '                         '
      goto 995
 990  write(6,*) '                         '
      write(6,*) '***** n   n  ggggg  *****'
      write(6,*) '***** nn  n  g      *****'
      write(6,*) '***** n n n  g  ggg *****'
      write(6,*) '***** n  nn  g   g  *****'
      write(6,*) '***** n   n  ggggg  *****'
      write(6,*) '                         '
 995  write(6,*) '*****  end  *****'
      stop
      end
