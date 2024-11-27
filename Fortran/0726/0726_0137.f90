 call s1
 print *,'pass'
 end
 subroutine s1
  logical,parameter::t=.true.,f=.false.
  logical,dimension(6,6)::x1=reshape((/(t,f,f,f,f,f,i=1,6)/),(/6,6/))
  logical,dimension(6,6)::x2=reshape((/(t,t,f,f,f,f,i=1,6)/),(/6 ,6/))
  logical,dimension(6,6)::x3=reshape((/(t,t,t,f,f,f,i=1,6)/),(/6 ,6/))
  logical,dimension(6,6)::x4=reshape((/(t,t,t,t,f,f,i=1,6)/),(/6 ,6/))
  logical,dimension(6,6)::x5=reshape((/(t,t,t,t,t,f,i=1,6)/),(/6 ,6/))
  logical,dimension(6,6)::x6=reshape((/(t,t,t,t,t,t,i=1,6)/),(/6 ,6/))
    integer,dimension(6,6)::y,yy,yy1,yy2,yy3,yy4,yy5,yy6
    logical,dimension(6,6)::x11,x12,x13,x14,x15
    logical,dimension(6,6)::x21,x22,x23,x24,x25
    logical,dimension(6,6)::x31,x32,x33,x34,x35
    logical,dimension(6,6)::x41,x42,x43,x44,x45
    logical,dimension(6,6)::x51,x52,x53,x54,x55
    logical,dimension(6,6)::x61,x62,x63,x64,x65
    x11=x1;x11(01,01)=f;x11(1,3:)=f
    x12=x1;x12(01,01)=f;x12(1,4:)=f
    x13=x1;x13(01,01)=f;x13(1,5:)=f
    x14=x1;x14(01,01)=f;x14(1,6:)=f
    x15=x1;x15(01,01)=f;x15(1,7:)=f
    x21=x2;x21(02,01)=f;x21(2,3:)=f
    x22=x2;x22(02,01)=f;x22(2,4:)=f
    x23=x2;x23(02,01)=f;x23(2,5:)=f
    x24=x2;x24(02,01)=f;x24(2,6:)=f
    x25=x2;x25(02,01)=f;x25(2,7:)=f
    x31=x3;x31(03,01)=f;x31(3,3:)=f
    x32=x3;x32(03,01)=f;x32(3,4:)=f
    x33=x3;x33(03,01)=f;x33(3,5:)=f
    x34=x3;x34(03,01)=f;x34(3,6:)=f
    x35=x3;x35(03,01)=f;x35(3,7:)=f
    x41=x4;x41(04,01)=f;x41(4,3:)=f
    x42=x4;x42(04,01)=f;x42(4,4:)=f
    x43=x4;x43(04,01)=f;x43(4,5:)=f
    x44=x4;x44(04,01)=f;x44(4,6:)=f
    x45=x4;x45(04,01)=f;x45(4,7:)=f
    x51=x5;x51(05,01)=f;x51(5,3:)=f
    x52=x5;x52(05,01)=f;x52(5,4:)=f
    x53=x5;x53(05,01)=f;x53(5,5:)=f
    x54=x5;x54(05,01)=f;x54(5,6:)=f
    x55=x5;x55(05,01)=f;x55(5,7:)=f
    x61=x6;x61(06,01)=f;x61(6,3:)=f
    x62=x6;x62(06,01)=f;x62(6,4:)=f
    x63=x6;x63(06,01)=f;x63(6,5:)=f
    x64=x6;x64(06,01)=f;x64(6,6:)=f
    x65=x6;x65(06,01)=f;x65(6,7:)=f
          y=-1;yy=-1;yy1=-1;yy2=-1;yy3=-1;yy4=-1;yy5=-1;yy6=-1
  call ss21(x1,x2,x3,x4,x5,y,&
   x11,x12,x13,x14,x15,&
   x21,x22,x23,x24,x25,&
   x31,x32,x33,x34,x35,&
   x41,x42,x43,x44,x45,&
   x51,x52,x53,x54,x55,&
   x61,x62,x63,x64,x65,&
   yy,yy1,yy2,yy3,yy4,yy5,yy6)
  if (any(y(:,1)/=(/(i,i=10,69,10)/)))write(6,*) "NG"
  if (any(y(:,2)/=(/(i,i=11,69,10)/)))write(6,*) "NG"
  if (any(y(:,3)/=(/(i,i=12,69,10)/)))write(6,*) "NG"
  if (any(y(:,4)/=(/(i,i=13,69,10)/)))write(6,*) "NG"
  if (any(y(:,5)/=(/(i,i=14,69,10)/)))write(6,*) "NG"
  if (any(y(:,6)/=(/(i,i=15,69,10)/)))write(6,*) "NG"
  if (any(yy(:,1)/=(/(i,i=10,69,10)/)))write(6,*) "NG"
  if (any(yy(:,2)/=(/(i,i=11,69,10)/)))write(6,*) "NG"
  if (any(yy(:,3)/=(/(i,i=12,69,10)/)))write(6,*) "NG"
  if (any(yy(:,4)/=(/(i,i=13,69,10)/)))write(6,*) "NG"
  if (any(yy(:,5)/=(/(i,i=14,69,10)/)))write(6,*) "NG"
  if (any(yy(:,6)/=(/(i,i=15,69,10)/)))write(6,*) "NG"
  if (any(yy1/=reshape((/(i,-1,-1,-1,-1,-1,i=10,15)/),(/6,6/))))write(6,*) "NG"
  if (any(yy2/=reshape((/(-1,i,-1,-1,-1,-1,i=20,25)/),(/6,6/))))write(6,*) "NG"
  if (any(yy3/=reshape((/(-1,-1,i,-1,-1,-1,i=30,35)/),(/6,6/))))write(6,*) "NG"
  if (any(yy4/=reshape((/(-1,-1,-1,i,-1,-1,i=40,45)/),(/6,6/))))write(6,*) "NG"
  if (any(yy5/=reshape((/(-1,-1,-1,-1,i,-1,i=50,55)/),(/6,6/))))write(6,*) "NG"
  if (any(yy6/=reshape((/(-1,-1,-1,-1,-1,i,i=60,65)/),(/6,6/))))write(6,*) "NG"
  contains
  subroutine ss21(x1,x2,x3,x4,x5,y,&
   x11,x12,x13,x14,x15,&
   x21,x22,x23,x24,x25,&
   x31,x32,x33,x34,x35,&
   x41,x42,x43,x44,x45,&
   x51,x52,x53,x54,x55,&
   x61,x62,x63,x64,x65,&
   yy,yy1,yy2,yy3,yy4,yy5,yy6)
  logical,dimension(:,:)::x1,x2,x3,x4,x5
  logical,dimension(:,:)::x11,x12,x13,x14,x15
  logical,dimension(:,:)::x21,x22,x23,x24,x25
  logical,dimension(:,:)::x31,x32,x33,x34,x35
  logical,dimension(:,:)::x41,x42,x43,x44,x45
  logical,dimension(:,:)::x51,x52,x53,x54,x55
  logical,dimension(:,:)::x61,x62,x63,x64,x65
  integer,dimension(:,:)::y,yy,yy1,yy2,yy3,yy4,yy5,yy6
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
          elsewhere(x4)
            y=40
            where(x41)     ; y=41
            else where(x42); y=42
            else where(x43); y=43
            else where(x44); y=44
            else where(x45); y=45
            end where
            yy4=y 
            where(x41.and.x41)     ; yy=41
            else where(x42.and.x42); yy=42
            else where(x43.and.x43); yy=43
            else where(x44.and.x44); yy=44
            else where(x45.and.x45); yy=45
            else where             ; yy=40
            end where
          elsewhere(x5)
            where(x51.and.x51)     ; yy=51
            else where(x52.and.x52); yy=52
            else where(x53.and.x53); yy=53
            else where(x54.and.x54); yy=54
            else where(x55.and.x55); yy=55
            else where(x55.or.t)   ; yy=50
            end where
            y=50
            where(x51)     ; y=51
            else where(x52); y=52
            else where(x53); y=53
            else where(x54); y=54
            else where(x55); y=55
            end where
            yy5=y 
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
