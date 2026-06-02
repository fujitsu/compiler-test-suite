integer :: kk(5) 

type mt  
    integer :: ii = 8 
end type

type(mt) :: mobj(2)
integer :: ii=5
integer :: yy(3)
kk=3
Block
type bt
 integer :: ii=6
end type

integer :: xx(5)

type(bt) :: bobj
type(mt) :: mbobj

integer :: d(5)=4,ii=10

Block
Integer :: arr(d(2)),brr(ii),crr(ii,d(3),bobj%ii,mobj(2)%ii,mbobj%ii)
character(d(2)) :: bs
character(ii) :: cs
character(d(3)) :: ds
character(bobj%ii) :: es
character(mobj(2)%ii) :: fs
character(mbobj%ii) :: gs

if(size(yy)/=3) print*,301
if(size(xx)/=5) print*,302
if(size(arr)/=4) print*,303
if(size(brr)/=10) print*,304
if(size(crr,1)/=10) print*,305
if(size(crr,2)/=4) print*,306
if(size(crr,3)/=6) print*,307
if(size(crr,4)/=8) print*,308
if(size(crr,5)/=8) print*,309

if(len(bs)/=4) print*,401
if(len(cs)/=10) print*,403
if(len(ds)/=4) print*,404
if(len(es)/=6) print*,405
if(len(fs)/=8) print*,406
if(len(gs)/=8) print*,407
print*,'pass'
End block
End block

call ss()
 
contains
subroutine ss()
integer :: ii=5
integer :: yy(kk(2))
print*,'test'
Block
type bt
 integer :: ii=6
end type

integer :: xx(5)

type(bt) :: bobj
type(mt) :: mbobj

integer :: d(5)=4,ii=10

Block
Integer :: arr(d(2)),brr(ii),crr(ii,d(3),bobj%ii,mobj(2)%ii,mbobj%ii)
character(d(2)) :: bs
character(ii) :: cs
character(d(3)) :: ds
character(bobj%ii) :: es
character(mobj(2)%ii) :: fs
character(mbobj%ii) :: gs

if(size(yy)/=3) print*,99
if(size(xx)/=5) print*,100
if(size(arr)/=4) print*,101
if(size(brr)/=10) print*,102
if(size(crr,1)/=10) print*,103
if(size(crr,2)/=4) print*,104
if(size(crr,3)/=6) print*,105
if(size(crr,4)/=8) print*,106
if(size(crr,5)/=8) print*,107

if(len(bs)/=4) print*,201
if(len(cs)/=10) print*,203
if(len(ds)/=4) print*,204
if(len(es)/=6) print*,205
if(len(fs)/=8) print*,206
if(len(gs)/=8) print*,207
print*,'pass'
End block
End block
end subroutine
end

