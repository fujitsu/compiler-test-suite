
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

      type (tag1)  moldTAG,rcTAG(2),rrTAG(2)

      character*150 sourceCH
      parameter (sourceCH='abcdefghij0123456789klmnopqrst01234567890ABCD
     +EFGHIJ0123456789KLMNOPQRST0123456789abcdefghij01234567890klmnopqrs
     +t01234567890uvwxyzUVW01234567890abcdefghi')

      parameter (moldTAG=tag1('xyz',tag2(tag3('6789'),'123')))

      parameter (rcTAG=transfer(sourceCH,moldTAG,2))

       
      rrTAG=transfer(sourceCH,moldTAG,2)

      do i=1,2
        call checkch(rcTAG(i)%ch1,rrTAG(i)%ch1)
        do j=1,3
          do k=1,3
            call checkch(rcTAG(i)%t2(j)%ch2(k),rrTAG(i)%t2(j)%ch2(k))
          enddo
        enddo
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
