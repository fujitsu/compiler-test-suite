      implicit integer(8)(a-z)
      parameter (n=65)
      integer(8) a(n),b(n),res(n)
      call init(a,b,res,n)
      do i=1_8,2_8
        call test(a,b,n)
      enddo
      do i=1,n
         if(a(i) .ne. res(i)) goto 10
      enddo
      goto 20
 10   PRINT *,'error'
      write(6,*) a
      write(6,*) res
 20   continue
      PRINT *,'pass'
      end

      subroutine init(a,b,res,n1)
      implicit integer(8)(a-z)
      integer(8)  a(n1),b(n1),res(n1)
      parameter (n=65)
      do i=1_8,n
         a(i) = 0_8
         b(i) = i*10_8
         res(i) = ishft(b(i),-3_8)
      enddo
      end

      subroutine test(a,b,n1)
      parameter (n=65)
      integer(8) a(n1),b(n1)
      do i=1_8,n
        a(i) = ishft(b(i),-3_8)
      enddo
      end
