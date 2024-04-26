      type tag
	integer   i(10)
	integer   j(10)
      end type
      type (tag) ::t
      integer ii(10),jj(10),ip(10),jp(10)
      parameter (ip = (/ (10*k/k,k=1,10) /) )
      parameter (jp = (/ (20*k/k,k=1,10) /) )
      parameter ( t=tag(ip,jp) )
      data ii /10*10/
      data jj /10*20/
      call check(t%i,ii)
      call check(t%j,jj)
      print *,'** OK **'
      end

      subroutine check(i,ii)
      integer i(10),ii(10)
      do m=1,10
        if (i(m).ne.ii(m)) then
           print *,'?? NG ??'
           stop
        endif
      enddo
      end
