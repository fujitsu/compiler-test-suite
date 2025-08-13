subroutine ss
character(:),allocatable:: a1
character(:),allocatable:: a2(:,:)
character(:),allocatable:: a3(:,:,:)
k2=-2
allocate (character(k2)::a1)
allocate (character(k2)::a2(2,3))
allocate (character(k2)::a3(2,3,1))
if (len(a1)/=0) print *,101
if (len(a2)/=0) print *,102
if (len(a3)/=0) print *,103
a1=''
a2=''
a3=''
write(2,*) a1,1
write(2,*) a2,2
write(2,*) a3,3
rewind 2
read(2,*) k;if (k/=1)print *,301
read(2,*) k;if (k/=2)print *,302
read(2,*) k;if (k/=3)print *,303
end
call ss
print *,'pass'
end
