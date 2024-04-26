      integer, dimension(10) :: a1, a2, a3
      integer :: i
      integer*2, dimension(10) :: i2a

      call sub4(10)

      i2a = 2
      do i = 1, 10
         a1(i) = i2a(i)
         a3(i) = a1(i)
         a3(i) = real(a1(i))
      end do
      write (6, *) a1
      write (6, *) a3

      end

      subroutine sub4(n)
      implicit none
      integer n
      integer,dimension(11)::i4a,i4b
      integer :: i
      real, dimension(11) :: r4a, r4b 

      r4a(11) = 0
      r4b(11) = 0
      i4a(11) = 0
      i4b(11) = 0

      do i = 1, 10
         r4a(i) = i
         r4b(i) = r4a(i) + 1.
         i4a(i) = i
         i4b(i) = i4a(i) + 1.
         i4b(i+1) = 1
      end do

      write (6, 1) r4a, r4b
      write (6, 2) i4a,i4b
    1 format(6f13.5)
    2 format(15i5)

      return
      end subroutine sub4

