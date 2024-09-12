      real * 4 a(10,10,10,10),b(10,10,10,10)
      data a/10000*1./
      data b/10000*2./

      m1=1 
      m2=10 
      m3=1
      m4=10
      m5=1
      m6=10
      m7=1
      m8=10
      call sub(10,10,10,10,a,b,m1,m2,m3,m4,m5,m6,m7,m8)
      write(6,*) ' test-1 '
      write(6,*) a

      m1=2
      m2=9
      m3=2
      m4=9
      m5=2
      m6=9
      m7=2
      m8=9
      call sub(10,10,10,10,a,b,m1,m2,m3,m4,m5,m6,m7,m8)
      write(6,*) ' test-2 '
      write(6,*) a

      stop
      end
      subroutine sub(n1,n2,n3,n4,a,b,m1,m2,m3,m4,m5,m6,m7,m8)
      real * 4 a(n1,n2,n3,n4),b(n1,n2,n3,n4)
     

      do l=m1,m2
      do k=m3,m4
      do j=m5,m6
      do i=m7,m8
        a(l,k,j,i)=a(l,k,j,i)+b(l,k,j,i)
      enddo
      enddo
      enddo
      enddo

      return
      end
