      program main
      real*8 a(10),b(10),c(10),d(10)
      data   b/1* 1d-1,2* 2d-2,3* 3d-3,4* 4d-4/
      data   c/1*-1d-1,2*-2d-2,3*-3d-3,4*-4d-4/
   10 call sub1(a,b,c,d)
   20 go to 80
   30 if (a(1).eq.b(1)) go to 34
   31 i=1
   32 do 33 while(i.le.10)
   33  i=i+1
   34 print *,'*** ng *** not excutable statement'
      stop
   40 do 42 i=1,10,2
   41  a(i  )=b(i  )+c(i  )
   42  a(i+1)=b(i+1)+c(i+1)
   50 read(5,55,end=60) d
   55 format(10f5.1)
   60 do 63 i=1,10,2
   61  d(i  )=b(i  )-c(i  )
   62  go to 63
   63  d(i+1)=b(i+1)-c(i+1)
   70 go to 90
   80 continue
   81 d( 1)=0.
      d( 2)=0.
   82 d( 3)=0.
      d( 4)=0.
   83 d( 5)=0.
      d( 6)=0.
   84 d( 7)=0.
      d( 8)=0.
   85 d( 9)=0.
      d(10)=0.
   86 go to 40
   90 do 95 i=1,10,5
   91  if (a(i  ).eq.b(i  )) go to 92
   92  if (a(i+1).eq.b(i+1)) go to 93
   93  if (a(i+2).eq.b(i+2)) go to 94
   94  if (a(i+3).eq.b(i+3)) go to 95
   95  if (a(i+4).eq.b(i+4)) go to 100
  100  continue
  110 do 111 i=1,10
  111  if (a(i).ne.0d0) stop 1
  120 do 121 i=1,10
  121  if (d(i).ne.b(i)*2d0) stop 2
      call sub(a,b,c,d)
  130 go to 200
  140 print *,'*** ng not excutable statement'
  150 if (a(1).eq.b(1)) then
  160  stop 1
  170  end if
  180 stop 2
  190 go to 140
  200 print *,'*** ok ***'
  210 end
      subroutine sub(a,b,c,d)
      real*8 a(10),b(10),c(10),d(10)
   10 call sub1(a,b,c,d)
      assign 20 to m20
      assign 80 to m80
   20 go to 80
   30 if (a(1).eq.b(1)) go to 34
   31 i=1
   32 do 33 while(i.le.10)
   33  i=i+1
   34 print *,'*** ng *** not excutable statement'
      assign 30 to m30
      stop
   40 do 42 i=1,10,2
       assign 41 to m42
   41  a(i  )=b(i  )+c(i  )
   42  a(i+1)=b(i+1)+c(i+1)
   50 read(5,55,end=60) d
   55 format(10f5.1)
   60 do 63 i=1,10,2
   61  d(i  )=b(i  )-c(i  )
   62  go to 63
   63  d(i+1)=b(i+1)-c(i+1)
      assign 63 to m63
   70 go to 90
   80 continue
      assign 81 to m81
      assign 82 to m82
      assign 83 to m83
      assign 84 to m84
      assign 85 to m85
      assign 86 to m86
   81 d( 1)=0.
      d( 2)=0.
   82 d( 3)=0.
      d( 4)=0.
   83 d( 5)=0.
      d( 6)=0.
   84 d( 7)=0.
      d( 8)=0.
   85 d( 9)=0.
      d(10)=0.
   86 go to 40
   90 do 95 i=1,10,5
   91  if (a(i  ).eq.b(i  )) go to 92
   92  if (a(i+1).eq.b(i+1)) go to 93
   93  if (a(i+2).eq.b(i+2)) go to 94
   94  if (a(i+3).eq.b(i+3)) go to 95
   95  if (a(i+4).eq.b(i+4)) go to 100
      assign 91 to m91
      assign 92 to m92
      assign 93 to m93
      assign 94 to m94
      assign 95 to m95
  100  continue
      assign 110 to m110
      assign 111 to m111
  110 do 111 i=1,10
  111  if (a(i).ne.0d0) stop 1
      assign 120 to m120
      assign 121 to m121
  120 do 121 i=1,10
  121  if (d(i).ne.b(i)*2d0) stop 2
  130 go to 200
  140 print *,'*** ng not excutable statement'
      assign 190 to m190
  150 if (a(1).eq.b(1)) then
  160  stop 1
  170  end if
  180 stop 2
  190 go to 140
  200 print *,'*** no delete ok ***'
  210 end
      subroutine sub1(a,b,c,d)
      real*8 a(1),b(1),c(1),d(1)
   10 return
   20 end
