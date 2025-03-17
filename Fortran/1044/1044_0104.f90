call aaaaa
print *,'pass'
contains
subroutine aaaaa
character(len=4),pointer::ch
character(len=4),pointer::ch2
allocate(ch2)
ch2='aaaa'
if(aa(ch).ne.bb(ch2)) print *,'err1'
end subroutine
function aa(ch) result(res)
character(len=4),pointer::ch
character(len=4)::res
allocate(ch)
ch=' a b'
res=ch
end function
function bb(ch2) result(res)
character(len=4),pointer::ch2
character(len=4),pointer::ch3
character(len=4)::res
allocate(ch3)
ch3=' a b'
ch2=>ch3
res=ch3
end function
end
