call test01()
print *,'pass'
end

subroutine test01()
type ty1
 integer :: i1
 integer,allocatable :: arr(:)
 integer :: i2
end type
type(ty1) :: str
integer,allocatable :: arr(:)
integer brr(3,3,3),aaa(3)
integer,parameter::bbb(3)=(/1,2,3/)
aaa=(/1,2,3/)

ii=1
do i=1,3
 do j=1,3
  do k=1,3
     brr(i,j,k)=ii
     ii=ii+1
  end do
 end do
end do
allocate(arr(3))
str = ty1(1,arr,2)
str = ty1(1,brr(1:3,1,1),2)
jj=1
do i=1,jj
str = ty1(1,brr(1:3,1,1),2)
if (all(str%arr.ne.(/1,10,19/))) print *,'fail'
str = ty1(1,brr(1,1:3,1),2)
if (all(str%arr.ne.(/1,4,7/))) print *,'fail'
str = ty1(1,brr(1,1,1:3),2)
if (all(str%arr.ne.(/1,2,3/))) print *,'fail'
str = ty1(1,brr(1:3,2,2),2)
if (all(str%arr.ne.(/5,14,23/))) print *,'fail'
str = ty1(1,brr(2,1:3,2),2)
if (all(str%arr.ne.(/11,14,17/))) print *,'fail'
str = ty1(1,brr(2,2,1:3),2)
if (all(str%arr.ne.(/13,14,15/))) print *,'fail'
str = ty1(1,brr(1:3,3,3),2)
if (all(str%arr.ne.(/9,18,27/))) print *,'fail'
do ii=1,jj
str = ty1(1,brr(3,1:3,3),2)
if (all(str%arr.ne.(/21,24,27/))) print *,'fail'
str = ty1(1,brr(3,3,1:3),2)
if (all(str%arr.ne.(/25,26,27/))) print *,'fail'
str = ty1(1,brr(aaa,1,1),2)
if (all(str%arr.ne.(/1,10,19/))) print *,'fail'
str = ty1(1,brr(1,aaa,1),2)
if (all(str%arr.ne.(/1,4,7/))) print *,'fail'
str = ty1(1,brr(1,1,aaa),2)
if (all(str%arr.ne.(/1,2,3/))) print *,'fail'
str = ty1(1,brr(aaa,2,2),2)
if (all(str%arr.ne.(/5,14,23/))) print *,'fail'
do iii=1,jj
str = ty1(1,brr(2,aaa,2),2)
if (all(str%arr.ne.(/11,14,17/))) print *,'fail'
str = ty1(1,brr(2,2,aaa),2)
if (all(str%arr.ne.(/13,14,15/))) print *,'fail'
str = ty1(1,brr(aaa,3,3),2)
if (all(str%arr.ne.(/9,18,27/))) print *,'fail'
str = ty1(1,brr(3,aaa,3),2)
if (all(str%arr.ne.(/21,24,27/))) print *,'fail'
str = ty1(1,brr(3,3,aaa),2)
if (all(str%arr.ne.(/25,26,27/))) print *,'fail'
str = ty1(1,brr(bbb,1,1),2)
if (all(str%arr.ne.(/1,10,19/))) print *,'fail'
str = ty1(1,brr(1,bbb,1),2)
if (all(str%arr.ne.(/1,4,7/))) print *,'fail'
end do
str = ty1(1,brr(1,1,bbb),2)
if (all(str%arr.ne.(/1,2,3/))) print *,'fail'
str = ty1(1,brr(bbb,2,2),2)
if (all(str%arr.ne.(/5,14,23/))) print *,'fail'
str = ty1(1,brr(2,bbb,2),2)
if (all(str%arr.ne.(/11,14,17/))) print *,'fail'
str = ty1(1,brr(2,2,bbb),2)
if (all(str%arr.ne.(/13,14,15/))) print *,'fail'
str = ty1(1,brr(bbb,3,3),2)
if (all(str%arr.ne.(/9,18,27/))) print *,'fail'
str = ty1(1,brr(3,bbb,3),2)
if (all(str%arr.ne.(/21,24,27/))) print *,'fail'
enddo
str = ty1(1,brr(3,3,bbb),2)
if (all(str%arr.ne.(/25,26,27/))) print *,'fail'
end do

end subroutine

