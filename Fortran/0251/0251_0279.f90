block
integer::ii
interface operator(*)
function a1(d1,d2)
integer::a1
character(len=*),intent(in) :: d1,d2
end function
end interface operator(*)
if('ch'*'abc'==7)print*,"1:Pass"
block
interface Assignment(=)
subroutine sub(d1,d2)
integer,INTENT(OUT) :: d1
character(len=*),intent(in) :: d2
end subroutine
end interface Assignment(=)
ii= 'abc'
if(ii==3)print*,"2:pass"
end block
end block
end

function a1(d1,d2)
integer::a1
character(len=*),intent(in) :: d1,d2
integer,save::ii=1
a1=len(d1)*len(d2)+ii
ii=ii+1
end function

subroutine sub(d1,d2)
integer,INTENT(OUT) :: d1
character(len=*),intent(in) :: d2
d1 = len(d2)
end subroutine
