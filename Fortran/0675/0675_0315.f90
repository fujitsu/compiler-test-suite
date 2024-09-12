      call sub(10,1)
      end

      subroutine sub(M,N)
      real*8 a(10),b(10),c(10)
      data c/1,2,3,4,5,6,7,8,9,20/
      equivalence (a,b)

      A(1) = 1.0

      do i = 2,9
        B(i) = i+i*C(i)
        A(i) = EXP(SIN(B(i))+COS(C(i)))
        A(i+1) = c(i)+2
      end do

      do i = 1,M-1,N
        B(i) = A(i)**i+SIN(C(i))+COS(C(i))
        A(i+1)=B(i)
      end do

      do i = 1,9
        A(i) = B(i+1)**i+EXP(C(i))+LOG(C(i))
      end do

      write(6,*) "A =",A
      write(6,*) "B =",B
       end
