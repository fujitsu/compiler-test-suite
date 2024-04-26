
      integer*1 i1a(10)
      integer*2 i2a(10)
      integer*4 i4a(10)
      integer*8 i8a(10)
      parameter (i1a=(/0,1,2,3,4,5,6,7,8,9/))
      parameter (i2a=(/20,21,22,23,24,25,26,27,28,29/))
      parameter (i4a=(/120,121,122,123,124,125,126,127,128,129/))
      parameter (i8a=(/60,61,62,63,64,65,66,67,68,69/))

      character,parameter ::c1(10)=achar(i=i1a)
      character,parameter ::c2(10)=achar(i=i2a)
      character,parameter ::c3(10)=achar(i=i4a)
      character,parameter ::c4(10)=achar(i=i8a)
  
      do i=1,10
        call check(c1(i),achar(i=i1a(i)))
        call check(c2(i),achar(i=i2a(i)))
        call check(c3(i),achar(i=i4a(i)))
        call check(c4(i),achar(i=i8a(i)))
      enddo
      print *,'*** ok ***'
      end

      subroutine check(c1,c1t)
      character c1,c1t
      if (c1.ne.c1t) then
        print *,'??? ng ???'
        stop 1
      endif
      end
