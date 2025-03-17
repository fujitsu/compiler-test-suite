      module mo
      common /cmn/ com
      character*1 ch1
      real dim(10)
      integer int
      contains
        subroutine sub1()
        real a1
	ch1='a'
	dim(1)=1
	int=1
	a1=1
	call sub2()
        contains
          subroutine sub2()
          real a2
	ch1='b'
	dim(2)=2
	int=2
	a2=2
          end subroutine
        end subroutine
      end module

      use mo
      call sub1()
      end
