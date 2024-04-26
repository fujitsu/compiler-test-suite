      program main
      a=1.0
      do 10 i=1,10
        ss=i*3.2
        if(ss.ge.25) go to 20
        a=a+0.1
  10  continue
 20   write(6,*) ss,a
      stop
      end
