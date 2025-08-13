integer,allocatable :: a(:,:,:)

allocate (a(0:2,0:2,0:2))

write(7,*) LBOUND(a)
write(7,*) LBOUND(a(:,:,:))
write(7,*) UBOUND(a)
write(7,*) UBOUND(a(:,:,:))
rewind 7
read(7,*)i1,i2,i3
if (any((/i1,i2,i3/)/=0))write(6,*) "NG"
read(7,*)i1,i2,i3
if (any((/i1,i2,i3/)/=1))write(6,*) "NG"
read(7,*)i1,i2,i3
if (any((/i1,i2,i3/)/=2))write(6,*) "NG"
read(7,*)i1,i2,i3
if (any((/i1,i2,i3/)/=3))write(6,*) "NG"
print *,'pass'
end
