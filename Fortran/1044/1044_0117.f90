call aaaaa
print *,'pass'
contains
subroutine aaaaa
integer,dimension(2,3)::ia
integer,parameter::k=3
integer,parameter::m=2
ia=reshape((/(j,j=1,6)/),(/2,3/))
call s1(ia(:,1:k:m))
end subroutine
subroutine s1(ia)
integer ia(:,:)
call s2(ia(:,:))
end subroutine
subroutine s2(ia)
integer ia(2,*)
if(ia(1,1).ne.1) write(6,*) "NG"
if(ia(2,1).ne.2) write(6,*) "NG"
if(ia(1,2).ne.5) write(6,*) "NG"
if(ia(2,2).ne.6) write(6,*) "NG"
end subroutine
end
