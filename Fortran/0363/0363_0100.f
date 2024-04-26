      program main
      integer*8 i8a(65),i8b(65),result(65)
      call init(i8a,i8b,result,65)
      do i=1,2
        call test(i8a,i8b,65)
      enddo
      do i=1,65
         if(i8a(i) .ne. result(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(i8a,i8b,result,n1)
      integer*8  i8a(n1),i8b(n1),result(n1)

      do i=1,65
        i8a(i) = 0
        i8b(i) = i
        result(i) = i
      enddo

      do i=1,65,2
        i8b(i) = -i
      enddo
      end

      subroutine test(i8a,i8b,n1)
      integer*8 i8a(n1),i8b(n1)
      
      do i=1,65
        i8a(i) = abs(i8b(i))
      enddo
      
      end
