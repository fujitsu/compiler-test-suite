
      character*1 c1,c2
      character*5 c3,c4
      character*0 c5
      parameter (c1='a')
      parameter (c2=' ')
      parameter (c3=' a a ')
      parameter (c4='     ')
      parameter (c5='')

      integer*4,parameter ::ia=len_trim(STRING=c1)
      integer*4,parameter ::ib=len_trim(STRING=c2)
      integer*4,parameter ::ic=len_trim(c3)
      integer*4,parameter ::id=len_trim(c4)
      integer*4,parameter ::ie=len_trim(c5)
  
      call check(ia,len_trim(STRING=c1))
      call check(ib,len_trim(STRING=c2))
      call check(ic,len_trim(c3))
      call check(id,len_trim(c4))
      call check(ie,len_trim(c5))
      print *,'*** ok ***'
      end

      subroutine check(i,it)
      integer*4 i,it
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
