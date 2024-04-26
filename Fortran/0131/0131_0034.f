      program nrgl24
*
      dimension fk(4),fl(4)
      f1(a,b,c)=c
      f2(d,e,f)=d*f+e
*
      x0=0.0
      yy1=1.0
      yy2=1.0
      h=0.1
      xx=x0
    1 x=xx
      y1=yy1
      y2=yy2
      do 40 i=1,4
        fk(i)=h*f1(x,y1,y2)
        fl(i)=h*f2(x,y1,y2)
        if(i-3)30,20,40
   20   x=xx+h
        y1=yy1+fk(i)
        y2=yy2+fl(i)
        goto 40
   30   x=xx+0.5*h
        y1=yy1+0.5*fk(i)
        y2=yy2+0.5*fl(i)
   40 continue
      yy1=yy1+(fk(1)+2.0*fk(2)+2.0*fk(3)+fk(4))/6.0
      yy2=yy1+(fl(1)+2.0*fl(2)+2.0*fl(3)+fl(4))/6.0
      xx=xx+h
*
      if(xx-1.0)1,50,50
   50 continue
      if( abs( xx+yy1+yy2-7.9113169) .le. 0.0001 ) then
        write(6,*) '**** ok ****'
      else
        write(6,*) '**** ng ****',xx+yy1+yy2
      endif
      stop
      end
