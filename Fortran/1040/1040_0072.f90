subroutine s(i)
integer,allocatable:: x1(:,:,:)  
integer,pointer    :: x2(:,:,:) ,v1(:),v2(:),v3(:) 
integer            :: x3(2,3,4)  
integer            :: x4(20,30,40)  
integer y2((i+23),25,25)
integer y1(25,25,25)
j2=2;j3=3;j4=4
allocate(x1(2,3,4),x2(2,3,4),v1(2),v2(3),v3(4))
v1=(/(kk,kk=1,2)/)
v2=(/(kk,kk=1,3)/)
v3=(/(kk,kk=1,4)/)
y1=f1(x1)
if (any((/y1/)/=(/(nn,nn=1,25*25*25)/)))write(6,*) "NG"
y2=f1(x1)
if (any((/y2/)/=(/(nn,nn=1,25*25*25)/)))write(6,*) "NG"
y1=f1(x2)
if (any((/y1/)/=(/(nn,nn=1,25*25*25)/)))write(6,*) "NG"
y2=f1(x2)
if (any((/y2/)/=(/(nn,nn=1,25*25*25)/)))write(6,*) "NG"
if (any(f1(x1)/=reshape((/(nn,nn=1,25*25*25)/),(/25,25,25/))))write(6,*) "NG"
if (any(lbound(f1(x1))/=0))write(6,*) "NG"
if (any(ubound(f1(x1))/=24))write(6,*) "NG"
if (any(shape(f1(x1))/=25))write(6,*) "NG"
if (size(f1(x1))/=25**3)write(6,*) "NG"
if (any(f1(x2)/=reshape((/(nn,nn=1,25*25*25)/),(/25,25,25/))))write(6,*) "NG"
if (any(lbound(f1(x2))/=0))write(6,*) "NG"
if (any(ubound(f1(x2))/=24))write(6,*) "NG"
if (any(shape(f1(x2))/=25))write(6,*) "NG"
if (size(f1(x2))/=25**3)write(6,*) "NG"
if (any(f1(x3)/=reshape((/(nn,nn=1,25*25*25)/),(/25,25,25/))))write(6,*) "NG"
if (any(lbound(f1(x3))/=0))write(6,*) "NG"
if (any(ubound(f1(x3))/=24))write(6,*) "NG"
if (any(shape(f1(x3))/=25))write(6,*) "NG"
if (size(f1(x3))/=25**3)write(6,*) "NG"
if (any(f1(x4(2:3,3:5,4:7))/=reshape((/(nn,nn=1,25*25*25)/),(/25,25,25/))))write(6,*) "NG"
if (any(lbound(f1(x4(2:3,3:5,4:7)))/=0))write(6,*) "NG"
if (any(ubound(f1(x4(2:3,3:5,4:7)))/=24))write(6,*) "NG"
if (any(shape(f1(x4(2:3,3:5,4:7)))/=25))write(6,*) "NG"
if (size(f1(x4(2:3,3:5,4:7)))/=25**3)write(6,*) "NG"
if (any(f1(x4(j2:3,j3:5,j4:7))/=reshape((/(nn,nn=1,25*25*25)/),(/25,25,25/))))write(6,*) "NG"
if (any(lbound(f1(x4(j2:3,j3:5,j4:7)))/=0))write(6,*) "NG"
if (any(ubound(f1(x4(j2:3,j3:5,j4:7)))/=24))write(6,*) "NG"
if (any(shape(f1(x4(j2:3,j3:5,j4:7)))/=25))write(6,*) "NG"
if (size(f1(x4(j2:3,j3:5,j4:7)))/=25**3)write(6,*) "NG"
if (any(f1(x4(v1,v2,v3))/=reshape((/(nn,nn=1,25*25*25)/),(/25,25,25/))))write(6,*) "NG"
if (any(lbound(f1(x4(v1,v2,v3)))/=0))write(6,*) "NG"
if (any(ubound(f1(x4(v1,v2,v3)))/=24))write(6,*) "NG"
if (any(shape(f1(x4(v1,v2,v3)))/=25))write(6,*) "NG"
if (size(f1(x4(v1,v2,v3)))/=25**3)write(6,*) "NG"
contains
  function f1(xxx) result(ff)
    integer,intent(in) :: xxx(:,:,:)
    integer ff(0:size(xxx),0:size(xxx),0:size(xxx))
    n=1
    do ii=0,size(xxx)
    do j=0,size(xxx)
    do k=0,size(xxx)
    ff(k,j,ii)=n
    n=n+1
    enddo
    enddo
    enddo
  end function
end
call s(2)
print *,'pass'
end
