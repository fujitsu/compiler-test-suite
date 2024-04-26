integer,allocatable :: ii(:),jj(:)
allocate(ii(3),jj(2))
call sub(ii,jj)

contains
SUBROUTINE sub(a,b)
implicit none
integer :: a(3),b(2)
integer, DIMENSION(SIZE(b),SIZE(b)) :: arr(SIZE(a),SIZE(a))
logical, DIMENSION(SIZE(a),SIZE(a)) :: msk
integer, DIMENSION(SIZE(b)):: d
integer, DIMENSION(SIZE(a)):: x

arr=3
arr(1,1)=17
arr(1,2)=18
arr(2,1)=17
arr(2,3)=19
arr(3,2)=20
arr(3,3)=19

msk=.true.
msk(1,3)=.false.
msk(2,2)=.false.
msk(3,1)=.false.

d(2)=1

x=IALL(mask=msk,array=arr,dim=d(2))

if(x(1).ne. 17) print*,101
if(x(2).ne. 16) print*,102
if(x(3).ne. 19) print*,103
print*,"pass"
END SUBROUTINE
end
