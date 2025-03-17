call aaaaa
print *,'pass'
contains
subroutine aaaaa
character(len=5),dimension(5)::ch1
ch1=' word'
if(any(aa(adjustr(ch1))/=bb(5))) print *,'err1'
end subroutine
function aa(a) result(res)
character(len=5),dimension(:)::a
character(len=5),dimension(5)::res
res=a
end function
function bb(i) result(res)
character(len=i),dimension(5)::res
character(len=5),dimension(5)::ch
ch=' word'
res=adjustr(ch)
end function
end

