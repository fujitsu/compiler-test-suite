call aaaaa
print *,'pass'
end
subroutine aaaaa
character(len=5),pointer::ch1(:,:)
allocate(ch1(5,5))
call s1(aa(ch1))
contains
subroutine s1(ch1)
character(len=5),dimension(:,:)::ch1
if(any(ch1/=reshape((/('word ',k=1,25)/),(/5,5/)))) print *,'err1'
end subroutine
function aa(ch1) result(res)
character(len=5),dimension(:,:),intent(out)::ch1
character(len=5),dimension(5,5)::res
ch1=' word'
res=adjustl(ch1)
end function
end
