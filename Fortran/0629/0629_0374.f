      real*4 a1(10,10),b1(10,10),c1(10,10),d1(10,10)
      data a1/100*2/,b1/100*3/,c1/100*4/,d1/100*5/

      do i=1,8
        do j=1,8
            d1(i,j)=0
          do k=1,8
            c1(i,j)=c1(i,j)+a1(i,k)*b1(k,j)
          enddo
        enddo
      enddo
      print *,'## c1 ## ',c1
      print *,'## d1 ## ',d1
      end
