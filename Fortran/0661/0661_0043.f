      integer*1,dimension(1:2,1:3)::i1
      integer*2,dimension(1:2,1:3)::i2
      integer*4,dimension(1:2,1:3)::i4
      integer*8,dimension(1:2,1:3)::i8
      real*4,dimension(1:2,1:3)::r
      real*8,dimension(1:2,1:3)::d
      real*8,dimension(1:2,1:3)::q
      complex*8,dimension(1:2,1:3)::c
      complex*16,dimension(1:2,1:3)::dc
      complex*32,dimension(1:2,1:3)::qc
      i1=2
      i2=2
      i4=2
      i8=2
      r=2
      d=2
      q=2
      c=(2,0)
      dc=(2,0)
      qc=(2,0)
      call suba(i1**i1)
      call subb(i2**i2)
      call sub1(i4**i4)
      call subb(i1**i2)
      call sub1(i2**i4)
      call sub1(i4**i1)
      call sub1(i4**i2)
      call subb(i2**i1)
      call sub1(i1**i4)
      call sub2(i8**i8)
      call sub2(i8**i1)
      call sub2(i8**i2)
      call sub2(i8**i4)
      call sub2(i1**i8)
      call sub2(i2**i8)
      call sub2(i4**i8)
      call sub3(r**r)
      call sub3(i1**r)
      call sub3(i2**r)
      call sub3(i4**r)
      call sub3(r**i1)
      call sub3(r**i2)
      call sub3(r**i4)
      call sub4(d**d)
      call sub4(i1**d)
      call sub4(i2**d)
      call sub4(i4**d)
      call sub4(i8**d)
      call sub4(r**d)
      call sub4(d**i1)
      call sub4(d**i2)
      call sub4(d**i4)
      call sub4(d**i8)
      call sub4(d**r)
      call sub3(r**i8)
      call sub3(i8**r)
      call sub5(q**q)
      call sub5(i1**q)
      call sub5(i2**q)
      call sub5(i4**q)
      call sub5(i8**q)
      call sub5(r**q)
      call sub5(d**q)
      call sub5(q**i1)
      call sub5(q**i2)
      call sub5(q**i4)
      call sub5(q**i8)
      call sub6(i1**c)
      call sub6(i2**c)
      call sub6(i4**c)
      call sub6(r**c)
      call sub7(d**c)
      call sub7(q**c)
      call sub6(c**c)
      call sub6(c**i1)
      call sub6(c**i2)
      call sub6(c**i4)
      call sub6(c**r)
      call sub7(c**d)
      call sub7(c**q)
      call sub7(dc**dc)
      call sub7(dc**i1)
      call sub7(dc**i2)
      call sub7(dc**i4)
      call sub7(dc**i8)
      call sub7(dc**r)
      call sub7(dc**i1)
      call sub7(dc**i2)
      call sub7(dc**i4)
      call sub7(dc**i8)
      call sub7(dc**r)
      call sub7(dc**d)
      call sub7(dc**q)
      call sub7(dc**c)
      call sub6(c**i8)
      call sub6(i8**c)
      call sub8(qc**qc)
      call sub8(qc**i1)
      call sub8(qc**i2)
      call sub8(qc**i4)
      call sub8(qc**i8)
      call sub8(qc**r)
      call sub8(qc**d)
      call sub8(qc**q)
      call sub8(qc**c)
      call sub8(qc**dc)
      call sub8(i1**qc)
      call sub8(i2**qc)
      call sub8(i4**qc)
      call sub8(i8**qc)
      call sub8(r**qc)
      call sub8(d**qc)
      call sub8(q**qc)
      call sub8(c**qc)
      call sub8(dc**qc)
      write(*,*) '*****pass*****'
      stop
      END
      subroutine suba(x)
      integer*1,dimension(2,3)::x
      integer*1,parameter::ansa=4
      integer*4 a,b
   10 do  11 a=1,2
      do  11 b=1,3
      if(x(a,b).eq.ansa) then
      else
      write(*,*)
      write(*,*) 'ng =',x
      write(*,*)
      print *,'suba err'
      endif
   11 continue
      end
      subroutine subb(x)
      integer*2,dimension(2,3)::x
      integer*2,parameter::ansb=4
      integer*4 a,b
   20 do  21 a=1,2
      do  21 b=1,3
      if(x(a,b).eq.ansb) then
      else
      write(*,*) 'ng =',x
      write(*,*)
      print *,'subb err'
      endif
   21 continue
      end
      subroutine sub1(x)
      integer*4,dimension(2,3)::x
      integer*4 a,b
  100 do 110 a=1,2
      do 110 b=1,3
      if(x(a,b).eq.4) then
      else
      write(*,*) 'ng =',x
      write(*,*)
      print *,'sub1 err'
      endif
  110 continue
      end
      subroutine sub2(x)
      integer*8,dimension(2,3)::x
      integer*4,b,c
  200 do 210 b=1,2
      do 210 c=1,3
      if(x(b,c).eq.4) then
      else
      write(*,*) 'ng =',x
      write(*,*)
      print *,'sub2 err'
      endif
  210 continue
      end
      subroutine sub3(x)
      real*4,dimension(2,3)::x
      integer*4 d,e
  300 do 310 d=1,2
      do 310 e=1,3
      if(x(d,e).eq.4.0000000) then
      else
      write(*,*) 'ng =',x
      write(*,*)
      print *,'sub3 err'
      endif
  310 continue
      end
      subroutine sub4(x)
      real*8,dimension(2,3)::x
      integer*4 g,h
  400 do 410 g=1,2
      do 410 h=1,3
      if(x(g,h).eq.4.0d0) then
      else
      write(*,*) 'ng =',x
      write(*,*)
      print *,'sub4 err'
      endif
  410 continue
      end
      subroutine sub5(x)
      real*8,dimension(2,3)::x
      integer*4 k,l
  500 do 510 k=1,2
      do 510 l=1,3
      if(x(k,l).eq.4.0D0) then
      else
      write(*,*) 'ng =',x
      write(*,*)
      print *,'sub5 err'
      endif
  510 continue
      end
      subroutine sub6(x)
      complex*8,dimension(2,3)::x
      integer*4 p,q
  600 do 610 p=1,2
      do 610 q=1,3
      if(abs((4.0,0.0)-x(p,q)).lt.0.0000001) then
      else
      write(*,*) 'ng =',x
      write(*,*)
      endif
  610 continue
      end
      subroutine sub7(x)
      complex*16,dimension(2,3)::x
      integer*4 p,q
  700 do 710 p=1,2
      do 710 q=1,3
      if(abs((4.0d0,0.0d0)-x(p,q)).lt.0.000000000000001d0) then
      else
      write(*,*) 'ng =',x
      write(*,*)
      print *,'sub7 err'
      endif
  710 continue
      end
      subroutine sub8(x)
      complex*32,dimension(2,3)::x
      integer*4 p,q
  800 do 810 p=1,2
      do 810 q=1,3
      if(abs((4.0q0,0.0q0)-x(p,q)).lt.
     10.00000000000000000000000000000001q0) then
      else
      write(*,*) 'ng =',x
      write(*,*)
      print *,'sub8 err'
      endif
  810 continue
      end
