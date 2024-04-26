
      character*5 chaa,chbb,chcc,chdd
      parameter (chaa='  aaa')
      parameter (chbb=' bbb ')
      parameter (chcc='     ')
      parameter (chdd='ddddd')

      character*5,parameter ::cha=adjustl(chaa)
      character*5,parameter ::chb=adjustl(chbb)
      character*5,parameter ::chc=adjustl(chcc)
      character*5,parameter ::chd=adjustl(chdd)
  
      call check(cha,adjustl(chaa))
      call check(chb,adjustl(chbb))
      call check(chc,adjustl(chcc))
      call check(chd,adjustl(chdd))
      print *,'*** ok ***'
      end

      subroutine check(c,ct)
      character*(*) c,ct
      if (c.ne.ct) then
        print *,'??? ng ???'
        stop 1
      endif
      end
