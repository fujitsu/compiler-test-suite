      integer(1)::i1
      integer(2)::i2
      integer(4)::i4
      integer(8)::i8

      i1=1;i2=2;i4=4;i8=8;n=0

      if (i1.eq.1) then
        if (i2.eq.2) then
          if (i4.eq.4) then
            if (i8.eq.8) then
              if (i1*2.eq.i2.and.i2*2.eq.i4.and.i4*2.eq.i8) then
                n=n+1
              else
                write(6,*) "NG"
              endif
            else
              write(6,*) "NG"
            endif
          else
            write(6,*) "NG"
          endif
        else
          write(6,*) "NG"
        endif
      else
        write(6,*) "NG"
      endif

     print *,'pass'
    end
