
      module mod1
      integer*4  N
      parameter  (N=40)
      integer*4 a(N), b(N), c(N), d(N), e(N)
      equivalence(b,a(11))
      equivalence(c,b(11))
      equivalence(d,c(11))
      logical*1,dimension(N) :: mk
      integer kei,ans
      parameter (ans=3464)

      contains
      subroutine print_kei(total,answer)
      integer total, answer

      if ((total .eq. kei) .and. (total .eq. answer)) then
         print *,"OK"
      else
         print *,total,kei,answer
         print *,"NG"
      endif
      end subroutine

      subroutine print_kai1(a)
      integer a
        print *,a
      end subroutine

      subroutine print_kai2(a,N)
      integer N
      integer a(N)
        print *,a
      end subroutine
      end module

      program main
      use mod1
      integer LP
      parameter (LP=5)

      call init_array()

      do i=1, LP
         call sub_array(i)
      enddo

      call print_kei(kei,ans)

      contains
      subroutine init_array()

      do i=1,N
         if (mod(i,3) .eq. 0) then
            mk(i) = .true.
         else
            mk(i) = .false.
         endif
      enddo

      where (mk)
         a = 1
         b = 2
         c = 3
         d = 4
      elsewhere
         d = 5
         c = 6
         b = 7
         a = 8
      endwhere
      end subroutine

      end program


      subroutine sub_array(i)
      use mod1
      integer i

      if (i == 5) then
         a(5:N-5) = a(6:N-4) + b(1:N-9) + c(2:N-8) + d(3:N-7)
         a(4:N-6) = a(5:N-5) + b(4:N-6) + c(5:N-5) + d(6:N-4)
         a(3:N-7) = a(4:N-6) + b(7:N-3) + c(8:N-2) + d(9:N-1)
      else
         where (mk(i+10:N-21+i))
            a(i:N-31+i) = a(i+1:N-30+i) + (b(i+1:N-30+i) - c(i:N-31+i))
            d(i+15:N-16+i) = maxval(a(i+5:N-5),1,a(i+4:N-6) < 17)
         elsewhere
            a(i+1:N-30+i) = a(i+2:N-29+i) 
     &        + (c(i+1:N-30+i) - d(i+10:N-21+i))
            d(i:N-31+i) = minval(a(i+5:N-5),1,a(i+3:N-7) > 6)
         endwhere
      endif

      kei = sum(a(i:N-i),1,a(i+1:N-i+1) > 8)
      
      end subroutine
