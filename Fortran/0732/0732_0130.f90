real,dimension(3,2)::z
real b(-3:-1,-2:-1),c(-2:-1,-4:-1),d(-4:-1,-3:-1),e(-3:-1,-2:-1),f(-3:-1,-2:-1)
b=reshape((/(i,i=1,6)/),(/3,2/))
c=reshape((/(i,i=1,8)/),(/2,4/))
d=reshape((/(i,i=1,12)/),(/4,3/))
e=reshape((/(i,i=1,6)/),(/3,2/))
i1=-1;i2=-2;i3=-3;i4=-4
write(1,*)matmul( matmul(cos(b),cos(c)) , matmul(cos(d),cos(e)) )
call chkx(matmul( matmul(cos(b),cos(c)) , matmul(cos(d),cos(e)) ))
f= matmul( matmul(cos(b),cos(c)) , matmul(cos(d),cos(e)) )
call chkx(f)
f= matmul( matmul(cos(b),cos(c)) , matmul(cos(d),cos(e)) )+ matmul( matmul(cos(b),cos(c)) , matmul(cos(d),cos(e)) ) -matmul( matmul(cos(b),cos(c)) , matmul(cos(d),cos(e)) )
call chkx(f)
f= matmul( matmul(cos(b),cos(c))+matmul(cos(b),cos(c))-matmul(cos(b),cos(c)) , &
matmul(cos(d),cos(e))+matmul(cos(d),cos(e))-matmul(cos(d),cos(e)) )+&
 matmul( matmul(cos(b),cos(c)) , matmul(cos(d),cos(e)) ) -matmul( matmul(cos(b),cos(c)) , matmul(cos(d),cos(e)) )
call chkx(f)
call chkx(matmul( matmul(cos(b),cos(c))+matmul(cos(b),cos(c))-matmul(cos(b),cos(c)) , matmul(cos(d),cos(e))+matmul(cos(d),cos(e))-&
matmul(cos(d),cos(e)) )+ matmul( matmul(cos(b),cos(c)) ,&
 matmul(cos(d),cos(e)) ) -matmul( matmul(cos(b),cos(c)) , matmul(cos(d),cos(e)) ))
write(1,*)(matmul( matmul(cos(b),cos(c))+matmul(cos(b),cos(c))-matmul(cos(b),cos(c)) ,&
 matmul(cos(d),cos(e))+matmul(cos(d),cos(e))-matmul(cos(d),cos(e)) )+ matmul( matmul(cos(b),cos(c)) ,&
 matmul(cos(d),cos(e)) ) -matmul( matmul(cos(b),cos(c)) , matmul(cos(d),cos(e)) ))
write(1,*)matmul( matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1))) , matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1))) )
call chkx(matmul( matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1))) , matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1))) ))
f= matmul( matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1))) , matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1))) )
call chkx(f)
f= matmul( matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1))) , &
matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1))) )+ &
matmul( matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1))) ,&
 matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1))) ) -&
matmul( matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1))) ,&
 matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1))) )
call chkx(f)
f= matmul( matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1)))+&
matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1)))-&
matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1))) , &
matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1)))+&
matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1)))-&
matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1))) )+ &
matmul( matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1))) , &
matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1))) ) -&
matmul( matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1))) ,&
 matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1))) )
call chkx(f)
call chkx(matmul( matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1)))+&
matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1)))-&
matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1))) , &
matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1)))+&
matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1)))-&
matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1))) )+ &
matmul( matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1))) ,&
 matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1))) ) -&
matmul( matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1))) ,&
 matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1))) ))
write(1,*)(matmul( matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1)))+matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1)))-&
matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1))) , matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1)))+&
matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1)))-matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1))) )+&
 matmul( matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1))) , matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1))) )&
 -matmul( matmul(cos(b(i3:i1:-i1,i2:i1:-i1)),cos(c(i2:i1:-i1,i4:i1:-i1))) , matmul(cos(d(i4:i1:-i1,i3:i1:-i1)),cos(e(i3:i1:-i1,i2:i1:-i1))) ))
rewind 1
read(1,*) z; call chkx(z)
read(1,*) z; call chkx(z)
read(1,*) z; call chkx(z)
read(1,*) z; call chkx(z)
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
 if (any(abs((/b/)-(/0.422391832,-5.33609986E-02,-0.480054080,-0.428394318,4.31347191E-02,0.475005746/))>0.01))write(6,*) "NG"
 end subroutine
end
