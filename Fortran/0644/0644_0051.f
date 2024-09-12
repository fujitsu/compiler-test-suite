      module mo

      contains
      subroutine sub()
        real*8,dimension(:),pointer:: arp
        real*8,dimension(:,:),pointer:: ar2p
        real*8,dimension(:,:,:),pointer:: ar3p

        allocate(arp(-10:10))
        allocate(ar2p(-10:10,5))
        allocate(ar3p(-10:10,5,10))

        arp = 0
        ar2p = 0
        ar3p = 0
	arp(-10) = 1.0
	arp(-9) = 2.0
	arp(-8) = 3.0
	arp(10) = 4.0
	arp(9) = 5.0
	arp(8) = 6.0
	print *,arp
	call flush(6)
	print *,arp(9)
	call flush(6)
	print *,arp(8)
	call flush(6)

	ar2p(-10,1) = 1.0
	ar2p(-9,2) = 2.0
	ar2p(-8,3) = 3.0
	ar2p(10,4) = 4.0
	ar2p(9,5) = 5.0
	ar2p(8,1) = 6.0
	print *,ar2p
	call flush(6)
	print *,ar2p(9,5)
	call flush(6)
	print *,ar2p(8,1)
	call flush(6)

	ar3p(-10,1,10) = 1.0
	ar3p(-9,2,9) = 2.0
	ar3p(-8,3,8) = 3.0
	ar3p(10,4,7) = 4.0
	ar3p(9,5,6) = 5.0
	ar3p(8,1,5) = 6.0
	print *,ar3p
	call flush(6)
	print *,ar3p(9,5,6)
	call flush(6)
	print *,ar3p(8,1,5)
	call flush(6)
      end subroutine
      end module
      use mo
      call sub()
      stop
      end
