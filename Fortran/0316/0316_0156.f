
      integer*1,parameter ::i1a(10)=z'61'
      integer*2,parameter ::i2a(10)=z'0061'
      integer*4,parameter ::i4a(10)=z'00000061'
      integer*8,parameter ::i8a(10)=z'0000000000000061'
      integer*1,parameter ::i1b(10)=z'ff'
      integer*2,parameter ::i2b(10)=z'ffff'
      integer*4,parameter ::i4b(10)=z'ffffffff'
      integer*8,parameter ::i8b(10)=z'ffffffffffffffff'
      integer*8,parameter ::one=1
      
      character*1,parameter ::ch1(10)=char(i1a)
      character*1,parameter ::ch2(10)=char(i=i2a)
      character*1,parameter ::ch3(10)=char(i=i4a,kind=1)
      character*1,parameter ::ch4(10)=char(kind=one,i=i8a)
      character*1,parameter ::ch5(10)=char(i1b,kind=1)
      character*1,parameter ::ch6(10)=char(i=i2b,kind=1)
      character*1,parameter ::ch7(10)=char(i4b,1)
      character*1,parameter ::ch8(10)=char(i8b)

      do i=1,10
        call check(ch1(i),char(i1a(i)))
        call check(ch2(i),char(i=i2a(i)))
        call check(ch3(i),char(i=i4a(i),kind=1))
        call check(ch4(i),char(kind=1,i=i8a(i)))
        call check(ch5(i),char(i1b(i),kind=1))
        call check(ch6(i),char(i=i2b(i),kind=1))
        call check(ch7(i),char(i4b(i),1))
        call check(ch8(i),char(i8b(i)))
      enddo
      print *,'*** ok ***'
      end

      subroutine check(ch,cht)
      character*1 ch,cht
      if (ch.ne.cht) then
        print *,'??? ng ???'
        stop 1
      endif
      end
