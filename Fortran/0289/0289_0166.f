      program main
      integer*4 ie,if,ig,ic,id,in,m
      integer*4 w_ie ,w_if,w_m
      pointer (pe ,ie),(pf ,if),(pm ,m)
      real*4    a1,a2,b1,c1,d1,e,w_d1
      real*4    w_e
      real,allocatable,dimension(:)::w_b1,w_c1
      pointer (pb ,b1),(pc ,c1),(pd ,d1),(pe ,e)
      dimension a(100)
      character*3 b,c
      character*6 d
      character(len = 3)::w_b ,w_c
      character(len = 6),allocatable::w_d(:)
      pointer (p_cb ,b),(p_cc ,c),(p_cd ,d)

      p_cb = loc (w_b)
      p_cc = loc (w_c)
      b='abc'
      c='cba'
      pe = loc (w_ie)
      pf = loc (w_if)
      pd = loc (w_d1)
      n=3
      k=3
      l=0
      ie=5
      if=2
      id=0
      ig=0
      a1=5.0
      a2=2.0
      allocate (w_b1(1),w_c1(1))
      pb = loc (w_b1(1))
      pc = loc (w_c1(1))
      b1=6.0
      c1=6.0
      d1=0.0
      ans=0
*
      do 10 ik=1,10
      if (n.ge.4) then
        id=ie/if
      else
        n=4
        ig=mod(ie,if)
      endif
*
      call sub1(ans)
      call sub2(ans)
   10 continue
      ic=id+ig
      i=0
      n=10
      do 2 im=1,100
    2 a(im)=b1+c1
  100 n=n-1
      do 3 in=1,100
    3 a(in)=n+1
      pe = loc (w_e)
      e=d1+1
      d1=b1+c1
      if (n.ge.0) goto 100
      a1=a(int(e))
      f=a1+e+d1
      i=0
      pm = loc (w_m)
      m=9
      x=1.5
      y=0.5
      b=c
      a(m)=x+y
      i=k+l
      j=i
      j=j/2
      i=0
      b=c
      a(m)=x+y
      i=k+l
      allocate (w_d(1))
      p_cd = loc (w_d(1))
      d=b//c
      j1=j/2
      j=a1+k
*
      do 07 j=1,12
        x=j+1
   07 continue
        x=a(k)
        a(k)=x
      d=b//c
      l=i+j
      y=a(int(b1))
      if (d.eq.'cbacba') then
      write(*,*) '*** ok-1 ***'
      else
      write(*,*) '*** ng-1 *** ',d,'cbacba'
      endif
      if (y.eq.0) then
      write(*,*) '*** ok-2 ***'
      else
      write(*,*) '*** ng-2 *** ',y,0
      endif
      if (l.eq.16) then
      write(*,*) '*** ok-3 ***'
      else
      write(*,*) '*** ng-3 *** ',l,16
      endif
      if (ic.eq.3) then
      write(*,*) '*** ok-4 ***'
      else
      write(*,*) '*** ng-4 *** ',' ic=',ic,'true=3'
      endif
      if (ans.eq.20) then
      write(*,*) '*** ok-5 ***'
      else
      write(*,*) '*** ng-5 *** ',ans,20
      endif
      if (f.eq.25) then
      write(*,*) '*** ok-6 ***'
      else
      write(*,*) '*** ng-6 *** ',f,25
      endif
      if (j1.eq.0) then
      write(*,*) '*** ok-7 ***'
      else
      write(*,*) '*** ng-7 *** ',j1,0
      endif
      deallocate (w_b1 ,w_c1 ,w_d)
      stop
      end
      subroutine sub1(ans)
      ans=ans+1
      return
      end
      subroutine sub2(ans)
      ans=ans+1
      return
      end
