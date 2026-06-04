      program main
      integer idim(1000)
      character*1000 c
      character*1000 c2
      do 1 i=1,1000
        idim(i) = 10
1     continue
      c='1234567890'
      call sub(idim,c,c2)
      do 2 i=1,1000
        if( c2(10:10) .ne. '0' ) then
          write(6,*) ' ng '
          stop
        endif
2     continue
      write(6,*) ' ***** ok *****'
      stop
      contains
      subroutine sub(idim,c1,c2)
      integer idim(1000)
      real*8 rdim(1000)
      character*(*)  c1
      character*(*)  c2
      do 1 i=1,1000
        rdim(i) = idim(1001-i)
1     continue
      do 2 j=1,1000
        c2(int(rdim(j)):idim(j)) = c1(idim(j):int(rdim(j)))
2     continue
      return
      end subroutine
      end
