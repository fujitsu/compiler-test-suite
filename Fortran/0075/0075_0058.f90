subroutine s1(k)
character(2),pointer::p(:)
character(2),target ::t(5)=['11','22','33','44','55']
if (k==1) then
  p=>t(1:3)
else
  p=>t(1::2)
endif
write(1,*)is_contiguous(p(:)(:))
write(1,*)is_contiguous(p(:)(:2))
write(1,*)is_contiguous(p(:)(:min(2,k+1)))
write(1,*)is_contiguous(p(:)(:k))
call ss(p(:)(:),1)
call ss(p(:)(:2),2)
call ss(p(:)(:min(2,k+1)),3)
contains
subroutine ss(b,kk)
character(2),contiguous::b(:)
if (k==1) then
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b),kk
if (any(b(:3)/=t(:3))) print *,202
else
if (loc(t)==loc(b)) print *,2010,loc(t),loc(b),kk
if (any(b(:3)/=t(::2))) print *,2020
endif
end subroutine
end subroutine
logical n
call s1(1)
call s1(2)
rewind 1
read(1,*) n;if(.not.n) print *,101
read(1,*) n;if(.not.n) print *,102
read(1,*) n;if(.not.n) print *,103
read(1,*) n;if(     n) print *,201
read(1,*) n;if(     n) print *,202
read(1,*) n;if(     n) print *,203
read(1,*) n;if(     n) print *,204
read(1,*) n;if(     n) print *,205

print *,'OK'
end
