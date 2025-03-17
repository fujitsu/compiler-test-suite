integer,pointer,dimension(:,:)::p
allocate(p(3,5))
p=reshape((/(i,i=1,15)/),(/3,5/))
call ss(p)
print *,'pass'
contains
subroutine ss(p)
integer,pointer,dimension(:,:)::p
call s(p)
end subroutine
end
subroutine s(p)
integer,dimension(15)::p
if (any(p/=(/(i,i=1,15)/)))print *,'error'
end
