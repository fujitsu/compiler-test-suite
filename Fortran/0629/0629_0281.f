      real*4  a(1000,10)/10000*2/,b(1000,10)/10000*2/
      do j=1,10
       do i=1,100
        a(i,j)=j*2
        b(i,j)=j*2
       enddo
      enddo
      do 10 l=2,10
       do j=2,10
        do i=2,100
         a(i,j)=a(i-1,l)
        enddo
       enddo
  10  enddo
      do 20 l=2,10
       do j=2,10
        do i=2,100
         b(i,j)=b(i-1,l)
        enddo
       enddo
   20 enddo
      do l=2,10
       do j=2,10
        do i=2,100
         if(a(i,j).ne.b(i,j))then
          print*,i,j,a(i,j),b(i,j)
          stop 'NG'
         endif
        enddo
       enddo
      enddo
      print*,"OK"
      end
