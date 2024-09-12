      parameter (n1=10,n2=10,n3=10)
      common /com/a,b,c,d
      complex*16 a(n1,n2,n3),b(n1,n2,n3),c(n1,n2,n3)
      do i=1,n1
         do j=1,n2
            do k=1,n3
               b(i,j,k) = i+j
               c(i,j,k) = k-i
            enddo
         enddo
      enddo

      call sub22
      call check
      end

      subroutine check
      parameter (n1=10,n2=10,n3=10)
      common /com/a,b,c,d
      complex*16 a(n1,n2,n3),b(n1,n2,n3),c(n1,n2,n3)
      complex*16 aa,bb,cc
      aa = (0.0,0.0)
      bb = (0.0,0.0)
      cc = (0.0,0.0)
      do 20 k=1,n3
        do 20 j=1,n2
          do 20 i=1,n1
            aa = aa + a(i,j,k)
            bb = bb + b(i,j,k)
            cc = cc + c(i,j,k)
   20 continue
      print*,' aa= ',aa
      print*,' bb= ',bb
      print*,' cc= ',cc
      end
      subroutine sub22
      parameter (n1=10,n2=10,n3=10)
      common /com/a,b,c,d
      complex*16 a(n1,n2,n3),b(n1,n2,n3),c(n1,n2,n3)
      do 10 k=n3,1,-1
        do 10 j=n2,1,-1
          do 10 i=n1,1,-1
            a(i,j,k) = (0.0,0.0)
   10 continue
      do 20 k=n3,1,-1
        do 20 j=n2,1,-1
          do 20 i=n1,1,-1
            a(i,j,k) = sin(cos(b(i,j,k)))
     &               + cos(sin(c(i,j,k)))
   20 continue
      end
