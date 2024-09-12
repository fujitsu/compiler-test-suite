call s1
call s2
print *,'pass'
contains
subroutine s1
intrinsic norm2
type t
real,allocatable::rrr(:)
end type
type(t)::ttt
allocate(ttt%rrr(2))
ttt%rrr=[3.0,4.0]
if(norm2(ttt%rrr)/=5.0) print *,'err1'
if(norm2([3.0,4.0],1)/=5.0) print *,'err2'
if(norm2([3.0_8,4.0_8],1)/=5.0_8) print *,'err3'
if(norm2([3.0_16,4.0_16],1)/=5.0_16) print *,'err4'
if(norm2(dim=1,x=[3.0,4.0])/=5.0) print *,'err5'
if(norm2([3.0_8,4.0_8],dim=1)/=5.0_8) print *,'err6'
if(norm2(X=[3.0_16,4.0_16],dim=1)/=5.0_16) print *,'err7'
block
  intrinsic norm2
if(norm2([3.0,-4.0],1)/=5.0) print *,'err8'
if(norm2([3.0_8,-4.0_8],1)/=5.0_8) print *,'err9'
if(norm2([3.0_16,-4.0_16],1)/=5.0_16) print *,'err10'
end block
end subroutine s1
 subroutine s2
   integer,parameter::i=rank([1])
   if(i/=rank([i])) print *,'err11'
end subroutine s2
end
