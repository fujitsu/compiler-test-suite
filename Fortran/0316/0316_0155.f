
      integer*1,parameter ::i1a=z'61'
      integer*2,parameter ::i2a=z'0061'
      integer*4,parameter ::i4a=z'00000061'
      integer*8,parameter ::i8a=z'0000000000000061'
      integer*1,parameter ::i1b=z'ff'
      integer*2,parameter ::i2b=z'ffff'
      integer*4,parameter ::i4b=z'ffffffff'
      integer*8,parameter ::i8b=z'ffffffffffffffff'
      integer*8,parameter ::one=1
      
      character*1,parameter ::ch1=char(i1a)
      character*1,parameter ::ch2=char(i=i2a)
      character*1,parameter ::ch3=char(i=i4a,kind=1)
      character*1,parameter ::ch4=char(kind=one,i=i8a)
      character*1,parameter ::ch5=char(i1b,kind=1)
      character*1,parameter ::ch6=char(i=i2b,kind=1)
      character*1,parameter ::ch7=char(i4b,1)
      character*1,parameter ::ch8=char(i8b)

      call check(ch1,char(i1a))
      call check(ch2,char(i=i2a))
      call check(ch3,char(i=i4a,kind=1))
      call check(ch4,char(kind=1,i=i8a))
      call check(ch5,char(i1b,kind=1))
      call check(ch6,char(i=i2b,kind=1))
      call check(ch7,char(i4b,1))
      call check(ch8,char(i8b))
      print *,'*** ok ***'
      end

      subroutine check(ch,cht)
      character*1 ch,cht
      if (ch.ne.cht) then
        print *,'??? ng ???'
        stop 1
      endif
      end
