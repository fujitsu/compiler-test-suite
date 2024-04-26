      program main
      dimension a(50),xx(50),bb(50)
      do 11 j=1,50
       xx(j)=j
       bb(j)=j
  11   a(j)=j
      do 10 i=1,50
        ss=a(i)*1
        if(a(i).ge.25) go to 500
        b=ss*0.1
  10  continue
      x=2.0
      go to 600
  500 x=1.0
 600  write(6,*) x,b
      write(6,*) a
      do 110 i=1,50
        ss=a(i)*1
        if(a(i).ge.25) go to 1500
        bb(i)=ss*0.1
 110  continue
      xx(2)=2.0
      go to 1600
 1500 xx(2)=1.0
 1600 write(6,*) xx,bb
      write(6,*) a
      stop
      end
