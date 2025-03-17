print *,'pass'
call s1
call s2
end
subroutine s1
integer,pointer::x(:,:,:)
allocate(x(4,3,2));i=1
x(:,:,i)=reshape((/(k,k=1,4*3*2)/),(/4,3/))
j=n(x(:,:,1))
if (j/=sum((/(k,k=1,12)/)))write(6,*) "NG"
contains
function n(kk)
integer,dimension(12)::kk
if (loc(kk)/=loc(x))write(6,*) "NG"
n=sum(kk)
end function
end
subroutine s2
integer,pointer::x(:,:,:)
allocate(x(4,3,2));i=2
x(:,:,i)=reshape((/(k,k=1,4*3*2)/),(/4,3/))
j=n(x(:,:,2))
if (j/=sum((/(k,k=1,12)/)))write(6,*) "NG"
contains
function n(kk)
integer,dimension(12)::kk
if (loc(kk)/=loc(x(1,1,2)))write(6,*) "NG"
n=sum(kk)
end function
end

