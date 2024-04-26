      program main
      integer,parameter::N=50
      integer,parameter::M1=5
      integer,parameter::M2=8
      integer,parameter::ANS=-71
      complex(kind=16),dimension(1:N)::com1,com2
      complex(kind=16),dimension(1:N)::dat1,dat2
      complex(kind=16),dimension(1:N)::res

      dat1 = (/(cmplx(real(mod(i,M1),kind=8), &
     &     real(mod(i,M2),kind=8)),i=1,N)/)
      dat2 = (/(cmplx(real(i,kind=8),real(i,kind=8)),i=N,1,-1)/)
      com1=(0.0D0,0.0D0)
      com2=(0.0D0,0.0D0)

      do i=1,N
         call sub(com1,com2,dat1,dat2,N,i)
      enddo

      where (real(com1+com2) > real(dat1+dat2))
         res = com1+com2
      elsewhere
         res = dat1+dat2
      endwhere

      isum = int(sum(real(res))-sum(aimag(res)))

      if (isum .eq. ANS) then
      else
         print *,"NG"
         print *,isum
      endif
      print *,'pass'

      end program

      subroutine sub(com1,com2,dat1,dat2,N,i)
      integer N
      complex(kind=16),dimension(1:N)::com1,com2
      complex(kind=16),dimension(1:N)::dat1,dat2
      integer i
      logical func

      where ((real(dat1)>real(dat2)).and.(aimag(dat1)>aimag(dat2)))
         com1 = dat1
      elsewhere
         com2 = dat2
      endwhere

      if (mod(i,2).ne.0) then
         where (real(com1)>real(com2))
            com1 = dat2
         elsewhere
            com2 = dat1
         endwhere
         where ((real(com1).eq.real(com2)) &
     &        .and.(aimag(com1).eq.aimag(com2)))
            com1 = dat1
            com2 = dat2
         endwhere
      endif

      if (func(com1+com2,dat1+dat2,N)) then
         where ((real(com1).eq.aimag(dat1)) &
     &        .or.(real(com2).eq.aimag(dat2)))
            com1 = cmplx(1.0D0,1.0D0)
            com2 = cmplx(1.1D0,1.1D0)
            dat1 = cmplx(1.2D0,1.2D0)
            dat2 = cmplx(1.3D0,1.3D0)
         endwhere
      endif

      end

      logical function func(a,b,N)
      complex(kind=16),dimension(1:N)::a,b
      integer,dimension(1:N)::c

      c = 0
      where (real(a)>aimag(a))
         c = c + 1
      elsewhere
         c = c - 1
      endwhere
      where (real(b)>aimag(b))
         c = c + 1
      elsewhere
         c = c - 1
      endwhere

      func = (sum(c)>0)
      end
