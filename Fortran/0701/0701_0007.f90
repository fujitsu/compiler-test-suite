call test02()
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
interface operator(*)
 function ifun07(i,j)
  integer,intent(in) :: i
  character*(*),intent(in) :: j
 end function
end interface
integer arr(10),a(10)
jfa(ii)=ii
a=(/1,2,3,4,5,6,7,8,9,10/)
arr=(/2,3,4,5,6,7,8,9,10,11/)
i1=1;i3=3;i4=4;i5=5;i6=6;i7=7;
k=arr(.aaa.(1+3*'aaa').sss.1)
if (k.ne.7) print *,'test02_1 ng'
k=1+arr(.aaa.(1+3*'aaa').sss.1)+5
if (k.ne.13) print *,'test02_2 ng'
k=arr(.aaa.(1+3*'aaa').sss.1)+5
if (k.ne.12) print *,'test02_3 ng'
k=arr((.aaa.(1+3*'aaa')).sss.1)+5
if (k.ne.12) print *,'test02_4 ng'
k=arr(.aaa.(1+3*'aaa'.sss.1))+5
if (k.ne.8) print *,'test02_5 ng'
k=arr((.aaa.(1+3*'aaa').sss.1)+1)+5
if (k.ne.13) print *,'test02_6 ng'
k=arr(.aaa.(4*'aaaa').sss.1)
if (k.ne.7) print *,'test02_7 ng'
k=arr(.bbb.(6*'aaaaaa'))
if (k.ne.7) print *,'test02_8 ng'
k=arr(.bbb.(7-1*'a'))
if (k.ne.7) print *,'test02_9 ng'
k=arr(.bbb.(7-1*'a'))
if (k.ne.7) print *,'test02_10 ng'
k=arr(.aaa.(i1+i3*'aaa').sss.i1)
if (k.ne.7) print *,'test02_11 ng'
k=1+arr(.aaa.(i1+i3*'aaa').sss.i1)+i5
if (k.ne.13) print *,'test02_12 ng'
k=arr(.aaa.(i1+i3*'aaa').sss.i1)+i5
if (k.ne.12) print *,'test02_13 ng'
k=arr((.aaa.(i1+i3*'aaa')).sss.i1)+i5
if (k.ne.12) print *,'test02_14 ng'
k=arr(.aaa.(i1+i3*'aaa'.sss.i1))+i5
if (k.ne.8) print *,'test02_15 ng'
k=arr((.aaa.(i1+i3*'aaa').sss.i1)+i1)+i5
if (k.ne.13) print *,'test02_16 ng'
k=arr(.aaa.(i4*'aaaa').sss.i1)
if (k.ne.7) print *,'test02_17 ng'
k=arr(.bbb.(i6*'aaaaaa'))
if (k.ne.7) print *,'test02_18 ng'
k=arr(.bbb.(i7-i1*'a'))
if (k.ne.7) print *,'test02_19 ng'
k=arr(.bbb.(i7-i1*'a'))

