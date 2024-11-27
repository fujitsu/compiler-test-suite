real b(3,2),c(2),a(3)
data b/1,2,3,4,5,6/
data c/7,8/
real bb(4,3,2,1,2,2),cc(3,2,2,2,2,4)
integer ::b1=1,b2=3,b3=1,b4=2
integer ::c1=1,c2=2,c3=1,c4=3
integer x(2)/1,2/
real bbb(3,2,1,1,1,1),ccc(1,1,1,1,2,4)
data bbb/1,2,3,4,5,6/
ccc(1,1,1,1,:,c4)=(/7,8/)
bb(4,:,2,1,:,2)=reshape((/1,2,3,4,5,6/),(/3,2/))
cc(3,2,2,2,:,3)=reshape((/7,8/),(/2/))
a=matmul(b,c)
call chk(a)
call chk(matmul(b,c))
call sub(b,c)
a=matmul(b(b1:b2,b3:b4),c(c1:c2))
call chk(a)
call chk(matmul(b(b1:b2,b3:b4),c(c1:c2)))
call chk(matmul(b,c(x)))
a=matmul(bb(4,:,2,1,:,2),cc(3,2,2,2,:,c4))
call chk(a)
call chk(matmul(bb(4,:,2,1,:,2),cc(3,2,2,2,:,c4)))
call sub1(bb,cc)
a=matmul(bb(4,b1:b2,2,1,b3:b4,2),cc(3,2,2,2,c1:c2,c4))
call chk(a)
call chk(matmul(bb(4,b1:b2,2,1,b3:b4,2),cc(3,2,2,2,c1:c2,c4)))
call chk(matmul(bb(4,b1:b2,2,1,b3:b4,2),cc(3,2,2,2,x,c4)))
a=matmul(bbb(:,:,1,1,1,1),ccc(1,1,1,1,:,c4))
call chk(a)
call chk(matmul(bbb(:,:,b1,b1,b1,b1),ccc(1,1,1,1,:,c4)))
call sub2(bbb,ccc)
a=matmul(bbb(b1:b2,b3:b4,b1,b1,b1,b1),ccc(b1,b1,b1,b1,c1:c2,c4))
call chk(a)
call chk(matmul(bbb(b1:b2,b3:b4,b1,b1,b1,b1),ccc(b1,b1,b1,b1,c1:c2,c4)))
call chk(matmul(bbb(:,:,1,1,1,1),ccc(1,1,1,1,x,c4)))
a=matmul(bbb(:,:,1,1,1,1)+bbb(:,:,1,1,1,1)-b,ccc(1,1,1,1,:,c4)-c+ccc(1,1,1,1,:,c4))
call chk(a)
call chk(matmul(bbb(:,:,1,1,1,1)+bbb(:,:,1,1,1,1)-b,ccc(1,1,1,1,:,c4)-c+ccc(1,1,1,1,:,c4)))
call sub3(bbb,ccc)
a=matmul(bbbf(),cccf())
call chk(a)
call chk(matmul(bbbf(),cccf()))
a=matmul(bbbfx(bbb(:,:,1,1,1,1)),cccfx(ccc(1,1,1,1,:,c4)))
call chk(a)
call chk(matmul(bbbfx(bbb(:,:,1,1,1,1)),cccfx(ccc(1,1,1,1,:,c4))))
print *,'pass'
contains
 function bbbf() result(bf)
 real,dimension(3,2)::bf
 bf=b
 end function
 function cccf() result(cf)
 real,dimension(2)::cf
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
 if (any(shape(b)/=(/3/)))write(6,*) "NG"
 if (any(abs((/b/)-(/39.,54.,69./))>0.0001))write(6,*) "NG"
 end subroutine
 subroutine sub(b,c)
 real,dimension(:,:)::b,c(:)
 call chk(matmul(b,c))
 call chk(matmul(b(b1:b2,b3:b4),c(c1:c2)))
 end subroutine
 subroutine sub1(bb,cc)
 real,dimension(:,:,:,:,:,:)::bb,cc
call chk(matmul(bb(4,:,2,1,:,2),cc(3,2,2,2,:,c4)))
call chk(matmul(bb(4,b1:b2,2,1,b3:b4,2),cc(3,2,2,2,c1:c2,c4)))
call chk(matmul(bb(4,b1:b2,2,1,b3:b4,2),cc(3,2,2,2,x,c4)))
 end subroutine
 subroutine sub2(bbb,ccc)
 real,dimension(:,:,:,:,:,:)::bbb,ccc
call chk(matmul(bbb(:,:,1,1,1,1),ccc(1,1,1,1,:,c4)))
call chk(matmul(bbb(b1:b2,b3:b4,1,1,1,1),ccc(1,1,1,1,c1:c2,c4)))
call chk(matmul(bbb(b1:b2,b3:b4,1,1,1,1),ccc(1,1,1,1,x,c4)))
 end subroutine
 subroutine sub3(bbb,ccc)
 real,dimension(:,:,:,:,:,:)::bbb,ccc
call chk(matmul(bbb(:,:,1,1,1,1)+bbb(:,:,1,1,1,1)-bbb(:,:,1,1,1,1),ccc(1,1,1,1,:,c4)-c+ccc(1,1,1,1,:,c4)))
 end subroutine
end
