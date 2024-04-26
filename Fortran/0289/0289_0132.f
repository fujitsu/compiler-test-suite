      program main
      dimension x(10,10),y(10,10),z(10,10),na(10)

      dm=3.0
      r=4.86
      t=276.0
      a11=0.5
      a12=0.33
      sig=0.8
      a21=0.20
      a22=0.167
      a23=0.141
      a31=0.125
      do 1 i=1,10
         s=1.2
         if(s.gt.2.0) goto 111
         do 10 k=1,10
            y(i,k)=s+r
   10    continue
  111    q1=0.0
         do 11 k=1,5
            x(k,i)=(q1-y(i,k))-a12
   11    continue
         if(dm.eq.4.0) goto 112
         q1=4.18
         q3=0.0
         q2=q3-(q1-2.8)
         q1=-(q3-q2)
  112    do 12 k=6,10
            x(k,i)=(q1+y(i,k))-a31
   12    continue
         do 13 k=1,9,2
            z(i,k)=(x(k,i)+y(i,k+1))
            z(i,k+1)=(x(k+1,i)+y(i,k))
   13    continue
    1 continue
      do 4 i=1,10
         do 40 k=1,5
            if(z(i,k).ne.-0.32999992) then
                write(6,*) '*** ng ***'
                write(6,*) 'z is not -0.32999992'
                write(6,*) z
                write(6,*) i
                write(6,*) k
                goto 5
            endif
   40    continue
         do 41 k=6,10
            if(z(i,k).ne.10.615001) then
                write(6,*) '*** ng ***'
                write(6,*) 'z is not 10.615001'
                goto 5
            endif
   41    continue
    4 continue
      n1=0
      i=257
      n2=12*i
      n3=14*i
      n4=345*i
      n5=1
      n6=210*n5
      n7=32*n5
      n8=899*n5
      x1=1.0
      x2=-1.0
      x3= 0.1
      x4=-0.1
      do 2 i=1,9,5
        x5=x3*2
        do 20 k=1,3
           x1=(x1+x2+x3-x4)*x5
           x2=(x1-x2-x3+x4)*x5
           x3=(x1+x2+x3+x4)*x5
           x4=(x1-x2+x3-x4)*x5
   20   continue
        na(i)=n1
        na(i+1)=n2/2
        na(i+2)=n3/3
        na(i+3)=n3/4
        na(i+4)=n4/5
    2 continue
      if(abs((1.5318255e-07-x1)/1.5318255e-07).ge.0.000001000) then
        write(6,*) '*** ng ***'
        write(6,*) 'x1 is not 1.5318255e-07'
        goto 5
        endif
        if(abs((-1.3265739e-07-x2)/(-1.3265739e-07)).ge.0.00001000) then
        write(6,*) '*** ng ***'
        write(6,*) 'x2 is not -1.3265739e-07'
        goto 5
        endif
      if(abs((2.4163722e-08-x3)/2.4163722e-08).ge.0.00001000) then
        write(6,*) '*** ng ***'
        write(6,*) 'x3 is not 2.4163722e-08'
        goto 5
        endif
      if(abs((2.2171672e-08-x4)/2.2171672e-08).ge.0.00001000) then
        write(6,*) '*** ng ***'
        write(6,*) 'x4 is not 2.2171672e-08'
        goto 5
        endif
      if((na(1).ne.na(6)).or.(na(1).ne.0)) then
        write(6,*) '*** ng ***'
        write(6,*) 'na(1) is not 0  or  na(6) is not 0'
        goto 5
        endif
      if((na(2).ne.na(7)).or.(na(2).ne.1542)) then
        write(6,*) '*** ng ***'
        write(6,*) 'na(2) is not 1542  or  na(7) is not 1542'
        goto 5
        endif
      if((na(3).ne.na(8)).or.(na(3).ne.1199)) then
        write(6,*) '*** ng ***'
        write(6,*) 'na(3) is not 1199  or  na(8) is not 1199'
        goto 5
        endif
      if((na(4).ne.na(9)).or.(na(4).ne.899)) then
        write(6,*) '*** ng ***'
        write(6,*) 'na(4) is not 899  or  na(9) is not 899'
        goto 5
        endif
      if((na(5).ne.na(10)).or.(na(5).ne.17733)) then
        write(6,*) '*** ng ***'
        write(6,*) 'na(5) is not 17733  or  na(10) is not 17733'
        goto 5
        endif
      write(6,*) '*** ok ***'
    5 stop
      end
