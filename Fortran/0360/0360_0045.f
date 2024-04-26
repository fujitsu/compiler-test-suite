      subroutine i4i8
      integer*4 i4a(20)/20*0/,i4b(20)
      integer*8 list(20),calc(20)
      data i4b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data list/1,11,12,17,3,9,20,7,19,13,2,14,15,16,5,4,10,8,18,6/

      do i=1,3
         i4a(i) = i4b(list(i)) 
      enddo
      calc = i4a
      call check(calc,1)
      end

      subroutine i8i8
      integer*8 i8a(20)/20*0/,i8b(20)
      integer*8 list(20),calc(20)
      data i8b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data list/1,11,12,17,3,9,20,7,19,13,2,14,15,16,5,4,10,8,18,6/


      do i=1,3
         i8a(i) = i8b(list(i)) 
      enddo
      calc = i8a
      call check(calc,2)
      end

      subroutine r4i8
      real*4 r4a(20)/20*0/,r4b(20)
      integer*8 list(20),calc(20)
      data r4b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data list/1,11,12,17,3,9,20,7,19,13,2,14,15,16,5,4,10,8,18,6/


      do i=1,3
         r4a(i) = r4b(list(i)) 
      enddo
      calc = r4a
      call check(calc,3)
      end

      subroutine r8i8
      real*8 r8a(20)/20*0/,r8b(20)
      integer*8 list(20),calc(20)
      data r8b/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/
      data list/1,11,12,17,3,9,20,7,19,13,2,14,15,16,5,4,10,8,18,6/


      do i=1,3
         r8a(i) = r8b(list(i)) 
      enddo
      calc = r8a
      call check(calc,4)
      end

      call i4i8
      call i8i8
      call r4i8
      call r8i8
      write(6,*) "ok"
      end

      subroutine check(calc,num)
      integer*8 calc(20),res(20)
      data res/1,11,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0/
      do i=1,20
         if (calc(i).ne.res(i)) then
            write(6,*) "## NG ",num,"##"
            write(6,*) calc
            write(6,*) res
            stop
         endif
      enddo
      end

