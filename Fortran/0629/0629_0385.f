      real*4 a4(10,10),b4(10,10),c4(10,10)
      data a4/20*1,20*2,20*3,20*1,20*2/
      data b4/20*2,20*3,20*1,20*2,20*3/
      data c4/20*3,20*1,20*2,20*3,20*1/

      do l=1,9
        do j=1,9
          c4(l,j)=8
          do k=1,9
            do i=1,9
              c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
            enddo
          enddo
        enddo
      enddo
      print *,c4
      end
