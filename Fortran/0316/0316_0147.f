
      character*10,dimension(0:-1),parameter ::cha='abcdefghi '
      character*0,                 parameter ::chb=''
      integer*4  i
      integer*4,dimension(1) ::u,L,s,u2,L2,s2

      parameter(u=ubound(len_trim(cha)))
      parameter(L=lbound(len_trim(cha)))
      parameter(s=size  (len_trim(cha)))

      parameter(i=len_trim(chb))

      u2 = ubound(len_trim(cha))
      L2 = lbound(len_trim(cha))
      s2 = size  (len_trim(cha))
      
      call checki(u(1), u2(1))
      call checki(L(1), L2(1))
      call checki(s(1), s2(1))

      call checki(i,len_trim(chb))

      print *,'*** ok ***'
      end

      subroutine checki(i,it)
      if (i.ne.it) then
        print *,i,it
        print *,'??? ng ???'
        stop 1
      endif
      end
