      integer,parameter ::k=1,  n=100,m=1
      integer,parameter ::kk=10,nn=1 ,mm=-1, c=1
      integer,parameter ::a(n,kk)=1 
      integer s
   
      s=0
      do i=k,n,m
        do j=kk,nn,mm
          s = s + a(i,j) + c
        end do
      end do
  
      if (s.ne.2000)  stop 'ng'

      print *,'ok'
      end
