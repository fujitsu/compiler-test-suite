      parameter (n=10000)
      complex*16 x(0:n-1,3,4),w(0:n-1,3,4)
      logical mask_e(0:n-1)

      w=(0,0)
      x=(1,2)
      do k=0,n-1
        if (k.LT.5000) then
          mask_e(k)=.TRUE.
        else
          mask_e(k)=.FALSE.
        endif 
      enddo

      do j=1,4
       do i=1,3
         do k=0,n-1
            if (mask_e(k)) then
               w(k,i,j) = x(k,i,j)
            end if
         end do
       end do
      end do
      print*,(mask_e(k),k=4999,5000)
      print*,(w(k,3,4),k=4999,5000)
      do j=1,4
       do i=1,3
         do k=0,n-1
            if (mask_e(k)) then
              if(w(k,i,j).NE.x(k,i,j)) then
                stop 'NG'
              end if
            else
              if(w(k,i,j).NE.(0,0)) then
                stop 'NG'
              end if
            end if
         end do
       end do
      end do
      print*,"OK"
      end
