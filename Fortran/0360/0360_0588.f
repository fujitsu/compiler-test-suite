      integer*4 i4(10)/10*0/,i4b(10)/1,2,3,4,5,6,7,8,9,10/,i41,i42
      integer*8 i8(10)/10*0/,i8b(10)/1,2,3,4,5,6,7,8,9,10/,i81,i82
      real*4 r4(10)/10*0/,r4b(10)/1,2,3,4,5,6,7,8,9,10/
      real*8 r8(10)/10*0/,r8b(10)/1,2,3,4,5,6,7,8,9,10/
      integer res1(10)/0,2,3,4,5,6,7,8,0,0/,calc(10)
      integer res2(10)/0,2,3,4,0,0,0,0,0,0/
      integer res3(10)/0,6,9,12,5,6,7,8,0,0/
      integer res4(10)/0,6,9,12,15,18,21,24,0,0/

      do i=2,8
         i4(i) = i4b(i)
      enddo
      calc = i4
      call check(calc,res1,1)

      do i=2,4
         i8(i) = i8b(i)
      enddo
      calc = i8
      call check(calc,res2,2)

      do i=2,8
         r4(i) = r4b(i)
      enddo
      calc = r4
      call check(calc,res1,3)

      do i=2,4
         r8(i) = r8b(i)
      enddo
      calc = r8
      call check(calc,res2,4)

      do i=2,4
         i4(i) = i4b(i)*3
      enddo
      calc = i4
      call check(calc,res3,5)

      do i=2,4
         r4(i) = r4b(i)*3
      enddo
      calc = r4
      call check(calc,res3,6)

      do i=2,8
         i8(i) = i8b(i)*3
      enddo
      calc = i8
      call check(calc,res4,7)

      do i=2,8
         r8(i) = r8b(i)*3
      enddo
      calc = r8
      call check(calc,res4,8)
      write(6,*) 'ok'
      end

      subroutine check(calc,res,no)
      integer calc(10),res(10)
      do i=1,10
         if (calc(i) .ne. res(i)) then
            write(6,*) "test ",no," NG"
            write(6,*) calc
            write(6,*) res
            stop
         endif
      enddo
      return
      end
