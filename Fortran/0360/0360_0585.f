      integer*4 i4(10)/10*0/,i4b(10)/1,2,3,4,5,6,7,8,9,10/,i41,i42
      integer*8 i8(10)/10*0/,i8b(10)/1,2,3,4,5,6,7,8,9,10/,i81,i82
      real*4 r4(10)/10*0/,r4b(10)/1,2,3,4,5,6,7,8,9,10/
      real*8 r8(10)/10*0/,r8b(10)/1,2,3,4,5,6,7,8,9,10/
      integer res1(10)/1,2,3,4,5,6,7,0,0,0/,calc(10)
      integer res2(10)/1,2,3,0,0,0,0,0,0,0/
      integer res3(10)/3,6,9,4,5,6,7,0,0,0/
      integer res4(10)/3,6,9,12,15,18,21,0,0,0/
      call sub1(i4,i4b)
      calc = i4
      call check(calc,res1,1)
      call sub2(i8,i8b)
      calc = i8
      call check(calc,res2,2)
      call sub3(r4,r4b)
      calc = r4
      call check(calc,res1,3)
      call sub4(r8,r8b)
      calc = r8
      call check(calc,res2,4)
      call sub5(i4,i4b)
      calc = i4
      call check(calc,res3,5)
      call sub6(r4,r4b)
      calc = r4
      call check(calc,res3,6)
      call sub7(i8,i8b)
      calc = i8
      call check(calc,res4,7)
      call sub8(r8,r8b)
      calc = r8
      call check(calc,res4,8)
      write(6,*) 'ok'
      end

      subroutine sub1(i4,i4b)
      integer*4 i4(10),i4b(10)

      do i=1,7
         i4(i) = i4b(i)
      enddo
      end

      subroutine sub2(i8,i8b)
      integer*8 i8(10),i8b(10)

      do i=1,3
         i8(i) = i8b(i)
      enddo
      end

      subroutine sub3(r4,r4b)
      real*4 r4(10),r4b(10)

      do i=1,7
         r4(i) = r4b(i)
      enddo
      end


      subroutine sub4(r8,r8b)
      real*8 r8(10),r8b(10)

      do i=1,3
         r8(i) = r8b(i)
      enddo
      end

      subroutine sub5(i4,i4b)
      integer*4 i4(10),i4b(10)

      do i=1,3
         i4(i) = i4b(i)*3
      enddo
      end

      subroutine sub6(r4,r4b)
      real*4 r4(10),r4b(10)

      do i=1,3
         r4(i) = r4b(i)*3
      enddo
      end

      subroutine sub7(i8,i8b)
      integer*8 i8(10),i8b(10)

      do i=1,7
         i8(i) = i8b(i)*3
      enddo
      end

      subroutine sub8(r8,r8b)
      real*8 r8(10),r8b(10)

      do i=1,7
         r8(i) = r8b(i)*3
      enddo
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
