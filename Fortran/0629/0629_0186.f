      subroutine sub(a1,a2,a3,a4,a5,a6,a7,b,c,n)
      integer a1(101),a2(102),a3(103),a4(104),a5(105)
      integer a6(106),a7(107),b(10),c(10)

      do i=1,n
         a1(i+2)=b(i)*c(i)
         a2(i-2)=b(i)*c(i)
         a3(i*2)=b(i)*c(i)
         a4(2*i)=b(i)*c(i)
         a5(2-i)=b(i)*c(i)
         a6(i+n)=b(i)*c(i)
         a7(i+2-n)=b(i)*c(i)
      enddo

      end

      program main
      print *,"Compile OK"
      end
