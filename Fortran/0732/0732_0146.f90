real,allocatable::b(:,:),c(:,:),a(:,:,:)
real,allocatable:: bb(:,:,:,:,:,:),cc(:,:,:,:,:,:)
real,allocatable:: bbb(:,:,:,:,:,:),ccc(:,:,:,:,:,:)
integer ::b1=1,b2=3,b3=1,b4=2
integer ::c1=1,c2=2,c3=1,c4=4
integer x(2)/1,2/
allocate(b(3,2),c(2,4),a(17,3,1))
allocate(bb(4,3,2,1,2,2),cc(3,2,2,2,2,4))
allocate(bbb(3,2,1,1,1,1),ccc(1,1,1,1,2,4))
b=reshape((/1,2,3,4,5,6/),(/3,2/))
c=reshape((/1,2,3,4,5,6,7,8/),(/2,4/))
bb(4,:,2,1,:,2)=reshape((/1,2,3,4,5,6/),(/3,2/))
cc(3,2,2,2,:,:)=reshape((/1,2,3,4,5,6,7,8/),(/2,4/))
bbb(:,:,1,1,1,1)=reshape((/1,2,3,4,5,6/),(/3,2/))
ccc(1,1,1,1,:,:)=reshape((/1,2,3,4,5,6,7,8/),(/2,4/))
write(51,*)matmul(b,c(:,c4))
call sub(b,c)
write(51,*)matmul(b(b1:b2,b3:b4),c(c1:c2,c4))
write(51,*)matmul(b,c(x,c4))
write(51,*)matmul(bb(4,:,2,1,:,2),cc(3,2,2,2,:,c4))
write(51,*)matmul(bb(4,b1:b2,2,1,b3:b4,2),cc(3,2,2,2,c1:c2,c4))
write(51,*)matmul(bb(4,b1:b2,2,1,b3:b4,2),cc(3,2,2,2,x,c4))
write(51,*)matmul(bbb(:,:,b1,b1,b1,b1),ccc(1,1,1,1,:,c4))
call sub2(bbb,ccc)
write(51,*)matmul(bbb(b1:b2,b3:b4,b1,b1,b1,b1),ccc(b1,b1,b1,b1,c1:c2,c4))
write(51,*)matmul(bbb(:,:,1,1,1,1),ccc(1,1,1,1,x,c4))
write(51,*)matmul(bbb(:,:,1,1,1,1)+bbb(:,:,1,1,1,1)-b,ccc(1,1,1,1,:,c4)-c(:,c4)+ccc(1,1,1,1,:,c4))
write(51,*)matmul(bbbf(),cccf())
write(51,*)matmul(bbbfx(bbb(:,:,1,1,1,1)),cccfx(ccc(1,1,1,1,:,c4)))
rewind 51
do ix=1,17
 read(51,*) a(ix,:,:);call chk(a(ix,:,:))
end do
print *,'pass'
contains
 function bbbf() result(bf)
 real,dimension(3,2)::bf
 bf=b
 end function
 function cccf() result(cf)
 real,dimension(2)::cf
 cf=c(:,c4)
 end function
 elemental function bbbfx(x) result(bf)
 real,intent(in)::x
 bf=x
 end function
 elemental function cccfx(x) result(bf)
 real,intent(in)::x
 bf=x
 end function
 subroutine chk(b)
 real,dimension(:,:)::b
 if (any(abs((/b/)-(/39.,54.,69./))>0.0001))write(6,*) "NG"
 end subroutine
 subroutine sub(b,c)
 real,dimension(:,:)::b,c
 write(51,*)matmul(b,c(:,c4))
 write(51,*)matmul(b(b1:b2,b3:b4),c(c1:c2,c4))
 end subroutine
 subroutine sub1(bb,cc)
 real,dimension(:,:,:,:,:,:)::bb,cc
write(51,*)matmul(bb(4,:,2,1,:,2),cc(3,2,2,2,:,c4))
write(51,*)matmul(bb(4,b1:b2,2,1,b3:b4,2),cc(3,2,2,2,c1:c2,c4))
write(51,*)matmul(bb(4,b1:b2,2,1,b3:b4,2),cc(3,2,2,2,x,c4))
 end subroutine
 subroutine sub2(bbb,ccc)
 real,dimension(:,:,:,:,:,:)::bbb,ccc
write(51,*)matmul(bbb(:,:,1,1,1,1),ccc(1,1,1,1,:,c4))
write(51,*)matmul(bbb(b1:b2,b3:b4,1,1,1,1),ccc(1,1,1,1,c1:c2,c4))
write(51,*)matmul(bbb(b1:b2,b3:b4,1,1,1,1),ccc(1,1,1,1,x,c4))
 end subroutine
 subroutine sub3(bbb,ccc)
 real,dimension(:,:,:,:,:,:)::bbb,ccc
write(51,*)matmul(bbb(:,:,1,1,1,1)+bbb(:,:,1,1,1,1)-bbb(:,:,1,1,1,1),ccc(1,1,1,1,:,c4)-c(:,c4)+ccc(1,1,1,1,:,c4))
 end subroutine
end
