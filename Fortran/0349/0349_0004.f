      real*8 x(99),y(99),z(99),h(99)
      do i=1,99
         z(i) = -1
         h(i) = -1
         y(i) = i
         x(i) = mod(i,3)-1
      enddo

      call stepn0(99,x,h)
      call check(h,0)
      call stepn1(99,x,y,z)	
      call check(z,1)
      call stepn2(99,x,y,z)	
      call check(z,2)
      call stepn3(99,x,y,z)	
      call check(z,3)
      call stepn4(99,x,y,z)	
      call check(z,4)
      call stepn5(99,x,y,z)	
      call check(z,5)
      call stepn6(99,x,y,z)	
      call check(z,6)
      write(6,*) "ok"
      end
	
      subroutine stepn0(n,x,h)
      real*8 x(n),h(n)
      do i=1,n
         if(x(i)>=0) then
            h(i)=1.0d0
         else
            h(i)=0.0d0
         end if
      end do
      end

      subroutine stepn1(n,x,y,z)
      real*8 x(n),h,y(n),z(n)
      do i=1,n
         if(x(i)>=0) then
            h=1.0d0
         else
            h=0.0d0
         end if
         z(i)=h*y(i)
      end do
      end

      subroutine stepn2(n,x,y,z)
      real*8 x(n),h,y(n),z(n)
      do i=1,n
         h=0.0d0
         if(x(i)>=0) then
            h=1.0d0
         end if
         z(i)=h*y(i)
      end do
      end

      subroutine stepn3(n,x,y,z)
      real*8 x(n),w,y(n),z(n)
      do i=1,n
         if(x(i)>=0) then
            w=y(i)
         else
            w=0.0d0
         end if
         z(i)=w
      end do
      end

      subroutine stepn4(n,x,y,z)
      real*8 x(n),y(n),z(n),v,w
      do i=1,n
         w=y(i)
         if(x(i)>=0) then
            w=0.0d0
         end if
         z(i)=w
      end do
      end

      subroutine stepn5(n,x,y,z)
      real*8 x(n),y(n),z(n),v,w
      do i=1,n
         w=0.0d0
         if(x(i)<0) then
            w=y(i)
         end if
         z(i)=w
      end do
      end

      subroutine stepn6(n,x,y,z)
      real*8 x(n),y(n),z(n),w
      do i=1,n
         if(x(i)>=0) then
            w= y(i) + 1
         else
            w= y(i) - 2
         end if
         z(i) = w
      end do
      end

      subroutine check(calc,no)
      real*8 res(99),calc(99),res2(99)

      do i=1,99
         if((mod(i,3)-1) >= 0) then
            res2(i) = i + 1
         else
            res2(i)= i - 2
         end if
      end do
      do i=1,99,3
         if (no <= 3) then
            res(i) = 1
            res(i+1) = 1
            res(i+2) = 0
         else
            res(i) = 0
            res(i+1) = 0
            res(i+2) = 1
         endif
      enddo
      do i=1,99
         if (no == 0) then
            if(res(i) .ne. calc(i)) then
               write(6,*) "NG (",no,")"
               write(6,1) calc
               stop
            end if
         else if (no == 6) then
            if(res2(i) .ne. calc(i)) then
               write(6,*) "NG (",no,")"
               write(6,1) calc
               stop
            end if
         else
            if(res(i)*i .ne. calc(i)) then
               write(6,*) "NG (",no,")"
               write(6,1) calc
               stop
            end if
         endif
      end do
      do i=1,99
	 calc(i) = -1
      enddo
 1    format(10f7.2)
      end
