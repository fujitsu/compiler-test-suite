      program main
      a = 0
      do 10 i=0,500
        ss=i*0.1
        if(ss.ge.25) go to 500
        a=a+ss*0.1
  10  continue
      x=2.0
      go to 600
  500 x=1.0
 600  write(6,*) x,ss
      stop
      end
