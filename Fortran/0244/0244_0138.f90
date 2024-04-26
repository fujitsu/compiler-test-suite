integer,pointer::aptr(:)
integer,target :: trg(10)
trg=2
aptr=>trg(2:6)

call sub(trg(2:6))

contains
subroutine sub(dptr)
integer,contiguous::dptr(:)

call sub2(dptr(1:5))
call sub3(dptr(1:5:2))
end subroutine

subroutine sub2(dd)
integer::dd(:)
integer::i=1,j=3
if(is_contiguous(dd)) print*,'pass'
if(is_contiguous(dd(::2))) print*,101
if(is_contiguous(dd(::i)) .neqv. .true.) print*,201
if(is_contiguous(dd(::j))) print*,202
if(is_contiguous(dd([2,3,4]))) print*,203 
end subroutine

subroutine sub3(dd)
integer::dd(:)
if(is_contiguous(dd)) print*,102
if(is_contiguous(dd(::2))) print*,103
if(is_contiguous(dd([2,3,4]))) print*,104 
end subroutine
end
