integer,allocatable::ia(:,:)
integer i
allocate(ia(2,5))
call sub( ia(:,1:5:2) )
print *,'pass'
contains
subroutine sub(iarr)
integer iarr(:,:)
ia=reshape((/(i,i=1,10)/),(/2,5/))
call sub1(iarr(:,:),2)
end subroutine
end
subroutine sub1(iarr,k)
integer k
integer iarr(2,k)
if(iarr(2,2).ne.6) write(6,*) "NG"
end subroutine


