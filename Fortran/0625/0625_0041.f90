call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
parameter(k2=2)
 character(:),allocatable::r(:,:,:)
 character(k2) :: aaa             
 allocate(character(k2)::r(2,1,3))
 r='a'
 call ssss() 
contains
 subroutine ssss()
 character(:),allocatable::rr(:,:,:)
 character(k2) :: bbb               
 allocate(character(k2)::rr(2,1,3))
 rr='a'
 end subroutine
end

subroutine test02()
parameter(k2=2)
 character(:),allocatable::r(:,:,:)
 allocate(character(k2)::r(2,1,3))
 r='a'
 call ssss()
contains
 subroutine ssss()
 character(:),allocatable::rr(:,:,:)
 allocate(character(k2)::rr(2,1,3))
 rr='a'
 end subroutine
end

subroutine test03()
parameter(k2=2)
 call ssss()
contains
 subroutine ssss()
 character(:),allocatable::rr(:,:,:)
 allocate(character(k2)::rr(2,1,3))
 rr='a'
 end subroutine
end
