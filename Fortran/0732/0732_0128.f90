real,dimension(3,2)::z
real b(-3:-1,-2:-1),c(-2:-1,-4:-1),d(-4:-1,-3:-1),e(-3:-1,-2:-1),f(-3:-1,-2:-1)
b=reshape((/(i,i=1,6)/),(/3,2/))
c=reshape((/(i,i=1,8)/),(/2,4/))
d=reshape((/(i,i=1,12)/),(/4,3/))
e=reshape((/(i,i=1,6)/),(/3,2/))
i1=-1;i2=-2;i3=-3;i4=-4
write(38,*)matmul( matmul(b,c) , matmul(d,e) )
call chkx(matmul( matmul(b,c) , matmul(d,e) ))
f= matmul( matmul(b,c) , matmul(d,e) )
call chkx(f)
f= matmul( matmul(b,c) , matmul(d,e) )+ matmul( matmul(b,c) , matmul(d,e) ) -matmul( matmul(b,c) , matmul(d,e) )
call chkx(f)
f= matmul( matmul(b,c)+matmul(b,c)-matmul(b,c) , matmul(d,e)+matmul(d,e)-matmul(d,e) )+ matmul( matmul(b,c) , matmul(d,e) ) -matmul( matmul(b,c) , matmul(d,e) )
call chkx(f)
call chkx(matmul( matmul(b,c)+matmul(b,c)-matmul(b,c) , matmul(d,e)+matmul(d,e)-matmul(d,e) )+ matmul( matmul(b,c) , matmul(d,e) ) -matmul( matmul(b,c) , matmul(d,e) ))
write(38,*)(matmul( matmul(b,c)+matmul(b,c)-matmul(b,c) , matmul(d,e)+matmul(d,e)-matmul(d,e) )+ matmul( matmul(b,c) , matmul(d,e) ) -matmul( matmul(b,c) , matmul(d,e) ))
write(38,*)matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
call chkx(matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ))
f= matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
call chkx(f)
f= matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , &
matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )+ &
matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
 matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ) -&
matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
 matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
call chkx(f)
f= matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1))+&
matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1))-&
matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , &
matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1))+&
matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1))-&
matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )+ &
matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , &
matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ) -&
matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
 matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )
call chkx(f)
call chkx(matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1))+&
matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1))-&
matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , &
matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1))+&
matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1))-&
matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )+ &
matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
 matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ) -&
matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) ,&
 matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ))
write(38,*)(matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1))+matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1))-&
matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1))+&
matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1))-matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )+&
 matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) )&
 -matmul( matmul(b(i3:i1:-i1,i2:i1:-i1),c(i2:i1:-i1,i4:i1:-i1)) , matmul(d(i4:i1:-i1,i3:i1:-i1),e(i3:i1:-i1,i2:i1:-i1)) ))
rewind 38
read(38,*) z; call chkx(z)
read(38,*) z; call chkx(z)
read(38,*) z; call chkx(z)
read(38,*) z; call chkx(z)
print *,'pass'
contains
 subroutine chk(b)
 real,dimension(:,:)::b
 if (any(shape(b)/=(/3,4/)))write(6,*) "NG"
 if (any(abs((/b/)-(/9.,12.,15.,19.,26.,33.,29.,40.,51.,39.,54.,69./))>0.0001))write(6,*) "NG"
 end subroutine
 subroutine chkx(b)
 real,dimension(:,:)::b
 if (any(shape(b)/=(/3,2/)))write(6,*) "NG"
 if (any(abs((/b/)-(/4812.00000,6624.00000,8436.00000,10878.0000,14976.0000,19074.0000/))>0.0001))write(6,*) "NG"
 end subroutine
end
