call test01()
print *,"pass"
end

subroutine test01()
character(len=130)  :: a='not allocate'
integer            ,allocatable :: c(:),d(:)
integer :: iii=0
if (allocated(c)) then
else
  allocate(c(10))
endif
c=(/1,2,3,4,5,6,7,8,9,10/)
do i=1,10
if (c(i).ne.i) print *,'err :',c(i)
end do
allocate(d(1))
allocate(d(1),stat=iii,errmsg=a)
allocate(d(1),stat=iii,errmsg=a)
allocate(d(1),stat=iii,errmsg=a)
if (iii.eq.0) print *,'err'
if (a.ne.'Base address is not null') print *,'err1'
deallocate(d)
deallocate(d,stat=iii,errmsg=a)
deallocate(d,stat=iii,errmsg=a)
deallocate(d,stat=iii,errmsg=a)
if (iii.eq.0) print *,'err',iii
if (a.ne.'Base address is null') print *,'err1'
end
