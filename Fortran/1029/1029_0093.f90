      i=2
      call sub(i)
      print *,'pass'
    end
    subroutine sub(i)
      if (i.eq.2) then
        if (i.eq.2) then
          if (i.eq.2) then
            if (i.eq.2) goto 100
              write(6,*) "NG"
  100       continue
          else
            write(6,*) "NG"
          endif
        else
          write(6,*) "NG"
        endif
      else
        write(6,*) "NG"
      endif
    end
