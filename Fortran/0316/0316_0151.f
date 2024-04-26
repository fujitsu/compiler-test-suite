
      character*10, parameter  ::cha='abcde     '
      character*10, parameter  ::chb='abcdefghij'
      character*10, parameter  ::chc='          '
      character*0,  parameter  ::chd=''
      character*(len_trim(cha)),parameter ::chaa=trim(string=cha)
      character*(len_trim(chb)),parameter ::chbb=trim(chb)
      character*(len_trim(chc)),parameter ::chbc=trim(chc)
      character*(len_trim(chd)),parameter ::chbd=trim(chd)

      call check(chaa,trim(string=cha))
      call check(chbb,trim(chb))
      call check(chbc,trim(chc))
      call check(chbd,trim(chd))

      print *,'*** ok ***'
      end

      subroutine check(ch,cht)
      character*(*) ch,cht
      if (ch.ne.cht) then
        print *,'??? ng ???'
        stop 1
      endif
      end
