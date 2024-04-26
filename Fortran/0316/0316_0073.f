
      character*5 chaa(10),chbb(10),chcc(10),chdd(10)
      parameter (chaa=(/'  aaa','  aaa','  aaa','a a a','a a a',
     +                  'a a a',' a a ',' a a ','aaaa ','     '/))
      parameter (chbb=(/' bbb ',' bbb ',' bbb ',' bbb ',' bbb ',
     +                  ' bbb ',' bbb ',' bbb ',' bbb ',' bbb '/))
      parameter (chcc='     ')
      parameter (chdd=(/'ddddd',' dddd','  ddd','   dd','    d',
     +                  'ddddd',' dddd','  ddd','   dd','    d'/))

      character*5,parameter ::cha(10)=adjustl(string=chaa)
      character*5,parameter ::chb(10)=adjustl(STRING=chbb)
      character*5,parameter ::chc(10)=adjustl(STRING=chcc)
      character*5,parameter ::chd(10)=adjustl(STRING=chdd)
  
      do i=1,10
        call check(cha(i),adjustl(chaa(i)))
        call check(chb(i),adjustl(chbb(i)))
        call check(chc(i),adjustl(chcc(i)))
        call check(chd(i),adjustl(chdd(i)))
      enddo
      print *,'*** ok ***'
      end

      subroutine check(c,ct)
      character*(*) c,ct
      if (c.ne.ct) then
        print *,'??? ng ???'
        stop 1
      endif
      end
