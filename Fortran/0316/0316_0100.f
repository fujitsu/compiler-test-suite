
      character*1 c1,c2,c3,c4
      character*5 c5
      parameter (c1='!')
      parameter (c2='0')
      parameter (c3='\\')
      parameter (c4='a')
      parameter (c5='vwxyz')

      integer*4,parameter ::ia=ichar(c1)
      integer*4,parameter ::ib=ichar(c2)
      integer*4,parameter ::ic=ichar(c3)
      integer*4,parameter ::id=ichar(c4)
      integer*4,parameter ::ie=ichar(c5)
  
      call check(ia,ichar(c1))
      call check(ib,ichar(c2))
      call check(ic,ichar(c3))
      call check(id,ichar(c4))
      call check(ie,ichar(c5))
      print *,'*** ok ***'
      end

      subroutine check(i,it)
      integer*4 i,it
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
