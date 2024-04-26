      program main
      dimension a(50),b(50),cc(50),xx(50)
      data cc/50*1./xx/50*0./
      do 11  j=1,50
      b(j)=j
  11  a(j)=j
      do 10 i=1,50
        if(a(i).ge.25) then
          go to 500
        else
          b(i)=1.0
        endif
        c=b(i)*b(i)
  10  continue
      x=2.0
      go to 600
  500 x=1.0
 600  write(6,*) x,a
      write(6,*) b,c
      do 110 i=1,50
        if(a(i).ge.25) then
          go to 1500
        else
          b(i)=1.0
        endif
        cc(i)=b(i)*b(i)
 110  continue
      xx(5)=2.0
      go to 1600
 1500 xx(5)=1.0
 1600 write(6,*) xx,a
      write(6,*) b,cc
      stop
      end
