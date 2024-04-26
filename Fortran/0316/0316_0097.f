
      type tag3
        character*4  ch3(2)
      end type
      type tag2
        type (tag3)  t3(2)
        character*2  ch2(3)
      end type
      type tag1
        character*3  ch1
        type (tag2)  t2(3)
      end type

      type (tag1)  sourceTAG(2)

      parameter
     + (sourceTAG =(/tag1('abc',
     +                    tag2((/tag3('klmn'),tag3((/'opqr','strv'/))/),
     +                         (/'ef','gh','ij'/))),
     +               tag1('xyz',tag2(tag3('6789'),'123')) /) )
       character*10  moldCH, rcCH(10), rrCH(10)

       parameter (moldCH=' ')
       parameter (rcCH=transfer(sourceTAG,moldCH,10))

       
      rrCH=transfer(sourceTAG,moldCH,10)

      do i=1,10
        call checkch(rcCH(i),rrCH(i))
      enddo
      print *,'*** ok ***'
      end

      subroutine checkch(ch,cht)
      character*(*) ch,cht
      if (ch.ne.cht) then
        print *,ch,cht
        print *,'??? ng ???'
        stop 9
      endif
      end
