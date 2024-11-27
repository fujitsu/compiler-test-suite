integer,allocatable::a(:,:),b(:,:)
allocate(a(4:6,7:8))
a=reshape((/1,2,3,4,5,6/),(/3,2/))
if (any(a/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(lbound(a)/=(/4,7/)))write(6,*) "NG"
if (any(shape(a)/=(/3,2/)))write(6,*) "NG"
allocate(b(-2:-1,-5:-3))
b=reshape((/1,2,3,4,5,6/),(/2,3/))+10
if (any(b/=10+reshape((/1,2,3,4,5,6/),(/2,3/))))write(6,*) "NG"
if (any(lbound(b)/=(/-2,-5/)))write(6,*) "NG"
if (any(shape(b)/=(/2,3/)))write(6,*) "NG"

call move_alloc(a,b)

if (allocated(a))write(6,*) "NG"
if (.not.allocated(b))write(6,*) "NG"
if (any(b/=reshape((/1,2,3,4,5,6/),(/3,2/))))write(6,*) "NG"
if (any(lbound(b)/=(/4,7/)))write(6,*) "NG"
if (any(shape(b)/=(/3,2/)))write(6,*) "NG"
print *,'pass'
end

