
      character*10, parameter  ::cha='          '
      character*0,  parameter  ::chb=''
      character*(len_trim(cha)),parameter ::chaa=trim(cha)
      character*(len_trim(chb)),parameter ::chbb=trim(chb)

      call check(len(chaa),len(trim(cha)))
      call check(len(chbb),len(trim(chb)))

      print *,'*** ok ***'
      end

      subroutine check(i,it)
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
