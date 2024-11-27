integer,dimension(3,2),parameter::p=reshape((/1,2,3,4,5,6/),(/3,2/))
integer,dimension(3,2)          ::x=reshape((/1,2,3,4,5,6/),(/3,2/))
integer,dimension(3,2)          ::y=reshape((/1,2,3,4,5,6/),(/3,2/))
call s1(p(1:1,:))
call s2(x(1:1,:))
if (any(x(1:1,:)/=0))write(6,*) "NG"
x=reshape((/1,2,3,4,5,6/),(/3,2/))
call ss2(p(1:1,:),x(1:1,:))
if (any(x(1:1,:)/=0))write(6,*) "NG"
x=reshape((/1,2,3,4,5,6/),(/3,2/))
call ss1(x(1:1,:),p(1:1,:))
if (any(x(1:1,:)/=0))write(6,*) "NG"
x=reshape((/1,2,3,4,5,6/),(/3,2/))
call ss0(p(1:1,:),p(1:1,:))
call ss3(x(1:1,:),y(1:1,:))
if (any(x(1:1,:)/=0))write(6,*) "NG"
if (any(y(1:1,:)/=0))write(6,*) "NG"
print *,'pass'
end
subroutine s1(x)
integer x(2)
if (any(x/=(/1,4/)))write(6,*) "NG"
end
subroutine s2(x)
integer x(2)
if (any(x/=(/1,4/)))write(6,*) "NG"
x=0
end
subroutine ss2(x,y)
integer x(2),y(2)
if (any(x/=(/1,4/)))write(6,*) "NG"
if (any(y/=(/1,4/)))write(6,*) "NG"
y=0
end
subroutine ss1(x,y)
integer x(2),y(2)
if (any(x/=(/1,4/)))write(6,*) "NG"
if (any(y/=(/1,4/)))write(6,*) "NG"
x=0
end
subroutine ss0(x,y)
integer x(2),y(2)
if (any(x/=(/1,4/)))write(6,*) "NG"
if (any(y/=(/1,4/)))write(6,*) "NG"
end
subroutine ss3(x,y)
integer x(2),y(2)
if (any(x/=(/1,4/)))write(6,*) "NG"
if (any(y/=(/1,4/)))write(6,*) "NG"
x=0
y=0
end

