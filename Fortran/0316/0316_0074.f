
      character*5 chaa,chbb,chcc,chdd
      parameter (chaa='aaa  ')
      parameter (chbb=' bbb ')
      parameter (chcc='     ')
      parameter (chdd='ddddd')

      character*5,parameter ::cha=adjustr(STRING=chaa)
      character*5,parameter ::chb=adjustr(chbb)
      character*5,parameter ::chc=adjustr(chcc)
      character*5,parameter ::chd=adjustr(chdd)
  
      call check(cha,adjustr(chaa))
      call check(chb,adjustr(chbb))
      call check(chc,adjustr(chcc))
      call check(chd,adjustr(chdd))
      print *,'*** ok ***'
      end

      subroutine check(c,ct)
      character*(*) c,ct
      if (c.ne.ct) then
        print *,'??? ng ???'
        stop 1
      endif
      end
