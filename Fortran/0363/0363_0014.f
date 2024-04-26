      program main
      complex(8) a(65),b(65),res(65)
      m = 2
      call init(a,b,res,65)
      do i=1,2
        call prg1(a,65,m)
      enddo
      do i=1,65
         if(b(i) .ne. res(i)) goto 10
      enddo
      write (6,*) "OK"
      goto 20
 10   write (6,*) "NG"


      write(6,*) b
      write(6,*) res

 20   continue
      end

      subroutine init(a,b,res,n1)
      complex(8)  a(n1),b(n1),res(n1)

      do i=65,1,-1
         a(i) = cmplx(i,i*2)
         b(i) = cmplx(i*3,-(i*5))
         res(i) = cmplx(i*3,-(i*5)) 
      enddo
      end

      subroutine prg1(b,n1,m)
      complex(8) b(n1)
      
      do i=65,1,-m
         b(i) = b(i) + 1
      enddo
      
      end

      subroutine prg2(a,n1)
      complex(8) a(n1)
      
      do i=65,1,-1
         a(i) = a(i) + 1
      enddo
      
      end


