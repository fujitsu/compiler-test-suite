integer :: ii(5)
integer :: j=0,k(3)=0
type tt
 integer :: cc=0,dd(3)=0
end type

type(tt) :: obj,oo(2)

ii=3
j=4
k=3
k(2) = 5
obj%cc=6
obj%dd=6
obj%dd(2)=7
 
oo%cc=8
oo(2)%dd=6
oo%dd(2)=7
 
print*,'test'

Block
Integer :: arr(ii(2)),brr(j),crr(k(2)),drr(obj%cc),err(oo(2)%cc),frr(oo(2)%dd(2))
character(ii(2)) :: as
character(j) :: bs
character(k(2)) :: cs
character(obj%cc) :: ds
character(oo(2)%cc) :: es
character(oo(2)%dd(2)) :: fs

if(size(arr)==3 .and. len(as)==3) then
 if(size(brr) /= 4) print*,202
 if(size(crr) /= 5) print*,203
 if(size(drr) /= 6) print*,204
 if(size(err) /= 8) print*,205
 if(size(frr) /= 7) print*,206
 if(len(bs) /= 4) print*,207
 if(len(cs) /= 5) print*,208
 if(len(ds) /= 6) print*,209
 if(len(es) /= 8) print*,210
 if(len(fs) /= 7) print*,211
 print*,'pass'
else
 print*,201,size(arr),len(as)
end if
End block
call ss(ii)

contains
subroutine ss(d)
integer :: d(5)
integer :: j=0,k(3)=0
type tt
 integer :: cc=0,dd(3)=0
end type

type(tt) :: obj,oo(2)
j=4
k=3
k(2) = 5
obj%cc=6
obj%dd=6
obj%dd(2)=7
 
oo%cc=8
oo(2)%dd=6
oo%dd(2)=7
 
print*,'test'

Block
Integer :: arr(d(2)),brr(j),crr(k(2)),drr(obj%cc),err(oo(2)%cc),frr(oo(2)%dd(2))
character(d(2)) :: as
character(j) :: bs
character(k(2)) :: cs
character(obj%cc) :: ds
character(oo(2)%cc) :: es
character(oo(2)%dd(2)) :: fs

if(size(arr)==3 .and. len(as)==3) then
 if(size(brr) /= 4) print*,102
 if(size(crr) /= 5) print*,103
 if(size(drr) /= 6) print*,104
 if(size(err) /= 8) print*,105
 if(size(frr) /= 7) print*,106
 if(len(bs) /= 4) print*,107
 if(len(cs) /= 5) print*,108
 if(len(ds) /= 6) print*,109
 if(len(es) /= 8) print*,110
 if(len(fs) /= 7) print*,111
 print*,'pass'
else
 print*,101,size(arr),len(as)
end if
End block
end subroutine
end

