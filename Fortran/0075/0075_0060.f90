subroutine s1(k)
character(2),pointer::p(:)
character(2),target ::t(5)=['11','22','33','44','55']
if (k==1) then
  p=>t(1:3)
else
  p=>t(1::2)
endif
write(3,*)is_contiguous(p(:)(:))
write(3,*)is_contiguous(p(:)(:2))
write(3,*)is_contiguous(p(:)(:min(2,k+1)))
write(3,*)is_contiguous(p(:)(:k))
call=ss(p(:)(:),1)+ &
     ss(p(:)(:),1)+ &
     ss(p(:)(:),1)
if (call/=3) print *,601
call=ss(p(:)(:2),2)+ &
     ss(p(:)(:2),2)+&
     ss(p(:)(:2),2)
if (call/=3) print *,602
call=ss(p(:)(:min(2,k+1)),3)+ &
     ss(p(:)(:min(2,k+1)),3)+ &
     ss(p(:)(:min(2,k+1)),3)
if (call/=3) print *,603
call=ss(p(:)(:max(2,k)),4)+&
     ss(p(:)(:max(2,k)),4)+&
     ss(p(:)(:max(2,k)),4)
if (call/=3) print *,604
contains
function   ss(b,kk)
character(2),contiguous::b(:)
if (k==1) then
if (loc(t)/=loc(b)) print *,201,loc(t),loc(b),kk
if (any(b(:3)/=t(:3))) print *,202
else
if (any(b(:3)/=t(::2))) print *,202
if (loc(t)==loc(b)) print *,2011,loc(t),loc(b),kk
endif
ss=1
end function
end subroutine
logical n
call s1(1)
call s1(2)
rewind 3
read(3,*) n;if(.not.n) print *,101
read(3,*) n;if(.not.n) print *,102
read(3,*) n;if(.not.n) print *,103
read(3,*) n;if(     n) print *,201
read(3,*) n;if(     n) print *,202
read(3,*) n;if(     n) print *,203
read(3,*) n;if(     n) print *,204
read(3,*) n;if(     n) print *,205

print *,'OK'
end
