      program main
      real*8 rb(10,10),rc(1000,10)
      data rb/100*1.d0/,rc/10000*1.d0/

      s = 0
      do 30 i=1,1000
      do 30 j=1,5
        rc(i,j)=1.d0
30     s = s + rc(i,j)

      do 20 i=1,1000
      do 20 j=1,5
        rc(i,j)=1.
20      if(i.eq.5) rb(i,j)=0.d0

      do 10 i=1,1000
      do 10 j=1,5
        rc(i,j)=1.
10      if(i.eq.5) s = s +rc(i,j)

      write(6,*) 'rb=',rb(1,1)
      write(6,*) 'rc=',rc(1,1)
      stop
      end
