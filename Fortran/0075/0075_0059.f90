subroutine s1(k)
character(2),pointer::p(:)
character(2),target ::t(5)=['11','22','33','44','55']
if (k==1) then
  p=>t(1:3)
else
  p=>t(1::2)
endif
write(2,*)is_contiguous(p(:)(:))
write(2,*)is_contiguous(p(:)(:2))
write(2,*)is_contiguous(p(:)(:min(2,k+1)))
write(2,*)is_contiguous(p(:)(:k))
call ss(p(:)(:),1)
call ss(p(:)(:2),2)
call ss(p(:)(:min(2,k+1)),3)
call ss(p(:)(:max(2,k)),4)
contains
subroutine ss(b,kk)
character(2),contiguous::b(:)
if (kk/=5) then
if (k==1) then
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b),kk
else
if (loc(t)==loc(b)) print *,211,loc(t),loc(b),kk
endif
else
if (loc(t)/=loc(b)) print *,2011,loc(t),loc(b),kk
endif
if (k==1) then
if (any(b(:3)/=t(:3))) print *,202
else
if (kk/=4) then
if (any(b/=t(::2))) print *,202
else
if (any(b/=t(::2))) print *,202
endif
endif
end subroutine
end subroutine
logical n
call s1(1)
call s1(2)
rewind 2
read(2,*) n;if(.not.n) print *,101
read(2,*) n;if(.not.n) print *,102
read(2,*) n;if(.not.n) print *,103
read(2,*) n;if(     n) print *,201
read(2,*) n;if(     n) print *,202
read(2,*) n;if(     n) print *,203
read(2,*) n;if(     n) print *,204
read(2,*) n;if(     n) print *,205

print *,'OK'
end
