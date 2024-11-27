call s1
print *,'pass'
end
module m
 integer N
 contains
     function select_x (a) result (x)
     real, dimension(:,:), target :: a
     real, dimension(:), pointer  :: x
     x => a(N,:)
     end function select_x
     subroutine select_y (a, x)
     real, dimension(:,:), target :: a
     real, dimension(:), pointer  :: x
     x => a(N,:)
     end subroutine select_y
end
subroutine s1
use m
real,dimension(4,5)::aa
real, dimension(:), pointer  :: bb
N=2;i1=1;i2=2;i4=4;i5=5
aa=reshape((/(i,i=1,20)/),(/4,5/))
if (any(select_x(aa(1:4:2,1:5:2))/=(/3,11,19/)))write(6,*) "NG"
call select_y(aa(1:4:2,1:5:2),bb)
if (any(bb/=(/3,11,19/)))write(6,*) "NG"
aa=reshape((/(i,i=1,20)/),(/4,5/))
if (any(select_x(aa(i1:i4:i2,i1:i5:i2))/=(/3,11,19/)))write(6,*) "NG"
call select_y(aa(i1:i4:i2,i1:i5:i2),bb)
if (any(bb/=(/3,11,19/)))write(6,*) "NG"
end
subroutine errtra
print *,'error'
end
