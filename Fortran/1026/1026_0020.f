      module mo
        real*8,dimension(-10:10),target:: ar
        real*8,dimension(:),pointer:: arp

        contains
          subroutine sub()
          arp=>ar

          ar(-10) = 1.0
          ar(-9) = 2.0
          ar(-8) = 3.0
          ar(10) = 4.0
          ar(9) = 5.0
          ar(8) = 6.0
          print *,ar

          end subroutine
      end module
      use mo
      ar=0
      call sub()
      stop
      end
