integer,allocatable :: a(:,:,:)

allocate (a(0:2,0:2,0:2))

write(1,*) LBOUND(a)
write(1,*) LBOUND(a(:,:,:))
write(1,*) UBOUND(a)
write(1,*) UBOUND(a(:,:,:))
rewind 1
read(1,*)i1,i2,i3
if (any((/i1,i2,i3/)/=0))write(6,*) "NG"
read(1,*)i1,i2,i3
if (any((/i1,i2,i3/)/=1))write(6,*) "NG"
read(1,*)i1,i2,i3
if (any((/i1,i2,i3/)/=2))write(6,*) "NG"
read(1,*)i1,i2,i3
if (any((/i1,i2,i3/)/=3))write(6,*) "NG"
print *,'pass'
end
