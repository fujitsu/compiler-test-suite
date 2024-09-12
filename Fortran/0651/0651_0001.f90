      call ss1()
      call ss2()
      print *,'pass'
      end
      subroutine ss2()
      integer,dimension(3,3),parameter :: a=1
      integer,dimension(0,0),parameter :: b=1
      common /com2/ res,res0,resx,resa,resb,resc,resd,rese
      integer,dimension(3,3,3) :: res
      integer,dimension(0,3,3) :: res0
      integer,dimension(3,0,3) :: resx
      integer,dimension(3,3,0) :: resa
      integer,dimension(0,0,3) :: resb
      integer,dimension(0,3,0) :: resc
      integer,dimension(3,0,0) :: resd
      integer,dimension(0,0,0) :: rese
      res  = spread(a,dim=1,ncopies=3)
      res  = spread(a,dim=2,ncopies=3)
      res  = spread(a,dim=3,ncopies=3)
      res0 = spread(a,dim=1,ncopies=0)
      resx = spread(a,dim=2,ncopies=0)
      resa = spread(a,dim=3,ncopies=0)
      resb = spread(b,dim=3,ncopies=3)
      resc = spread(b,dim=2,ncopies=3)
      resd = spread(b,dim=1,ncopies=3)
      rese = spread(b,dim=1,ncopies=0)
      rese = spread(b,dim=2,ncopies=0)
      rese = spread(b,dim=3,ncopies=0)
      i0=0
      i1=1
      i2=2
      i3=3
      res  = spread(a,dim=1,ncopies=i3)
      res  = spread(a,dim=2,ncopies=i3)
      res  = spread(a,dim=3,ncopies=i3)
      res0 = spread(a,dim=1,ncopies=i0)
      resx = spread(a,dim=2,ncopies=i0)
      resa = spread(a,dim=3,ncopies=i0)
      resb = spread(b,dim=3,ncopies=i3)
      resc = spread(b,dim=2,ncopies=i3)
      resd = spread(b,dim=1,ncopies=i3)
      rese = spread(b,dim=1,ncopies=i0)
      rese = spread(b,dim=2,ncopies=i0)
      rese = spread(b,dim=3,ncopies=i0)
      res  = spread(a,dim=i1,ncopies=3)
      res  = spread(a,dim=i2,ncopies=3)
      res  = spread(a,dim=i3,ncopies=3)
      res0 = spread(a,dim=i1,ncopies=0)
      resx = spread(a,dim=i2,ncopies=0)
      resa = spread(a,dim=i3,ncopies=0)
      resb = spread(b,dim=i3,ncopies=3)
      resc = spread(b,dim=i2,ncopies=3)
      resd = spread(b,dim=i1,ncopies=3)
      rese = spread(b,dim=i1,ncopies=0)
      rese = spread(b,dim=i2,ncopies=0)
      rese = spread(b,dim=i3,ncopies=0)
      res  = spread(a,dim=i1,ncopies=i3)
      res  = spread(a,dim=i2,ncopies=i3)
      res  = spread(a,dim=i3,ncopies=i3)
      res0 = spread(a,dim=i1,ncopies=i0)
      resx = spread(a,dim=i2,ncopies=i0)
      resa = spread(a,dim=i3,ncopies=i0)
      resb = spread(b,dim=i3,ncopies=i3)
      resc = spread(b,dim=i2,ncopies=i3)
      resd = spread(b,dim=i1,ncopies=i3)
      rese = spread(b,dim=i1,ncopies=i0)
      rese = spread(b,dim=i2,ncopies=i0)
      rese = spread(b,dim=i3,ncopies=i0)
      end
      subroutine ss1()
      integer,dimension(3),parameter :: a=(/2,3,4/)
      integer  nc/3/
      integer,dimension(3,3) :: res
      integer,dimension(0,3) :: res0
      integer,dimension(0,0) :: resx
      integer,dimension(3,0) :: resa
      res0 = spread(a,dim=1,ncopies=0)
      resa = spread(a,dim=2,ncopies=0)
      end
