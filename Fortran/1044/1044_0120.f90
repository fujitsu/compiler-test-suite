integer::ia(2,5)
integer i
ia=reshape((/(i,i=1,10)/),(/2,5/))
call sub( ia(:,1:5:2) )
print *,'pass'
contains
subroutine sub(iarr)
integer iarr(:,:)
call s1(iarr(:,:))
end subroutine
subroutine s1(ia)
integer ia(2,3)
if(any(ia/=reshape((/1,2,5,6,9,10/),(/2,3/)))) write(6,*) "NG"
end subroutine
end

