 call s1
 print *,'pass'
 end
module m1
integer,target              ::u=10,j1=1
end
subroutine s1
use m1
write(2,*)10,&
reshape((/((i*j,i=j1,240000),j=1,1)/),(/2,5/))+&
 reshape((/((i*j,i=j1,24000),j=1,1)/),(/2,5/))-&
 reshape((/((i*j,i=j1,24000),j=1,1)/),(/2,5/))
call chk
end
subroutine chk
integer a(11)
rewind 2
read(2,*)a
if (any(a/=(/10,1,2,3,4,5,6,7,8,9,10/)))write(6,*) "NG"
end
