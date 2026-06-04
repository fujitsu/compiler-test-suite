call z1
call z2
call z3
print *,'pass'
contains
subroutine z1
integer a(2,3),b(2,3)
a=reshape((/1,2,3,4,5,6/),(/2,3/))
b=reshape((/0,7,3,4,5,8/),(/2,3/))
if(count(a/=b)/=3_4) print *,'fail'
if(count(a/=b,kind=1)/=3_1) print *,'fail'
if(count(a/=b,kind=2)/=3_2) print *,'fail'
if(count(a/=b,kind=4)/=3_4) print *,'fail'
if(count(a/=b,kind=8)/=3_8) print *,'fail'
if(count(kind=1,mask=a/=b)/=3_1) print *,'fail'
if(count(kind=2,mask=a/=b)/=3_2) print *,'fail'
if(count(kind=4,mask=a/=b)/=3_4) print *,'fail'
if(count(kind=8,mask=a/=b)/=3_8) print *,'fail'
if(any(count(a/=b,1)/=(/2,0,1/))) print *,'fail'
if(any(count(a/=b,1,1)/=(/2_1,0_1,1_1/))) print *,'fail'
if(any(count(a/=b,1,2)/=(/2_2,0_2,1_2/))) print *,'fail'
if(any(count(a/=b,1,4)/=count(a/=b,1))) print *,'fail'
if(any(count(a/=b,1,8)/=(/2_8,0_8,1_8/))) print *,'fail'
if(kind(count(a/=b,1,1))/=1) print *,'fail'
if(kind(count(a/=b,1,2))/=2) print *,'fail'
if(kind(count(a/=b,1,4))/=4) print *,'fail'
if(kind(count(a/=b,1,8))/=8) print *,'fail'
if(any(count(a/=b,2)/=(/1,2/))) print *,'fail'
if(any(count(a/=b,len("aa"),kind(1_1))/=(/1_1,2_1/))) print *,'fail'
if(any(count(a/=b,len("  "),kind(1_2))/=(/1_2,2_2/))) print *,'fail'
if(any(count(a/=b,kind(1_2),4)/=(/1_4,2_4/))) print *,'fail'
if(any(count(a/=b,kind(.true._2),8)/=(/1_8,2_8/))) print *,'fail'
end subroutine
subroutine z2
integer a(2,3),b(2,3)
a=reshape((/1,2,3,4,5,6/),(/2,3/))
b=reshape((/0,7,3,4,5,8/),(/2,3/))
call x2(a,b)
end subroutine
subroutine x2(a,b)
integer,dimension(:,:)::a,b
if(count(a/=b)/=3_4) print *,'fail'
if(count(a/=b,kind=1)/=3_1) print *,'fail'
if(count(a/=b,kind=2)/=3_2) print *,'fail'
if(count(a/=b,kind=4)/=3_4) print *,'fail'
if(count(a/=b,kind=8)/=3_8) print *,'fail'
if(count(kind=1,mask=a/=b)/=3_1) print *,'fail'
if(count(kind=2,mask=a/=b)/=3_2) print *,'fail'
if(count(kind=4,mask=a/=b)/=3_4) print *,'fail'
if(count(kind=8,mask=a/=b)/=3_8) print *,'fail'
if(any(count(a/=b,1)/=(/2,0,1/))) print *,'fail'
if(any(count(a/=b,1,1)/=(/2_1,0_1,1_1/))) print *,'fail'
if(any(count(a/=b,1,2)/=(/2_2,0_2,1_2/))) print *,'fail'
if(any(count(a/=b,1,4)/=count(a/=b,1))) print *,'fail'
if(any(count(a/=b,1,8)/=(/2_8,0_8,1_8/))) print *,'fail'
if(kind(count(a/=b,1,1))/=1) print *,'fail'
if(kind(count(a/=b,1,2))/=2) print *,'fail'
if(kind(count(a/=b,1,4))/=4) print *,'fail'
if(kind(count(a/=b,1,8))/=8) print *,'fail'
if(any(count(a/=b,2)/=(/1,2/))) print *,'fail'
if(any(count(a/=b,len("aa"),kind(1_1))/=(/1_1,2_1/))) print *,'fail'
if(any(count(a/=b,len("  "),kind(1_2))/=(/1_2,2_2/))) print *,'fail'
if(any(count(a/=b,kind(1_2),4)/=(/1_4,2_4/))) print *,'fail'
if(any(count(a/=b,kind(.true._2),8)/=(/1_8,2_8/))) print *,'fail'
end subroutine
subroutine z3
integer a(2,3),b(2,3)
a=reshape((/1,2,3,4,5,6/),(/2,3/))
b=reshape((/0,7,3,4,5,8/),(/2,3/))
call x3(a,b,%val(kind(1_1)),%val(kind(1_2)))
end subroutine
subroutine x3(a,b,c,d)
integer,dimension(:,:)::a,b
integer,value::c,d
if(count(a/=b)/=3_4) print *,'fail'
if(count(a/=b,kind=1)/=3_1) print *,'fail'
if(count(a/=b,kind=2)/=3_2) print *,'fail'
if(count(a/=b,kind=4)/=3_4) print *,'fail'
if(count(a/=b,kind=8)/=3_8) print *,'fail'
if(count(kind=1,mask=a/=b)/=3_1) print *,'fail'
if(count(kind=2,mask=a/=b)/=3_2) print *,'fail'
if(count(kind=4,mask=a/=b)/=3_4) print *,'fail'
if(count(kind=8,mask=a/=b)/=3_8) print *,'fail'
if(any(count(a/=b,c)/=(/2,0,1/))) print *,'fail'
if(any(count(a/=b,c,1)/=(/2_1,0_1,1_1/))) print *,'fail'
if(any(count(a/=b,c,2)/=(/2_2,0_2,1_2/))) print *,'fail'
if(any(count(a/=b,c,4)/=count(a/=b,1))) print *,'fail'
if(any(count(a/=b,c,8)/=(/2_8,0_8,1_8/))) print *,'fail'
if(kind(count(a/=b,c,1))/=1) print *,'fail'
if(kind(count(a/=b,c,2))/=2) print *,'fail'
if(kind(count(a/=b,c,4))/=4) print *,'fail'
if(kind(count(a/=b,c,8))/=8) print *,'fail'
if(any(count(a/=b,d)/=(/1,2/))) print *,'fail'
if(any(count(a/=b,len("aa"),kind(1_1))/=(/1_1,2_1/))) print *,'fail'
if(any(count(a/=b,len("  "),kind(1_2))/=(/1_2,2_2/))) print *,'fail'
if(any(count(a/=b,kind(1_2),4)/=(/1_4,2_4/))) print *,'fail'
if(any(count(a/=b,kind(.true._2),8)/=(/1_8,2_8/))) print *,'fail'
end subroutine
end
