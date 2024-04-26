      program main
      integer*4 a1,a2,a3,a4
      integer*4 b1,b2,b3,b4
      integer*4 c1,c2,c3,c4
      integer*4 d1,d2,d3,d4,d5,d6,d7,d8,d9
      integer   x,y,ngflg,s,t
      integer*2 j
      data      b1,b2,b3,b4/0,0,0,0/
      data      c1,c2,c3,c4/1,1,1,1/
      data      d1,d2,d3,d4,d5,d6,d7,d8,d9/1,1,1,1,1,1,1,1,1/
      data      e1,e2/0,0/
      data    x/5/,y/3/,j/0/,ngflg/0/
      data    s/0/,t/1/,n/10/
      do 1 i=1,n
        a1=0
        a2=0
        a3=0
        a4=0
   1  continue
      do 10 i=1,10
        a1=x+1
        a2=x+i
        a3=a3+x
        a4=a4+i
   10 continue
      do 20 i=1,10
        b1=x-1
        b2=x-i
        b3=b3-x
        b4=b4-i
   20 continue
      do 30 i=1,10
        c1=x*1
        c2=x*i
        c3=c3*x
        c4=c4*i
   30 continue
      do 40 i=1,10
        d1=ishft(x,3)
        d2=ishft(x,-3)
        d3=ishft(x,y)
        d4=ishft(x,-y)
        d5=ishft(5,3)
        d6=ishft(5,-3)
        d7=ishft(5,y)
        d8=ishft(5,-y)
        d9=i/8
   40 continue
      do 50 j=1,10
        e1=e1+j
        e2=x+j
   50 continue
      do 60 i=1,10
        s=s+t*i
   60 continue

      if(a1.ne.6) then
        ngflg=1
        call sub2
        write(6,*) 'data1 = 6'
        write(6,*) 'run   = ',a1
      end if

      if(b2.ne.-5) then
        ngflg=1
        call sub2
        write(6,*) 'data2 = -5'
        write(6,*) 'run   = ',b2
      end if

      if(c3.ne.9765625) then
        ngflg=1
        call sub2
        write(6,*) 'data3 = 9765625'
        write(6,*) 'run   = ',c3
      end if

      if(d1.ne.40) then
        ngflg=1
        call sub2
        write(6,*) 'data4 = 40'
        write(6,*) 'run   = ',d1
      end if

      if(s.ne.55) then
        ngflg=1
        call sub2
        write(6,*) 'data5 = 55'
        write(6,*) 'run   =',s
      end if

      if(ngflg.eq.0) then
        call sub1
      endif

      stop
      end

      subroutine sub1
      write(6,*) '#### "ok" ####'
      return
      end

      subroutine sub2
      write(6,*) '#### "ng" ####'
      return
      end
