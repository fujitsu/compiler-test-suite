      module mo
	real*8,dimension(-10:10),target:: ar
	real*8,dimension(-10:10,5),target:: ar2
	real*8,dimension(-10:10,5,10),target:: ar3
        real*8,dimension(:),pointer:: arp
        real*8,dimension(:,:),pointer:: ar2p
        real*8,dimension(:,:,:),pointer:: ar3p

        contains
          subroutine sub()

          arp => ar
          ar2p => ar2
          ar3p => ar3

          ar(-10) = 1.0
          ar(-9) = 2.0
          ar(-8) = 3.0
          ar(10) = 4.0
          ar(9) = 5.0
          ar(8) = 6.0
          print *,ar
          call flush(6)

          ar2(-10,1) = 1.0
          ar2(-9,2) = 2.0
          ar2(-8,3) = 3.0
          ar2(10,4) = 4.0
          ar2(9,5) = 5.0
          ar2(8,1) = 6.0
          print *,ar2
          call flush(6)

          ar3(-10,1,10) = 1.0
          ar3(-9,2,9) = 2.0
          ar3(-8,3,8) = 3.0
          ar3(10,4,7) = 4.0
          ar3(9,5,6) = 5.0
          ar3(8,1,5) = 6.0
          print *,ar3
          call flush(6)
          end subroutine
        end module
        use mo
        call sub()
	stop
	end
