      call sub()
     print *,'pass'
    end

    subroutine sub()
     character*5::ch1,ch2

      ch1='aaaaa'
      ch2='bbbbb'

      if (ch1 .gt. 'aaaab' .or. ch2 .gt. 'bbbbc') then
        write(6,*) "NG"
      endif
    end subroutine
