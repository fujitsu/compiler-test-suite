subroutine s1(y1,y2,y3,y4)
character*3 x1*1,x2*2,x3*3,x4*10000
character(*) y1,y2,y3,y4
x1='123'
x2='123'
x3='123'
x4='123'
call c1([character(2)::x1//x1//x4,x2//x2//x4,x3//x3//x4],1,2,3)
k=2
call c1([character(k)::x1//x1//x4,x2//x2//x4,x3//x3//x4],1,2,3)
k=1
call c1([character(k+1)::x1//x1//x4,x2//x2//x4,x3//x3//x4],1,2,3)
call c1([character(2)::y1//y1//y4,y2//y2//y4,y3//y3//y4],1,2,3)
k=2
call c1([character(k)::y1//y1//y4,y2//y2//y4,y3//y3//y4],1,2,3)
k=1
call c1([character(k+1)::y1//y1//y4,y2//y2//y4,y3//y3//x4],1,2,3)
call c1([character(4)::x1//x1//x4,x2//x2//x4,y3//x3//x4],2,4,3)
k=4
call c1([character(k)::x1//x1//x4,x2//x2//x4,y3//x3//x4],2,4,3)
k=3
call c1([character(k+1)::x1//x1//x4,x2//x2//x4,y3//x3//x4],2,4,3)
call c1([character(4)::y1//y1//y4,y2//y2//y4,y3//y3//y4],2,4,3)
k=4
call c1([character(k)::y1//y1//y4,y2//y2//y4,y3//y3//y4],2,4,3)
k=3
call c1([character(k+1)::y1//y1//y4,y2//y2//y4,y3//y3//y4],2,4,3)
contains
subroutine c1(z,m,k,n)
character(*)::z(:)
select case (m)
case (1)
if (len(z)/=k)print *,101
if (any(shape(z)/=(/n/)))print *,102
if (z(1)/='11')print *,103
if (z(2)/='12')print *,104
if (z(3)/='12')print *,105
case (2)
if (len(z)/=k)print *,201
if (any(shape(z)/=(/n/)))print *,202
if (z(1)/='1112')print *,203
if (z(2)/='1212')print *,204
if (z(3)/='1231')print *,205
end select
end subroutine
end
character*3 x1*1,x2*2,x3*3,x4*10000
x1='123'
x2='123'
x3='123'
x4='123'
call s1(x1,x2,x3,x4)
print *,'pass'
end
