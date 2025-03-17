character(len=5),allocatable::ch1(:,:)
character(len=5),pointer::ch2(:,:)
i=5
call s1(aa(ch1),i)
call s2(bb(ch2))
print *,'pass'
contains
subroutine s1(ch,i)
integer(kind=4),intent(in)::i
character(len=i),dimension(:,:)::ch
if(any(ch/=reshape((/(' word',k=1,25)/),(/5,5/)))) print *,'err1'
end subroutine
subroutine s2(ch)
character(len=5),dimension(5,5)::ch
if(any(ch/=reshape((/(' word',k=1,25)/),(/5,5/)))) print *,'err1'
end subroutine
function aa(ch1) result(res)
character(len=5),allocatable::ch1(:,:)
character(len=5),dimension(5,5)::res
Allocate(ch1(5,5))
ch1='word'
res=adjustr(ch1)
end function
function bb(ch1) result(res)
character(len=*),pointer::ch1(:,:)
character(len=5),dimension(5,5)::res
Allocate(ch1(5,5))
ch1='word '
res=adjustr(ch1)
end function
end

