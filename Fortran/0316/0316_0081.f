
      character*1 c1,c2,c3,c4,c5
      parameter (c1='!')
      parameter (c2='0')
      parameter (c3='\\')
      parameter (c4='a')
      parameter (c5='z')

      integer*4,parameter ::ia=iachar(c1)
      integer*4,parameter ::ib=iachar(c2)
      integer*4,parameter ::ic=iachar(c3)
      integer*4,parameter ::id=iachar(c4)
      integer*4,parameter ::ie=iachar(c5)
  
      call check(ia,iachar(c1))
      call check(ib,iachar(c2))
      call check(ic,iachar(c3))
      call check(id,iachar(c4))
      call check(ie,iachar(c5))
      print *,'*** ok ***'
      end

      subroutine check(i,it)
      integer*4 i,it
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
