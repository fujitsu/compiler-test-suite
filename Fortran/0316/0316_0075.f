
      character*5 chaa(10),chbb(10),chcc(10),chdd(10)
      parameter (chaa=(/'  aaa','  aaa','  aaa','a a a','a a a',
     +                  'a a a',' a a ',' a a ','aaaa ','     '/))
      parameter (chbb=(/' bbb ',' bbb ',' bbb ',' bbb ',' bbb ',
     +                  ' bbb ',' bbb ',' bbb ',' bbb ',' bbb '/))
      parameter (chcc='     ')
      parameter (chdd=(/'ddddd',' dddd','  ddd','   dd','    d',
     +                  'ddddd',' dddd','  ddd','   dd','    d'/))

      character*5,parameter ::cha(10)=adjustr(string=chaa)
      character*5,parameter ::chb(10)=adjustr(STRING=chbb)
      character*5,parameter ::chc(10)=adjustr(STRING=chcc)
      character*5,parameter ::chd(10)=adjustr(STRING=chdd)
  
      do i=1,10
        call check(cha(i),adjustr(chaa(i)))
        call check(chb(i),adjustr(chbb(i)))
        call check(chc(i),adjustr(chcc(i)))
        call check(chd(i),adjustr(chdd(i)))
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
