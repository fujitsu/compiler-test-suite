character(len=3) :: aa(5,5) = 'abc'
character(len=3) :: aa2(5,5) = 'abc'
aa(:,3:5) = 'xxx'
aa2(:,3:5) = 'xxx'
call ss(aa,aa2)

contains
subroutine ss(a,aarg)
type tt
 integer,pointer,contiguous :: aa2(:,:)
end type

type(tt) :: obj
character(len=3),contiguous::a(:,:)
character(len=3),contiguous::aarg(:,:)

allocate(obj%aa2(5,4))
obj%aa2 = 4

if(is_contiguous(obj%aa2) .neqv. .true.) print*,100

call sss(aarg(:,:2)(2:),obj%aa2,a,a)

if(is_contiguous(a(:,:2)(:))) print *,'pass'
end subroutine

subroutine sss(b1,b2,b3,b4)
character(len=3)::b3(5,2),b4(5,2)
character(len=2)::b1(5,2)
integer::b2(5,*)
if(all(b3/='abc') .or. all(b4/='abc'))print*,101
if(all(b2(:,1:3)/=4)) print*,102
if(all(b1/='bc'))print*,103
end subroutine

end
