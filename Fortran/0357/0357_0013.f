      integer*8,parameter::p1=2
      integer*8          ,dimension(p1,p1,p1)::r,e
      integer*8          iv
      do i=1,10
        call sub
        r=r+(reshape((/(iv,iv=1,p1*p1*p1)/),(/p1,p1,p1/))+r)
      enddo
      print *,r
      print *,e
      contains
        subroutine sub
        integer*8,parameter,dimension(p1,p1,p1)::
     1    pr=reshape((/(iv,iv=1,p1*p1*p1)/),(/p1,p1,p1/))
        r=reshape((/(iv,iv=1,p1*p1*p1)/),(/p1,p1,p1/))+pr
        do i=1,10
          r=pr+pr
          r=r-pr+pr
          r=r-pr
          call sub_rsh(reshape((/(iv,iv=1,p1*p1*p1)/),(/p1,p1,p1/)))
          call sub_arg(e)
        enddo
	call sub_arg(e)
        end subroutine sub
c
        subroutine sub_arg(e)
        integer*8          ,dimension(p1,p1,p1)::e
        e=e+r
        end subroutine sub_arg
c
        subroutine sub_rsh(t)
        integer*8          ,dimension(p1,p1,p1)::t
	e=t+r
        end subroutine sub_rsh
      end
