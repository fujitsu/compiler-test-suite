      integer,parameter::p1=3
      integer*8          ,dimension(p1,p1,p1)::r,e
      r=reshape((/(iv,iv=1,p1*p1*p1)/),(/p1,p1,p1/))
      e=r
      do i=1,10
        call sub
        e=(r+reshape((/(iv,iv=1,p1*p1*p1)/),(/p1,p1,p1/)))+r
      enddo
      do i=1,10
        call sub_arg(e)
        r=r+(reshape((/(iv,iv=1,p1*p1*p1)/),(/p1,p1,p1/))+r)
      enddo
      print *,r
      print *,e
      contains
        subroutine sub
        integer*8,parameter,dimension(p1,p1,p1)::
     1    pr=reshape((/(iv,iv=1,p1*p1*p1)/),(/p1,p1,p1/))
        r=r+reshape((/(iv,iv=1,p1*p1*p1)/),(/p1,p1,p1/))+pr
	call sub_arg(e)
        end subroutine sub
        subroutine sub_arg(e)
        integer*8          ,dimension(p1,p1,p1)::e
        integer*8,parameter,dimension(p1,p1,p1)::
     1    pr=reshape((/(iv,iv=1,p1*p1*p1)/),(/p1,p1,p1/))
        e=e+reshape((/(iv,iv=1,p1*p1*p1)/),(/p1,p1,p1/))+pr
        end subroutine
      end
