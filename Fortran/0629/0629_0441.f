      integer function sub4()
      integer*8 i,k
      integer*1 m,n
      integer*8 i8maxm4
      integer a(10),b(1)
      data (a(i),i=1,10),b(1)/0,1,2,3,4,5,6,7,8,9,0/
      parameter(i8maxm4=9223372036854775804_8)
      m=0
      do i=i8maxm4,i8maxm4+9
         b(1)=b(1)+a(i)
      enddo
      sub4=m+b(1)
      return
      end
      print*,"OK if compilation terminates normally."
      end
