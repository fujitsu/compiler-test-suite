      program main
      integer*4 i4a(65),i4b(65),result(65)
      call init(i4a,i4b,result,65)
      do i=1,2
        call test(i4a,i4b,65)
      enddo
      do i=1,65
         if(i4a(i) .ne. result(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(i4a,i4b,result,n1)
      integer*4  i4a(n1),i4b(n1),result(n1)

      do i=1,65
        i4a(i) = 0
        i4b(i) = i
        result(i) = i
      enddo

      do i=1,65,2
        i4b(i) = -i
      enddo
      end

      subroutine test(i4a,i4b,n1)
      integer*4 i4a(n1),i4b(n1)
      
      do i=1,65
        i4a(i) = abs(i4b(i))
      enddo
      
      end
