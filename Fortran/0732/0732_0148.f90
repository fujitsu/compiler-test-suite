real b(3,2),c(2,4),a(17,3,4)
data b/1,2,3,4,5,6/
data c/1,2,3,4,5,6,7,8/
real bb(4,3,2,1,2,2),cc(3,2,2,2,2,4)
integer ::b1=1,b2=3,b3=1,b4=2
integer ::c1=1,c2=2,c3=1,c4=4
integer x(4)/1,2,3,4/
real bbb(3,2,1,1,1,1),ccc(1,1,1,1,2,4)
data bbb/1,2,3,4,5,6/
data ccc/1,2,3,4,5,6,7,8/
bb(4,:,2,1,:,2)=reshape((/1,2,3,4,5,6/),(/3,2/))
cc(3,2,2,2,:,:)=reshape((/1,2,3,4,5,6,7,8/),(/2,4/))
write(52,*)matmul(b(b1,:),c)
call sub(b,c)
write(52,*)matmul(b(b1,b3:b4),c(c1:c2,c3:c4))
write(52,*)matmul(b(b1,:),c(:,x))
write(52,*)matmul(bb(4,b1,2,1,:,2),cc(3,2,2,2,:,:))
write(52,*)matmul(bb(4,b1,2,1,b3:b4,2),cc(3,2,2,2,c1:c2,c3:c4))
write(52,*)matmul(bb(4,b1,2,1,b3:b4,2),cc(3,2,2,2,c1:c2,x))
write(52,*)matmul(bbb(b1,:,b1,b1,b1,b1),ccc(1,1,1,1,:,:))
call sub2(bbb,ccc)
write(52,*)matmul(bbb(b1,b3:b4,b1,b1,b1,b1),ccc(b1,b1,b1,b1,c1:c2,c3:c4))
write(52,*)matmul(bbb(b1,:,1,1,1,1),ccc(1,1,1,1,:,x))
write(52,*)matmul(bbb(b1,:,1,1,1,1)+bbb(b1,:,1,1,1,1)-b(b1,:),ccc(1,1,1,1,:,:)-c+ccc(1,1,1,1,:,:))
write(52,*)matmul(bbbf(),cccf())
write(52,*)matmul(bbbfx(bbb(b1,:,1,1,1,1)),cccfx(ccc(1,1,1,1,:,:)))
rewind 52
do ix=1,17
 read(52,*) a(ix,1,:);call chk(a(ix,1,:))
end do
print *,'pass'
contains
 function bbbf() result(bf)
 real,dimension(2)::bf
 bf=b(b1,:)
 end function
 function cccf() result(cf)
 real,dimension(2,4)::cf
 cf=c
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
 real,dimension(:)::b
 if (any(shape(b)/=(/4/)))write(6,*) "NG"
 if (any(abs((/b/)-(/9.,19.,29.,39./))>0.0001))write(6,*) "NG"
 end subroutine
 subroutine sub(b,c)
 real,dimension(:,:)::b,c
 write(52,*)matmul(b(b1,:),c)
 write(52,*)matmul(b(b1,b3:b4),c(c1:c2,c3:c4))
 end subroutine
 subroutine sub1(bb,cc)
 real,dimension(:,:,:,:,:,:)::bb,cc
write(52,*)matmul(bb(4,:,2,1,:,2),cc(3,2,2,2,:,:))
write(52,*)matmul(bb(4,b1,2,1,b3:b4,2),cc(3,2,2,2,c1:c2,c3:c4))
write(52,*)matmul(bb(4,b1,2,1,b3:b4,2),cc(3,2,2,2,c1:c2,x))
 end subroutine
 subroutine sub2(bbb,ccc)
 real,dimension(:,:,:,:,:,:)::bbb,ccc
write(52,*)matmul(bbb(b1,:,1,1,1,1),ccc(1,1,1,1,:,:))
write(52,*)matmul(bbb(b1,b3:b4,1,1,1,1),ccc(1,1,1,1,c1:c2,c3:c4))
write(52,*)matmul(bbb(b1,b3:b4,1,1,1,1),ccc(1,1,1,1,c1:c2,x))
 end subroutine
 subroutine sub3(bbb,ccc)
 real,dimension(:,:,:,:,:,:)::bbb,ccc
write(52,*)matmul(bbb(b1,:,1,1,1,1)+bbb(b1,:,1,1,1,1)-bbb(b1,:,1,1,1,1),ccc(1,1,1,1,:,:)-c+ccc(1,1,1,1,:,:))
 end subroutine
end
