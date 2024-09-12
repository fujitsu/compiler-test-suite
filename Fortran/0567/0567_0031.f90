implicit type(ty(4)) (q)

type ty(k)
integer,kind :: k
character(kind=k,len=k-1) :: ch
end type ty

if(kind(q%ch) .ne. 4)print*,101
if(len(q%ch) .ne. 3)print*,102

print*,"PASS"


end
