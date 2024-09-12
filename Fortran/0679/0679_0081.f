      program main
      real a(10,3)/10*3.,10*4.,10*5./,b(3)/0,0,0/
      call sub1(a,10,3)
      write(6,600)((a(j,i),j=1,10),i=1,3)
      call sub2(a,b,10,3)
      write(6,600)((a(j,i),j=1,10),i=1,3)
      write(6,600) (b(i),i=1,3)
 600  format(1h ,10f5.0,/)
      stop
      end

      subroutine sub1(a,n,m)
      real a(n,m)
      do 10 i=1,m
       s=i
       do 10 j=1,n-1
        a(j+1,i)=a(j,i)+s
 10   continue
      return
      end

      subroutine sub2(a,b,n,m)
      real a(n,m),b(m)
      do 10 i=1,m
       s=i
       do 11 j=1,n
        a(j,i)=a(j,i)-m
 11    continue
       b(i)=s
 10   continue
      return
      end
