character(len=3),pointer,contiguous :: aa(:,:,:)
character(len=3),pointer,contiguous :: aa2(:,:,:)
type tt
 character(len=3),pointer,contiguous :: ba(:,:)
end type

type tt2
 type(tt) :: obj
end type

type(tt2) :: oo,oo2,oo3

allocate(aa(5,4,5))
aa = 'xyz'
allocate(aa2(5,4,5))
aa2 = 'xyz'

allocate(oo%obj%ba(5,4))
oo%obj%ba = 'abc'
oo%obj%ba(:,4)='xyz'
allocate(oo2%obj%ba(5,4))
oo2%obj%ba = 'abc'
oo2%obj%ba(:,1)='xyz'
allocate(oo3%obj%ba(5,4))
oo3%obj%ba = 'abc'
oo3%obj%ba(:,4)='xyz'

if(is_contiguous(oo%obj%ba(:,2:)(:)) .neqv. .true.) print*,101

if(is_contiguous(aa(:,:,3:)(:)) .neqv. .true.) print*,102

call sss(oo%obj%ba,oo2%obj%ba(2:,2:),oo3%obj%ba,aa,aa2)

contains
subroutine sss(b1,b22,b2,b3,b4)
character(len=3)::b3(5,4,*),b4(5,4,*)
character(len=3)::b2(5,*),b1(5,*),b22(4,*)
if(all(b2(:,1:3)=='abc')) print*,'pass1/2'
if(all(b22(:,1:3)=='abc') .neqv. .true.) print*,104
if(all(b1(:,1:3)=='abc') .neqv. .true.) print*,105
if(all(b3(:,:,1:3)=='xyz')) print*,'pass2/2'
if(all(b4(:,:,1:3)=='xyz') .neqv. .true.) print*,103
end subroutine

end
