      integer,parameter ::k=1,  n=100,m=1
      integer,parameter ::kk=10,nn=1 ,mm=-1, c=1
      integer a(n,kk)

      do i=k,n,m
        do j=kk,nn,mm
          a(i,j)=c
        end do
      end do
  
      do i=k,n,m
        do j=kk,nn,mm
          if (a(i,j).ne.c)  stop 'ng'
        end do
      end do

      print *,'ok'
      end
