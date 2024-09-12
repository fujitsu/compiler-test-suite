      logical l1,l2,l3,l4,l5,la(8)
      real*8 x,y,a(8),b(8),c(8),d(8)
      equivalence (x,c(1)),(y,c(2)),(l3,la(1)),(l4,la(2))
      common /com/x,y,d,l3,l4,l5
      data   a/8*0./,b/1,2,3,4,5,6,7,8/,l2/.false./

      call init

      do 10 i=1,8
        d(i) = i
        l1 = x .gt. y
        if ( l1 ) then
          a(i) = b(i)
        endif
  10  continue
      write(6,*) a ,d
      do 11 i=1,8
        d(i) = i
        l1 = x .le. y
        if ( .not.l1 ) then
          a(i) = b(i)
        endif
  11  continue
      write(6,*) a ,d
      do 12 i=1,8
        d(i) = i
        l1 = l2
        if ( l1 ) then
          a(i) = b(i)
        endif
  12  continue
      write(6,*) a ,d
      do 13 i=1,8
        d(i) = i
        l1 = l5
        if ( .not.l1 ) then
          a(i) = b(i)
        endif
  13  continue
      write(6,*) a ,d
      stop
      end
      subroutine init
      real*8 x,y,d(8)
      logical l3,l4,l5
      common /com/x,y,d,l3,l4,l5
      x=5.0
      y=4.5
      l3 = .true.
      l4 = .true.
      l5 = .false.
      return
      end
