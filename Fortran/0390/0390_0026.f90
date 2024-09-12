call test01()
print *,"pass"
end

subroutine test01()
type ty1
 character(:) ,allocatable :: ip
end type
type(ty1),allocatable :: arr(:)
type(ty1)             ::brr(10)
do i=1,10
allocate(character(len=10) :: brr(i)%ip)
brr(i)%ip = '1234567890'
end do
allocate(arr(10))
arr=brr
if (arr(2)%ip/='1234567890') print *,1
deallocate(arr)
allocate(arr(10) ,source=brr)
if (arr(2)%ip/='1234567890') print *,1

end subroutine