if (k.ne.7) print *,'test02_20 ng'
k=arr(.aaa.(a(1)+a(3)*'aaa').sss.a(1))
if (k.ne.7) print *,'test02_21 ng'
k=1+arr(.aaa.(a(1)+a(3)*'aaa').sss.a(1))+a(5)
if (k.ne.13) print *,'test02_22 ng'
k=arr(.aaa.(a(1)+a(3)*'aaa').sss.a(1))+a(5)
if (k.ne.12) print *,'test02_23 ng'
k=arr((.aaa.(a(1)+a(3)*'aaa')).sss.a(1))+a(5)
if (k.ne.12) print *,'test02_24 ng'
k=arr(.aaa.(a(1)+a(3)*'aaa'.sss.a(1)))+a(5)
if (k.ne.8) print *,'test02_25 ng'
k=arr((.aaa.(a(1)+a(3)*'aaa').sss.a(1))+a(1))+a(5)
if (k.ne.13) print *,'test02_26 ng'
k=arr(.aaa.(a(4)*'aaaa').sss.a(1))
if (k.ne.7) print *,'test02_27 ng'
k=arr(.bbb.(a(6)*'aaaaaa'))
if (k.ne.7) print *,'test02_28 ng'
k=arr(.bbb.(a(7)-a(1)*'a'))
if (k.ne.7) print *,'test02_29 ng'
k=arr(.bbb.(a(7)-a(1)*'a'))
if (k.ne.7) print *,'test02_30 ng'
k=arr(.aaa.(ifa(1)+ifa(3)*'aaa').sss.ifa(1))
if (k.ne.7) print *,'test02_31 ng'
k=1+arr(.aaa.(ifa(1)+ifa(3)*'aaa').sss.a(1))+ifa(5)
if (k.ne.13) print *,'test02_32 ng'
k=arr(.aaa.(ifa(1)+ifa(3)*'aaa').sss.ifa(1))+ifa(5)
if (k.ne.12) print *,'test02_33 ng'
k=arr((.aaa.(ifa(1)+ifa(3)*'aaa')).sss.ifa(1))+ifa(5)
if (k.ne.12) print *,'test02_34 ng'
k=arr(.aaa.(ifa(1)+ifa(3)*'aaa'.sss.ifa(1)))+ifa(5)
if (k.ne.8) print *,'test02_35 ng'
k=arr((.aaa.(ifa(1)+ifa(3)*'aaa').sss.ifa(1))+ifa(1))+ifa(5)
if (k.ne.13) print *,'test02_36 ng'
k=arr(.aaa.(ifa(4)*'aaaa').sss.ifa(1))
if (k.ne.7) print *,'test02_37 ng'
k=arr(.bbb.(ifa(6)*'aaaaaa'))
if (k.ne.7) print *,'test02_38 ng'
k=arr(.bbb.(ifa(7)-ifa(1)*'a'))
if (k.ne.7) print *,'test02_39 ng'
k=arr(.bbb.(ifa(7)-ifa(1)*'a'))
if (k.ne.7) print *,'test02_40 ng'
k=arr(.aaa.(jfa(1)+jfa(3)*'aaa').sss.jfa(1))
if (k.ne.7) print *,'test02_41 ng'
k=1+arr(.aaa.(jfa(1)+jfa(3)*'aaa').sss.a(1))+jfa(5)
if (k.ne.13) print *,'test02_42 ng'
k=arr(.aaa.(jfa(1)+jfa(3)*'aaa').sss.jfa(1))+jfa(5)
if (k.ne.12) print *,'test02_43 ng'
k=arr((.aaa.(jfa(1)+jfa(3)*'aaa')).sss.jfa(1))+jfa(5)
if (k.ne.12) print *,'test02_44 ng'
k=arr(.aaa.(jfa(1)+jfa(3)*'aaa'.sss.jfa(1)))+jfa(5)
if (k.ne.8) print *,'test02_45 ng'
k=arr((.aaa.(jfa(1)+jfa(3)*'aaa').sss.jfa(1))+jfa(1))+jfa(5)
if (k.ne.13) print *,'test02_46 ng'
k=arr(.aaa.(jfa(4)*'aaaa').sss.jfa(1))
if (k.ne.7) print *,'test02_47 ng'
k=arr(.bbb.(jfa(6)*'aaaaaa'))
if (k.ne.7) print *,'test02_48 ng'
k=arr(.bbb.(jfa(7)-jfa(1)*'a'))
if (k.ne.7) print *,'test02_49 ng'
k=arr(.bbb.(jfa(7)-jfa(1)*'a'))
if (k.ne.7) print *,'test02_50 ng'
k=arr(.aaa.(int(1)+int(3)*'aaa').sss.int(1))
if (k.ne.7) print *,'test02_51 ng'
k=1+arr(.aaa.(int(1)+int(3)*'aaa').sss.a(1))+int(5)
if (k.ne.13) print *,'test02_52 ng'
k=arr(.aaa.(int(1)+int(3)*'aaa').sss.int(1))+int(5)
if (k.ne.12) print *,'test02_53 ng'
k=arr((.aaa.(int(1)+int(3)*'aaa')).sss.int(1))+int(5)
if (k.ne.12) print *,'test02_54 ng'
k=arr(.aaa.(int(1)+int(3)*'aaa'.sss.int(1)))+int(5)
if (k.ne.8) print *,'test02_55 ng'
k=arr((.aaa.(int(1)+int(3)*'aaa').sss.int(1))+int(1))+int(5)
if (k.ne.13) print *,'test02_56 ng'
k=arr(.aaa.(int(4)*'aaaa').sss.int(1))
if (k.ne.7) print *,'test02_57 ng'
k=arr(.bbb.(int(6)*'aaaaaa'))
if (k.ne.7) print *,'test02_58 ng'
k=arr(.bbb.(int(7)-int(1)*'a'))
if (k.ne.7) print *,'test02_59 ng'
k=arr(.bbb.(int(7)-int(1)*'a'))
if (k.ne.7) print *,'test02_60 ng'
k=arr(.aaa.(iat(1)+iat(3)*'aaa').sss.iat(1))
if (k.ne.7) print *,'test02_61 ng'
k=1+arr(.aaa.(iat(1)+iat(3)*'aaa').sss.a(1))+iat(5)
if (k.ne.13) print *,'test02_62 ng'
k=arr(.aaa.(iat(1)+iat(3)*'aaa').sss.iat(1))+iat(5)
if (k.ne.12) print *,'test02_63 ng'
k=arr((.aaa.(iat(1)+iat(3)*'aaa')).sss.iat(1))+iat(5)
if (k.ne.12) print *,'test02_64 ng'
k=arr(.aaa.(iat(1)+iat(3)*'aaa'.sss.iat(1)))+iat(5)
if (k.ne.8) print *,'test02_65 ng'
k=arr((.aaa.(iat(1)+iat(3)*'aaa').sss.iat(1))+iat(1))+iat(5)
if (k.ne.13) print *,'test02_66 ng'
k=arr(.aaa.(iat(4)*'aaaa').sss.iat(1))
if (k.ne.7) print *,'test02_67 ng'
k=arr(.bbb.(iat(6)*'aaaaaa'))
if (k.ne.7) print *,'test02_68 ng'
k=arr(.bbb.(iat(7)-iat(1)*'a'))
if (k.ne.7) print *,'test02_69 ng'
k=arr(.bbb.(iat(7)-iat(1)*'a'))
if (k.ne.7) print *,'test02_70 ng'
contains
 function iat(i)
 iat=i
 end function

end subroutine

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
 function ifunx3(j)
  integer,intent(in) :: j
    ifunx3=j
  if (j.ne.4)ifunx3=1
  ifunx3=ifunx3+1
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

 function ifun07(i,j)
  integer,intent(in) :: i
  character*(*),intent(in) :: j
  if (i.eq.len(j)) then
    ifun07 = i
   else 
    ifun07=99
   end if
 end function
