
      character*1,dimension(10) :: c1,c2,c3,c4,c5
      parameter (c1=(/'!','!','!','!','!','!','!','!','!','!'/))
      parameter (c2=(/'0','1','2','3','4','5','6','7','8','9'/))
      parameter (c3='\\')
      parameter (c4=(/'a','{','|','<','?','}','[','_','*','@'/))
      parameter (c5=(/'z','z','z','z','z',' ',' ',' ',' ','z'/))

      integer*4,parameter ::ia(10)=iachar(c1)
      integer*4,parameter ::ib(10)=iachar(c2)
      integer*4,parameter ::ic(10)=iachar(c3)
      integer*4,parameter ::id(10)=iachar(c4)
      integer*4,parameter ::ie(10)=iachar(c5)
  
      do i=1,10
        call check(ia(i),iachar(c1(i)))
        call check(ib(i),iachar(c2(i)))
        call check(ic(i),iachar(c3(i)))
        call check(id(i),iachar(c4(i)))
        call check(ie(i),iachar(c5(i)))
      enddo
      print *,'*** ok ***'
      end

      subroutine check(i,it)
      integer*4 i,it
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
