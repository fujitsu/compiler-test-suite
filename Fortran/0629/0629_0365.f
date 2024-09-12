      real*4 a4(11,10),b4(10,11),c4(12,10)
      real*8 a8(10,10),b8(11,12),c8(2:10,2:9)
      integer m1(10),m2(10)
      data   a4/110*2/,b4/110*3/,c4/120*4/
      data   a8/100*2/,b8/132*3/,c8/72*4/
      data m1/1,1,3,4,0,1,0,0,1,0/
      data m2/1,2,3,1,2,3,1,2,3,1/
      integer n1,n2,n3,n4,n5,n6

      call sub(n1,n2,n3,n4,n5,n6)
      do l=n1,n2
        if (m1(l).gt.0) then
          if (m2(l).eq.n1) then
            do j=n1,10
              do k=n3,n4
                do i=3,n6
                  c4(i,j)=c4(i,j)+a4(i,k)*b4(k,j)
                enddo
              enddo
            enddo
          else
            do i=2,9
              do j=3,9
                do k=2,8
                  c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
                enddo
              enddo
            enddo
          endif
        endif
      enddo
      print *,c4
      print *,c8

      do l=n1,n2
        if (m2(l).gt.0) then
          if (m1(l).eq.1) then
            do k=n3,n2
              do i=2,8
                do j=n5,n6
                  c8(i,j)=c8(i,j)+a8(i,k)*b8(k,j)
                enddo
              enddo
            enddo
          else
            do k=n3,n2
              do i=2,8
                do j=n5,n6
                  c4(k,j)=c4(k,j)+a4(k,i)*b4(i,j)
                enddo
              enddo
            enddo
          endif
        endif
      enddo      
      print *,c8
      print *,c4
      end

      subroutine sub(n1,n2,n3,n4,n5,n6)
      n1=1
      n2=9
      n3=2
      n4=8
      n5=3
      n6=7
      return
      end
