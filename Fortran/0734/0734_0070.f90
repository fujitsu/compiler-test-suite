 INTEGER(KIND=1) :: i, j, a(3,4,5)
 INTEGER(KIND=2) :: b(3,5,4)
 do i = 1, size(a,3)
   a(:,:,i) = i
 end do
 do i = 1, size(a,1)
   b(i,:,:) = transpose(a(i,:,:))
 end do
 do j = 1, size(a,2)
  write(1,*) a(3,j,:)
 end do
 do j = 1, size(b,2)
  write(1,*) b(3,j,:)
 end do
rewind 1
do i=1,4
read(1,*) j1,j2,j3,j4,j5
if (any((/j1,j2,j3,j4,j5/)/=(/1,2,3,4,5/)))print *,'Error-1',i
end do
read(1,*) j1,j2,j3,j4
if (any((/j1,j2,j3,j4/)/=1))print *,'Error-2',i
read(1,*) j1,j2,j3,j4
if (any((/j1,j2,j3,j4/)/=2))print *,'Error-3',i
read(1,*) j1,j2,j3,j4
if (any((/j1,j2,j3,j4/)/=3))print *,'Error-4',i
read(1,*) j1,j2,j3,j4
if (any((/j1,j2,j3,j4/)/=4))print *,'Error-5',i
read(1,*) j1,j2,j3,j4
if (any((/j1,j2,j3,j4/)/=5))print *,'Error-6',i
print *,'pass'
 END
