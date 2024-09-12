type x
 character(2),allocatable::c(:,:,:)
end type
 type(x)::v
integer n(8)
allocate(v%c(2,2,2))
v%c=reshape((/'1','2','3','4','5','6','7','8'/),(/2,2,2/))
read(v%c,'(i1)') n
if (any(n/=(/(i,i=1,8)/)))print *,'error-1'
read(v%c(:,:,:),'(i1)') n
if (any(n/=(/(i,i=1,8)/)))print *,'error-2'
k=2;j=1
read(v%c(j:k,j:k,j:k),'(i1)') n
if (any(n/=(/(i,i=1,8)/)))print *,'error-3'
read(f(2),'(i1)') n
if (any(n/=(/(i,i=1,8)/)))print *,'error-3'
read(d(2),'(i1)') n
if (any(n/=(/(i,i=1,8)/)))print *,'error-3'
print *,'pass'
contains
function f(i) result(c)
 character(2),allocatable::c(:,:,:)
 allocate(c(2,2,2))
 c=reshape((/'1','2','3','4','5','6','7','8'/),(/2,2,2/))
end function
function d(i) result(c)
 character(i),allocatable::c(:,:,:)
 allocate(c(2,2,2))
 c=reshape((/'1','2','3','4','5','6','7','8'/),(/2,2,2/))
end function
end
