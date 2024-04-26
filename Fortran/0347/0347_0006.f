      program main
      real*4 a(11)/11*0/,b(10)/10*0/
      do 10 i=1,10
        j=i-1
        if(j.gt.0) goto 20
        do 20 j=1,10
          a(j)=j
          goto  29
  20    continue
  29    b(i)=i
  10  continue
      write(6,*) a
      write(6,*) b
      do 100 i=1,10
       b(i)=0
 100   a(i)=0
      do 110 i=2,10
        j=i-1
        if(j.gt.0) goto 120
 111    continue
          a(j)=j
 120      j=j+1
        assign 112 to label
        if (j.lt.11) assign 111 to label
        goto  label (111,112)
 112    b(i)=i
 110  continue
      write(6,*) a
      write(6,*) b
      do 200 i=1,10
       b(i)=0
 200   a(i)=0
      do 210 i=1,10
        j=i-1
        goto  220
 211    continue
          a(j)=j
 220      j=j+1
        goto  (211,211,211,211,211,211,211,211,211,211,212) j
 212    b(i)=i
 210  continue
      write(6,*) a
      write(6,*) b
      stop
      end
