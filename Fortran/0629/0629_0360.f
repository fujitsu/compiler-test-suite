      real*4 a4(10,10),b4(10,10),c4(10,10)
      real*8 a8(10,10),b8(10,10),c8(10,10)
      integer m(10)
      data   a4/100*2/,b4/100*3/,c4/100*4/
      data   a8/100*2/,b8/100*3/,c8/100*4/
      data m/1,1,3,4,0,1,0,0,1,1/
      integer n,n2

      do l=1,10
        if (m(l).gt.0) then
          do j=1,10
            do k=1,10
              do i=1,10
                c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
              enddo
            enddo
          enddo
        endif
      enddo
      print *,c4

      call sub(n,n2)
      do l=n,n2
        if (m(l).gt.0) then
          do j=n,n2
            do k=n,n2
              do i=n,n2
                c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
              enddo
            enddo
          enddo
        endif
      enddo
      print *,c4

      do l=n,n2
        if (0.lt.m(l)) then
          do k=n,n2
            do i=n,n2
               do j=n,n2
                 c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
               enddo
            enddo
          enddo
        endif
      enddo      
      print *,c8
      end

      subroutine sub(n,n2)
      n=2
      n2=9
      return
      end