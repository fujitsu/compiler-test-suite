      subroutine sub
      common r
      integer,parameter::p1=2
      integer*8          ,dimension(p1,p1,p1)::r
      r=r+reshape((/(iv,iv=1,p1*p1*p1)/),(/p1,p1,p1/))+r
      end
c
      integer,parameter::p1=2
      common r
      integer*8          ,dimension(p1,p1,p1)::r,e
      equivalence (r,e)
      r=reshape((/(iv,iv=1,p1*p1*p1)/),(/p1,p1,p1/))
      do i=1,10
        call sub; print *,r
        e=(e+reshape((/(iv,iv=1,p1*p1*p1)/),(/p1,p1,p1/)))+e
        e=e+(reshape((/(iv,iv=1,p1*p1*p1)/),(/p1,p1,p1/))+e)
        call sub; print *,r
      enddo
      end
