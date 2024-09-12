call test01()
print *,"pass"
end

subroutine test01()
character(65000) ,allocatable :: a(:),b(:,:,:,:,:,:,:),c(:)
character(:),allocatable            :: ccc,ddd
integer(kind=8) :: i
allocate(character(60)::ccc,ddd)
ccc="a"
allocate(character(65000) :: a(10),errmsg=ccc)
i=219999999999999999
deallocate(ccc)
allocate(character(65000) :: ccc,errmsg=ddd)

end subroutine
