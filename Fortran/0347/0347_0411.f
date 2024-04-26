      program main
      dimension a(50),b(50)
      do 11 j=1,50
      b(j)=j
  11  a(j)=j
      do 10 i=1,50
        ss=b(i)*0.5
        if(b(i).ge.15) go to 300
        if(a(i).ge.25) go to 500
 300    c=a(i)*0.1+ss
  10  continue
      x=2.0
      go to 600
  500 x=1.0
 600  write(6,*) x,c
      write(6,*) a
      write(6,*) b
      stop
      end
