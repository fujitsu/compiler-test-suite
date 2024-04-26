      program main
      dimension a(50)
      do 11 j=1,50
  11  a(j)=j
      do 10 i=1,50
        ss=i*1.1
        if(a(i).ge.25) go to 50
        if(a(i).ge.10) go to 60
  50    ss=a(i)
  10  continue
      x=2.0
      go to 600
   60 x=1.0
 600  write(6,*) x,ss
      write(6,*) a
      stop
      end
