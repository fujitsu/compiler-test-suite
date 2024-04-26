
      character*10,dimension(0:-1),parameter ::cha=' bcdefghi '
      character*0,                 parameter ::chb=''
      character*0                  ::ch1,ch2
      integer*4,dimension(1) ::u,L,s,u2,L2,s2

      parameter(ch1=adjustl(chb))
      parameter(ch2=adjustr(chb))

      parameter(u=ubound(adjustl(cha)))
      parameter(L=lbound(adjustr(cha)))
      parameter(s=size  (adjustl(cha)))

      u2 = ubound(adjustl(cha))
      L2 = lbound(adjustr(cha))
      s2 = size  (adjustl(cha))
      
      call checki(u(1), u2(1))
      call checki(L(1), L2(1))
      call checki(s(1), s2(1))

      call check(ch1,adjustl(chb))
      call check(ch2,adjustr(chb))

      print *,'*** ok ***'
      end

      subroutine checki(i,it)
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end

      subroutine check(ch,cht)
      character*(*) ch,cht
      if (ch.ne.cht) then
        print *,'??? ng ???'
        stop 2
      endif
      end
