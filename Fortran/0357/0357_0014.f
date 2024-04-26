      integer*8,parameter::p1=2
      integer*8,target,dimension(p1,p1,p1)::r,e
      integer*8,pointer,dimension(:,:,:)::rp,ep
c
      integer*8,pointer::ivp
      integer*8,target ::iva
      ivp=>iva
      rp=>r
      ep=>e
      do i=1,10
        call sub
        rp=r+(reshape((/(iva,iva=1,p1*p1*p1)/),(/p1,p1,p1/))+r)
      enddo
      print *,r
      print *,e
      contains
        subroutine sub
        integer*8,parameter,dimension(p1,p1,p1)::
     1    pr=reshape((/(ivp,ivp=1,p1*p1*p1)/),(/p1,p1,p1/))
        r=reshape((/(iva,iva=1,p1*p1*p1)/),(/p1,p1,p1/))+pr
        do i=1,10
          rp=pr+pr
          call sub_rsh(reshape((/(ivp,ivp=1,p1*p1*p1)/),(/p1,p1,p1/)))
          rp=r+pr+pr
          call sub_arg(ep)
          rp=r+pr
        enddo
	call sub_arg(e)
        end subroutine sub
c
        subroutine sub_arg(e)
        integer*8          ,dimension(p1,p1,p1)::e
        e=ep+r
        end subroutine sub_arg
c
        subroutine sub_rsh(t)
        integer*8          ,dimension(p1,p1,p1)::t
	ep=t+r
        end subroutine sub_rsh
      end
