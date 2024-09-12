      integer function sub4()
      integer i,k
      integer*1 m,n
      integer i4maxm4
      integer a(10),b(1)
      data (a(i),i=1,10),b(1)/0,1,2,3,4,5,6,7,8,9,0/
      data i4maxm4/2147483643/
      m=0
      do i=i4maxm4,i4maxm4+9
         b(1)=b(1)+a(i)
      enddo
      sub4=m+b(1)
      return
      end
      print*,"OK if compilation terminates normally."
      end
