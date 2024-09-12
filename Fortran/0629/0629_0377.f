      real*4 a(10,10),b(10,10),c(10,10)
      integer m(10)
      data a/20*1,20*2,20*3,20*1,20*2/
      data b/20*2,20*3,20*1,20*2,20*3/
      data c/20*3,20*1,20*2,20*3,20*1/
      data m/1,1,3,4,0,1,0,0,1,0/

      do j=1,10
        do k=1,10
          do i=1,10
            if (m(i).gt.0) then
              c(i,j)=c(i,j)+a(i,k)*b(k,j)
            endif
          enddo
        enddo
      enddo
      print *,c

      do j=1,10
        do k=1,10
          if (m(k).gt.0) then
            do i=1,10
              c(i,j)=c(i,j)+a(i,k)*b(k,j)
            enddo
          endif
        enddo
      enddo
      print *,c

      do j=1,10
        if (m(j).gt.0) then
          do k=1,10
            do i=1,10
              c(i,j)=c(i,j)+a(i,k)*b(k,j)
            enddo
          enddo
        endif
      enddo
      print *,c

      do l=1,9
        do j=1,9
          do k=1,9
            do i=1,9
              if (m(i).gt.0) then
                c(i,j)=c(i,j)+a(i,k)*b(k,j)
              endif
            enddo
          enddo
        enddo
      enddo
      print *,c
      end
