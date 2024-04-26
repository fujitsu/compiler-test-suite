      program      na1e
      external     strfun
      character*20 sub
        if ( sub(strfun).eq.'xyz  1234y' ) then
          write(6,*) '*** ok ***'
        else
          write(6,*) '*** ng ***'
        endif
      end
      function     sub( s )
        character*10  s
        character*(*) sub
        sub = s( ichar('y') )
      end
      function     strfun(i)
        character*(*) strfun
        strfun='xyz  1234'//char(i)
      end
