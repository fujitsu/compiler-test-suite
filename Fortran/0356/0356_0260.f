      subroutine sub(a,n,m,kk)
      integer*4 a(5,kk)
      do i=n,5
         do j=m,6
            a(i,j) = a(i,j) + 5
         end do
      end do
      end

      integer*4 a(10,10)/100*1/
      integer*4 res1(100)/30*6,70*1/
      integer*4 res2(100)/11*1,4*6,1,4*6,1,4*6,1,4*6,70*1/
      integer*4 res3(100)/100*1/
      call sub(a,1,1,6)
      call check(a,res1,1)
      a=1
      call sub(a,2,3,6)
      call check(a,res2,2)
      a=1
      call sub(a,10,10,6)
      call check(a,res3,3)
      write(6,*) "ok"
      end

      subroutine check(a,res,num)
      integer a(100),res(100)
      do i=1,100
         if (a(i) .ne. res(i)) then
            write(6,*) "ng",num
            write(6,*) a
            write(6,*) res
            return
         endif
      enddo
      return
      end
