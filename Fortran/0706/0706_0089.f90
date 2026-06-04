c
c
      call s1
      print *,'pass'
      end
      subroutine s1
        interface
            subroutine dd(p,x,w,z,ba,da,fa,ha,ja)
            character*(*) ba,da,fa,ha,ja
            integer*2 m
            character*(*),p(5),x(10)
            character(*),pointer:: w(:),z(:) 
          end subroutine 
        end interface
      character*(1),p(5),x(10)
      character(1),pointer:: w(:),z(:) 
      call  dd(p,x,w,z,'b','d','f','h','j')
      end
      subroutine dd(p,x,w,z,ba,da,fa,ha,ja)
      character*(*) ba,da,fa,ha,ja
      integer*2 m
      character*(*),p(5),x(10)
      character(*),pointer:: w(:),z(:) 
      integer*2,g(10)/2,4,6,8,10,0,0,0,0,0/
      integer*2,pointer::h(:)
      allocate(h(10))
      h(:5)=(/iachar(char(2)),iachar(char(4)),iachar(char(6)),
     1        iachar(char(8)),iachar(char(10))/)
      call ss1( (/ (char(m),m=ichar(ba),ichar('a')+10,2) /) )
      call ss1( 
     1   (/   ba,da,fa,ha,ja /) )
      p= (/ (achar(m),m=ichar(ba),ichar('k'),2) /) 
      call ss1( p )
      x(2:11:2)=
     1 ( (/   ba,da,fa,ha,ja /) )
      call ss1( x(2:11:2) )
      allocate (w(5),z(10))
      w= (/ (achar(m),m=ichar(ba),ichar('k'),2) /) 
      call ss1( w )
      z(2:11:2)=
     1 ( (/   ba,da,fa,ha,ja /) )
      call ss1( z(2:11:2) )
      j2=2;j11=11
      z(j2:j11:j2)=
     1 ( (/   ba,da,fa,ha,ja /) )
      call ss1( z(j2:j11:j2) )
      x(g(:5))=
     1 ( (/   ba,da,fa,ha,ja /) )
      call ss1( x(g(:5)) )
      z(g(:5))=
     1 ( (/   ba,da,fa,ha,ja /) )
      call ss1( z(g(:5)) )
      x(h(:5))=
     1 ( (/   ba,da,fa,ha,ja /) )
      call ss1( x(h(:5)) )
      z(h(:5))=
     1 ( (/   ba,da,fa,ha,ja /) )
      call ss1( z(h(:5)) )
      contains
      subroutine ss1(n)
      character*(*)  ,target:: n(:)
      character*(1)  ,pointer:: p(:)
      character n1,n2,n3,n4,n5
      open(11,delim='quote')
      write(11,*)n
      rewind 11 
      read (11,*) n1,n2,n3,n4,n5
      if (n1/=achar(iachar(ba)))print *,'fail'
      if (n2/=da)print *,'fail'
      if (n3/=fa)print *,'fail'
      if (n4/=ha)print *,'fail'
      if (n5/=ja)print *,'fail'
      call ss11(n(1:5:2))
      call ss12(n(2:5:2))
      if (n(1)/=ba)print *,'fail'
      if (n(2)/=da)print *,'fail'
      if (n(3)/=fa)print *,'fail'
      if (n(4)/=ha)print *,'fail'
      if (n(5)/=ja)print *,'fail'
      p=>n
      if (p(1)/=ba)print *,'fail'
      if (p(2)/=da)print *,'fail'
      if (p(3)/=fa)print *,'fail'
      if (p(4)/=ha)print *,'fail'
      if (p(5)/=ja)print *,'fail'
      end subroutine
      subroutine ss11(n)
      character(len=*) n(:)
      if (len(ba)/=1)print *,'fail'
      if (len(fa)/=1)print *,'fail'
      if (len(ja)/=1)print *,'fail'
      if (len(n)/=1)print *,'fail'
      if (n(1)/=ba)print *,'fail'
      if (n(2)/=fa)print *,'fail'
      if (n(3)/=ja)print *,'fail'
      end subroutine
      subroutine ss12(n)
      character*(*) n(:)
      if (len(n)/=1)print *,'fail'
      if (len(da)/=1)print *,'fail'
      if (len(ha)/=1)print *,'fail'
      if (n(1)/=da)print *,'fail'
      if (n(2)/=ha)print *,'fail'
      end subroutine
      end subroutine
