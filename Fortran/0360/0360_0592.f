      integer*4 i4(7)/7*0/,i4b(7)/1,2,3,4,5,6,7/,calc1(7)
      integer*8 i8(3)/3*0/
      real*4 r4(7)/7*0/
      real*8 r8(3)/3*0/
      integer res1(7)/1,2,3,4,5,6,7/,calc2(3)
      n7 = i4b(7)
      n3 = i4b(3)
      do i=1,n7
         i4(i) = i
      enddo
      calc1 = i4
      call check1(calc1,res1,7,1)

      do i=1,n3
         i8(i) = i
      enddo
      calc2 = i8
      call check2(calc2,res1,3,2)

      do i=1,n7
         r4(i) = i
      enddo
      calc1 = r4
      call check1(calc1,res1,7,3)

      do i=1,n3
         r8(i) = i
      enddo
      calc2 = r8
      call check2(calc2,res1,3,4)
      write(6,*) 'ok'
      end

      subroutine check1(calc,res,n,no)
      integer calc(7),res(7)
      do i=1,n
         if (calc(i) .ne. res(i)) then
            write(6,*) "test ",no," NG"
            write(6,*) calc
            write(6,*) res
            stop
         endif
      enddo
      return
      end

      subroutine check2(calc,res,n,no)
      integer calc(3),res(3)
      do i=1,n
         if (calc(i) .ne. res(i)) then
            write(6,*) "test ",no," NG"
            write(6,*) calc
            write(6,*) res
            stop
         endif
      enddo
      return
      end
