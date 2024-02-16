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
call=ss(p(:)(:),1, &
        p(:)(:),1, &
        p(:)(:),1)
if (call/=3) print *,601
call=ss(p(:)(:2),2,  &
        p(:)(:2),2, &
        p(:)(:2),2)
if (call/=3) print *,602
call=ss(p(:)(:min(k+1,2)),3,  &
        p(:)(:min(k+1,2)),3,  &
        p(:)(:min(k+1,2)),3)
if (call/=3) print *,603
call=ss(p(:)(:max(k,2)),4, &
        p(:)(:max(k,2)),4, &
        p(:)(:max(k,2)),4)
if (call/=3) print *,604
contains
function   ss(b1,k1,b2,k2,b3,k3)
character(2),contiguous::b1(:),b2(:),b3(:)
if (k==1) then
if (loc(t)/=loc(b1)) print *,201,loc(t),loc(b1),k1
if (any(b1(:3)/=t(:3))) print *,202
else
if (loc(t)==loc(b1)) print *,2011,loc(t),loc(b1),k1
if (any(b1(:3)/=t(::2))) print *,202
endif
if (k==1) then
if (loc(t)/=loc(b2)) print *,301,loc(t),loc(b2),k2
if (any(b2(:3)/=t(:3))) print *,302
else
if (loc(t)==loc(b2)) print *,3011,loc(t),loc(b2),k2
if (any(b2(:3)/=t(::2))) print *,302
endif
if (k==1) then
if (loc(t)/=loc(b3)) print *,231,loc(t),loc(b3),k3
if (any(b3(:3)/=t(:3))) print *,202
else
if (loc(t)==loc(b3)) print *,2311,loc(t),loc(b3),k3
if (any(b3(:3)/=t(::2))) print *,202
endif
ss=3
end function
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
