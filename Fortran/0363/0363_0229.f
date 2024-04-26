      program main
      complex(8) c8a(65),c8b(65),c8c,res(65)
      call init(c8a,c8b,c8c,res,65)
      do i=1,2
        call test(c8a,c8b,c8c,65)
      enddo
      do i=1,65
         if(c8a(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"


      write(6,*) c8a
      write(6,*) res

 20   continue
      end

      subroutine init(c8a,c8b,c8c,res,n1)
      complex(8) c8a(n1),c8b(n1),c8c,res(n1)

      do i=1,65
        c8a(i) = cmplx(-i,3)
        c8b(i) = cmplx(10,i)
        c8c = (2,-4)
        res(i) = c8a(i) + c8b(i) * c8c*2
      enddo
      end
      
      subroutine test(c8a,c8b,c8c,n1)
      complex(8) c8a(n1),c8b(n1),c8c
      
      do i=1,65
         c8a(i) =  c8a(i) + c8b(i) * c8c
      enddo
      
      end
