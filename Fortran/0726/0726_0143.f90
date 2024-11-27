 call s1
 print *,'pass'
 end
 subroutine s1
  parameter (i1=8,i2=8,i3=8,i4=8)
  logical,parameter::t=.true.,f=.false.
  logical(i1),dimension(6,4)::x1=reshape((/(t,f,f,f,f,f,i=1,4)/),(/6,4/))
  logical(i2),dimension(6,4)::x2=reshape((/(t,t,f,f,f,f,i=1,4)/),(/6 ,4/))
  logical(i3),dimension(6,4)::x3=reshape((/(t,t,t,f,f,f,i=1,4)/),(/6 ,4/))
  logical(i4),dimension(6,4)::x6=reshape((/(t,t,t,t,t,t,i=1,4)/),(/6 ,4/))

    integer,dimension(6,4)::y,yy,yy1,yy2,yy3,yy6
    logical(i1),dimension(6,4)::x11
    logical(i2),dimension(6,4)::x12
    logical(i3),dimension(6,4)::x13
    logical(i4),dimension(6,4)::x14
    logical(i1),dimension(6,4)::x15
    logical(i2),dimension(6,4)::x21
    logical(i3),dimension(6,4)::x22
    logical(i4),dimension(6,4)::x23
    logical(i1),dimension(6,4)::x24
    logical(i2),dimension(6,4)::x25
    logical(i3),dimension(6,4)::x31
    logical(i4),dimension(6,4)::x32
    logical(i1),dimension(6,4)::x33
    logical(i2),dimension(6,4)::x34
    logical(i3),dimension(6,4)::x35
    logical(i4),dimension(6,4)::x61
    logical(i1),dimension(6,4)::x62
    logical(i2),dimension(6,4)::x63
    logical(i3),dimension(6,4)::x64
    logical(i4),dimension(6,4)::x65
x13=f;x14=f; x23=f;x24=f;x33=f;x34=f;x63=f;x64=f
    x11=x1;x11(01,01)=f;x11(1,3:)=f
    x12=x1;x12(01,01)=f;x12(1,4:)=f
    x15=x1;x15(01,01)=f;x15(1,7:)=f
    x21=x2;x21(02,01)=f;x21(2,3:)=f
    x22=x2;x22(02,01)=f;x22(2,4:)=f
    x25=x2;x25(02,01)=f;x25(2,7:)=f
    x31=x3;x31(03,01)=f;x31(3,3:)=f
    x32=x3;x32(03,01)=f;x32(3,4:)=f
    x35=x3;x35(03,01)=f;x35(3,7:)=f
    x61=x6;x61(06,01)=f;x61(6,3:)=f
    x62=x6;x62(06,01)=f;x62(6,4:)=f
    x65=x6;x65(06,01)=f;x65(6,7:)=f
          y=-1;yy=-1;yy1=-1;yy2=-1;yy3=-1;yy6=-1
  call ss21(x1,x2,x3,y,&
   x11,x12,x13,x14,x15,&
   x21,x22,x23,x24,x25,&
   x31,x32,x33,x34,x35,&
   x61,x62,x63,x64,x65,&
   yy,yy1,yy2,yy3,yy6)
  if (any((/y/)/=(/&
    10,20,30,61,61,60,11,21,31,61,61,61,12,22,32,&
    61,61,62,15,25,35,61,61,65/)))write(6,*) "NG"
  if (any(yy1/=reshape((/(i,-1,-1,-1,-1,-1,i=10,12),15,-1,-1,-1,-1,-1/),(/6,4/))))write(6,*) "NG"
  if (any(yy2/=reshape((/(-1,i,-1,-1,-1,-1,i=20,22),-1,25,-1,-1,-1,-1/),(/6,4/))))write(6,*) "NG"
  if (any(yy3/=reshape((/(-1,-1,i,-1,-1,-1,i=30,32),-1,-1,35,-1,-1,-1/),(/6,4/))))write(6,*) "NG"
  if (any(yy6/=reshape((/-1,-1,-1,61,61,60,-1,-1,-1,&
     61,61,61,-1,-1,-1,61,61,62,-1,-1,-1,61,61,65/),(/6,4/))))write(6,*) "NG"
  contains
  subroutine ss21(x1,x2,x3,y,&
   x11,x12,x13,x14,x15,&
   x21,x22,x23,x24,x25,&
   x31,x32,x33,x34,x35,&
   x61,x62,x63,x64,x65,&
   yy,yy1,yy2,yy3,yy6)
  logical(i1),dimension(:,:)::x1
  logical(i2),dimension(:,:)::x2
  logical(i3),dimension(:,:)::x3
    logical(i1),dimension(:,:)::x11
    logical(i2),dimension(:,:)::x12
    logical(i3),dimension(:,:)::x13
    logical(i4),dimension(:,:)::x14
    logical(i1),dimension(:,:)::x15
    logical(i2),dimension(:,:)::x21
    logical(i3),dimension(:,:)::x22
    logical(i4),dimension(:,:)::x23
    logical(i1),dimension(:,:)::x24
    logical(i2),dimension(:,:)::x25
    logical(i3),dimension(:,:)::x31
    logical(i4),dimension(:,:)::x32
    logical(i1),dimension(:,:)::x33
    logical(i2),dimension(:,:)::x34
    logical(i3),dimension(:,:)::x35
    logical(i4),dimension(:,:)::x61
    logical(i1),dimension(:,:)::x62
    logical(i2),dimension(:,:)::x63
    logical(i3),dimension(:,:)::x64
    logical(i4),dimension(:,:)::x65
  integer,dimension(:,:)::y,yy,yy1,yy2,yy3,yy6
          where (x1)
            y=10
            where(x11)     ; y=11
            else where(x12); y=12
            else where(x13); y=13
            else where(x14); y=14
            else where(x15); y=15
            end where
            yy1=y 
            where(x11.and.x11)   ; yy=11
            else where(x12.and.x12); yy=12
            else where(x13.and.x13); yy=13
            else where(x14.and.x14); yy=14
            else where(x15.and.x15); yy=15
            else where     ; yy=10
            end where
          elsewhere(x2)
            y=20
            where(x21)     ; y=21
            else where(x22); y=22
            else where(x23); y=23
            else where(x24); y=24
            else where(x25); y=25
            end where
            yy=20
            where(x21.and.x21)     ; yy=21
            else where(x22.and.x22); yy=22
            else where(x23.and.x23); yy=23
            else where(x24.and.x24); yy=24
            else where(x25.and.x25); yy=25
            end where
            yy2=y 
          elsewhere(x3)
            y=30
            where(x31)     ; y=31
            else where(x32); y=32
            else where(x33); y=33
            else where(x34); y=34
            else where(x35); y=35
            end where
            yy=30
            yy3=y 
            where(x31.and.x31)     ; yy=31
            else where(x32.and.x32); yy=32
            else where(x33.and.x33); yy=33
            else where(x34.and.x34); yy=34
            else where(x35.and.x35); yy=35
            end where
          elsewhere
            y=60
            where(x61)     ; y=61
            else where(x62); y=62
            else where(x63); y=63
            else where(x64); y=64
            else where(x65); y=65
            end where
            yy6=y 
            where(x61.and.x61)     ; yy=61
            else where(x62.and.x62); yy=62
            else where(x63.and.x63); yy=63
            else where(x64.and.x64); yy=64
            else where(x65.and.x65); yy=65
            else where             ; yy=60
            end where
          end where
  end subroutine
          end
