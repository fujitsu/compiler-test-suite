
      character*10, parameter               ::cha='abcdefghij'
      character*1, dimension(1:5),parameter ::
     +                                    chb=(/'a','b','c','d','e'/)
      character*32167   chc
      character*32167   chd(10)

      parameter(i1=len(string=cha))
      parameter(i2=len(chb))
      parameter(i3=len(string=chc))
      parameter(i4=len(chd))

      call checki(i1,len(cha))
      call checki(i2,len(chb))
      call checki(i3,len(chc))
      call checki(i4,len(chd))

      print *,'*** ok ***'
      end

      subroutine checki(i,it)
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
