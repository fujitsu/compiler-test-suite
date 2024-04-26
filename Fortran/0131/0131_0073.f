      program evtb01
      integer a(12),b(8),c(6)
      integer d(6),x,y
      data d/50,40,30,154,128,102/
      x=12
      y=0
      do 10 i=1,12
        x=x-1
        a(i)=x
        y=y+1
        if(i.le.8) b(i)=y
   10 continue
      call evtb03(a,b,c,3,4,2)
      do 20 i=1,6
        if(c(i).ne.d(i)) then
          write(6,*) '  *** ng *** , ',c
          stop
        endif
   20 continue
      write(6,*) '  *** ok ***'
      stop
      end
      subroutine evtb03(a,b,c,l,m,n)
      integer   a(l,m),b(m,n),c(l,n)
      do 10 i=1,l
        do 20 k=1,n
           c(i,k)=0.0
           do 30 j=1,m
             c(i,k)=c(i,k)+a(i,j)*b(j,k)
   30      continue
   20   continue
   10 continue
      return
      end
