
      character*1,dimension(10) :: c1,c2,c3,c4,c5
      parameter (c1=(/'!','!','!','!','!','!','!','!','!','!'/))
      parameter (c2=(/'0','1','2','3','4','5','6','7','8','9'/))
      parameter (c3='\\')
      parameter (c4=(/'a','{','|','<','?','}','[','_','*','@'/))
      parameter (c5=(/'z','z','z','z','z',' ',' ',' ',' ','z'/))

      integer*4,parameter ::ia(10)=ichar(c1)
      integer*4,parameter ::ib(10)=ichar(c2)
      integer*4,parameter ::ic(10)=ichar(c3)
      integer*4,parameter ::id(10)=ichar(c4)
      integer*4,parameter ::ie(10)=ichar(c5)
  
      do i=1,10
        call check(ia(i),ichar(c1(i)))
        call check(ib(i),ichar(c2(i)))
        call check(ic(i),ichar(c3(i)))
        call check(id(i),ichar(c4(i)))
        call check(ie(i),ichar(c5(i)))
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
