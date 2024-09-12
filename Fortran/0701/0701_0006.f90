call test02()
call test01()
print *,'pass'
end

subroutine test02()
interface operator(.aaa.)
 function ifun03(i,j)
  integer,intent(in) :: i,j
 end function
 function ifunx3(j)
  integer,intent(in) :: j
 end function
end interface
interface operator(.sss.)
 function ifun02(i,j)
  integer,intent(in) :: i,j
 end function
end interface
interface operator(.bbb.)
 function ifun01(i,j)
  integer,intent(in) :: i,j
 end function
 function ifunx1(j)
  integer,intent(in) :: j
 end function
end interface
interface operator(.eqv.)
 function ifun04(i,j)
  character*(*),intent(in) :: i,j
 end function
end interface
interface operator(.or.)
 function ifun05(i,j)
  character*(*),intent(in) :: i,j
 end function
end interface
integer arr(10),a(10)
character ji1*1,ji3*3,ji7*7
data ji1,ji3,ji7 /'a','abc','1234567'/
a=(/1,2,3,4,5,6,7,8,9,10/)
arr=(/2,3,4,5,6,7,8,9,10,11/)
i1=1;i3=3;i4=4;i5=5;i6=6;i7=7;
k=arr(.aaa.(ji1.eqv.ji3).sss.i1)
if (k.ne.7) print *,'test02_1 ng'
k=1+arr(.aaa.(ji1.eqv.ji3).sss.i1)+5
if (k.ne.13) print *,'test02_2 ng'
k=arr(.aaa.(ji1.eqv.ji3).sss.i1)+i5
if (k.ne.12) print *,'test02_3 ng'
k=arr((.aaa.(ji1.eqv.ji3)).sss.i1)+i5
if (k.ne.12) print *,'test02_4 ng'
k=arr(.aaa.(ji1.eqv.ji3.sss.i1))+i5
if (k.ne.8) print *,'test02_5 ng'
k=arr((.aaa.(ji1.eqv.ji3).sss.i1)+i1)+5
if (k.ne.13) print *,'test02_6 ng'
k=arr(.aaa.i4.sss.i1)
if (k.ne.7) print *,'test02_7 ng'
k=arr(.bbb.i6)
if (k.ne.7) print *,'test02_8 ng'
k=arr(.bbb.(ji7.or.ji1))
if (k.ne.7) print *,'test02_9 ng'
k=arr(.bbb.(ji7.or.ji1))
if (k.ne.7) print *,'test02_10 ng'
end subroutine

 function ifun05(i,j)
  character*(*),intent(in) :: i,j
  ifun05=len(i)-len(j)
 end function

 function ifun04(i,j)
  character*(*),intent(in) :: i,j
  ifun04=len(i)+len(j)
 end function

 function ifa(i)
 ifa=i
 end

 function ifunx1(j)
  integer,intent(in) :: j
    ifunx1=j-1
  if (j.ne.6)ifunx1=1
  ifunx1=ifunx1+1
 end function
 function ifun01(i,j)
  integer,intent(in),optional :: i,j
  if (.not.present(i)) then
    ifun01=j-1
  else
    ifun01=i+j
    if (i.ne.5)ifun01=1
  end if
  if (j.ne.6)ifun01=1
  ifun01=ifun01+1
 end function
 function ifun03(i,j)
  integer,intent(in),optional :: i,j
  if (.not.present(i)) then
    ifun03=j
  else
    ifun03=i+j
    if (i.ne.5)ifun03=1
  end if
  if (j.ne.4)ifun03=1
  ifun03=ifun03+1
 end function
 function ifun02(i,j)
  integer,intent(in) :: i,j
  ifun02=i+j
  if (i.ne.5)ifun02=1
  if (j.ne.1)ifun02=1
 end function
 function ifunx3(j)
  integer,intent(in) :: j
    ifunx3=j
  if (j.ne.4)ifunx3=1
  ifunx3=ifunx3+1
 end function

subroutine test01()
interface operator(.aaa.)
 function ifun03(i,j)
  integer,intent(in) :: i,j
 end function
 function ifunx3(j)
  integer,intent(in) :: j
 end function
end interface
interface operator(.sss.)
 function ifun02(i,j)
  integer,intent(in) :: i,j
 end function
end interface
interface operator(.bbb.)
 function ifun01(i,j)
  integer,intent(in) :: i,j
 end function
 function ifunx1(j)
  integer,intent(in) :: j
 end function
end interface
interface operator(**   )
 function ifun04(i,j)
  character*(*),intent(in) :: i,j
 end function
end interface
interface operator(*   )
 function ifun05(i,j)
  character*(*),intent(in) :: i,j
 end function
end interface
integer arr(10),a(10)
character ji1*1,ji3*3,ji7*7
data ji1,ji3,ji7 /'a','abc','1234567'/
a=(/1,2,3,4,5,6,7,8,9,10/)
arr=(/2,3,4,5,6,7,8,9,10,11/)
i1=1;i3=3;i4=4;i5=5;i6=6;i7=7;
k=arr(.aaa.(ji1**   ji3).sss.i1)
if (k.ne.7) print *,'test02_1 ng'
k=1+arr(.aaa.(ji1**   ji3).sss.i1)+5
if (k.ne.13) print *,'test02_2 ng'
k=arr(.aaa.(ji1**   ji3).sss.i1)+i5
if (k.ne.12) print *,'test02_3 ng'
k=arr((.aaa.(ji1**   ji3)).sss.i1)+i5
if (k.ne.12) print *,'test02_4 ng'
k=arr(.aaa.(ji1**   ji3.sss.i1))+i5
if (k.ne.8) print *,'test02_5 ng'
k=arr((.aaa.(ji1**   ji3).sss.i1)+i1)+5
if (k.ne.13) print *,'test02_6 ng'
k=arr(.aaa.i4.sss.i1)
if (k.ne.7) print *,'test02_7 ng'
k=arr(.bbb.i6)
if (k.ne.7) print *,'test02_8 ng'
k=arr(.bbb.(ji7*   ji1))
if (k.ne.7) print *,'test02_9 ng'
k=arr(.bbb.(ji7*   ji1))
if (k.ne.7) print *,'test02_10 ng'
end subroutine
