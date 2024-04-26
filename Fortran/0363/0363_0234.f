      program main
      integer(4) i1a(65),i1b(65),i1c,res(65)
      call init(i1a,i1b,i1c,res,65)
      do i=1,2
        call test(i1a,i1b,i1c,65)
      enddo
      do i=1,65
         if(i1a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"
 20   continue
      end

      subroutine init(i1a,i1b,i1c,res,n1)
      integer(4) i1a(n1),i1b(n1),i1c,res(n1)

      do i=1,65
        i1a(i) = -i
        i1b(i) = i
        i1c = 2
        res(i) = -i + i * 4
      enddo
      end
      
      subroutine test(i1a,i1b,i1c,n1)
      integer(4) i1a(n1),i1b(n1),i1c
      
      do i=1,65
         i1a(i) =  i1a(i) + i1b(i) * i1c
      enddo
      
      end
