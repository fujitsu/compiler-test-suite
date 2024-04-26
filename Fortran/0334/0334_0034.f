
      module mod1
      integer*2 N1
      integer*2 N2
      integer*2 N3
      integer*2 N4
      parameter (N1=10,N2=19,N3=37,N4=73)
      integer*8 a(N1)
      integer*4 b(N2)
      integer*2 c(N3)
      integer*1 d(N4)
      equivalence(b(2),a(2))
      equivalence(c(2),b(2))
      equivalence(d(2),c(2))
      logical*1,dimension(N2) :: msk2
      logical*1,dimension(N3) :: msk3
      logical*1,dimension(N4) :: msk4
      integer kei,ans
      parameter (ans=360)

      contains
      subroutine print_kei(total,answer)
      integer total
      integer answer

      if ((total .eq. kei) .and. (total .eq. answer)) then
         print *,"OK"
      else
         print *,"NG"
      endif
      end subroutine
      end module

      program main
      use mod1

      do i=1,7
         kei = i
         call print_kei(i,i)
      enddo
      end
