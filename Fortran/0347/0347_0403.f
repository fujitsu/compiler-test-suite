      program main
      dimension a(10),b(10),c(10)
      data a/10*0.0/
      data b/4*1.0,2,5*1.5/,c/10*1.0/
      do 10 i=1,10
        ss=i*0.1
        if( b(6) .gt. c(5) ) go to 20
        a(i)= 1.0+ss
  10  continue
 20   write(6,*) a
      do 110 i=1,10
        ss=i*0.1
        if( b(6) .le. c(5) ) go to 120
        a(i)= 1.0+ss
 110  continue
 120  write(6,*) a
      end
