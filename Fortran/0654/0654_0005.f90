call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
print *,'pass'
end

subroutine test03()
type ty1
 character ,allocatable:: a(:)
end type
type(ty1) :: str(10)
character a(10)
a='a'
where (a.eq.'a')
str=ty1(a)
str=ty1(a(1:10)(1:1))
str=ty1(a(:)(1:1))
str=ty1(a(1:)(1:1))
str=ty1(a//'a')
str=ty1((a))
str=ty1(a(:))
str=ty1((/a/))
str=ty1((/(a,i=1,1)/))
str=str
end where
str=str
end

subroutine test02()
type ty1
 integer ,allocatable:: a(:)
end type
type(ty1) :: str(10)
integer a(10)
a=1
where (a.eq.1)
str=ty1(-a)
str=ty1(+a)
str=ty1((a))
str=ty1(a+0)
str=ty1((/a/))
str=ty1((/(a,i=1,1)/))
str=ty1(int(a))
str=ty1(ifun(a))
str=str
end where
str=str
contains
function ifun(aa) result(ia)
integer ia(10),aa(10)
ia=aa
end function
end

subroutine test01()
type ty1
 integer(kind=1) ,allocatable:: a01(:)
 integer(kind=2) ,allocatable:: a02(:)
 integer(kind=4) ,allocatable:: a03(:)
 integer(kind=8) ,allocatable:: a04(:)
 logical(kind=1) ,allocatable:: a05(:)
 logical(kind=2) ,allocatable:: a06(:)
 logical(kind=4) ,allocatable:: a07(:)
 logical(kind=8) ,allocatable:: a08(:)
 real   (kind=4) ,allocatable:: a09(:)
 real   (kind=8) ,allocatable:: a10(:)
 real   (kind=16),allocatable:: a11(:)
 complex(kind=4) ,allocatable:: a12(:)
 complex(kind=8) ,allocatable:: a13(:)
 complex(kind=16),allocatable:: a14(:)
 character*10    ,allocatable:: a15(:)
end type
type(ty1) :: str1(10),str2(1)
 integer(kind=1) :: b01(1)/1/
 integer(kind=2) :: b02(2)/1,2/
 integer(kind=4) :: b03(3)/1,2,3/
 integer(kind=8) :: b04(4)/1,2,3,4/
 logical(kind=1) :: b05(5)/5*.true./
 logical(kind=2) :: b06(6)/6*.true./
 logical(kind=4) :: b07(7)/7*.true./
 logical(kind=8) :: b08(8)/8*.true./
 real   (kind=4) :: b09(9)/9*1.0/
 real   (kind=8) :: b10(10)/10*1.0/
 real   (kind=16):: b11(11)/11*1.0/
 complex(kind=4) :: b12(12)/12*1.0/
 complex(kind=8) :: b13(13)/13*1.0/
 complex(kind=16):: b14(14)/14*1.0/
 character*10    :: b15(15)/15*'a'/

where((/.true./)) 
 str2=(/ty1(b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15)/)
elsewhere
 str2(1:1)=(/ty1(b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15)/)
endwhere

j=1
where((/(.true.,i=1,10)/)) 
 str1=(/(ty1(b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15),i=1,10)/)
elsewhere
 str1(1:10)=(/(ty1(b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15),i=1,10)/)
 str1(j:10)=(/(ty1(b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15),i=1,10)/)
 str1((/(i,i=1,10)/))=(/(ty1(b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15),i=1,10)/)
 str1(:)=(/(ty1(b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15),i=1,10)/)
endwhere
str1(:)=str1
str2(:)=str2

end

subroutine test04()
type ty1
 character ,allocatable:: a(:)
end type
type(ty1) :: str(10)
character a(10)
a='a'
forall (ii=1:10)
str=ty1(a)
str=ty1(a(1:10)(1:1))
str=ty1(a(:)(1:1))
str=ty1(a(1:)(1:1))
str=ty1(a//'a')
str=ty1((a))
str=ty1(a(:))
str=ty1((/a/))
str=ty1((/(a,i=1,1)/))
str=str
end forall
str=str
end

subroutine test05()
type ty1
 integer ,allocatable:: a(:)
end type
type(ty1) :: str(10)
integer a(10)
a=1
forall(ii=1:10)
str=ty1(-a)
str=ty1(+a)
str=ty1((a))
str=ty1(a+0)
str=ty1((/a/))
str=ty1((/(a,i=1,1)/))
str=ty1(int(a))
str=ty1(ifun(a))
str=str
end forall
str=str
contains
pure function ifun(aa) result(ia)
integer ia(10),aa(10)
intent(in) :: aa
ia=aa
end function
end

subroutine test06()
type ty1
 integer(kind=1) ,allocatable:: a01(:)
 integer(kind=2) ,allocatable:: a02(:)
 integer(kind=4) ,allocatable:: a03(:)
 integer(kind=8) ,allocatable:: a04(:)
 logical(kind=1) ,allocatable:: a05(:)
 logical(kind=2) ,allocatable:: a06(:)
 logical(kind=4) ,allocatable:: a07(:)
 logical(kind=8) ,allocatable:: a08(:)
 real   (kind=4) ,allocatable:: a09(:)
 real   (kind=8) ,allocatable:: a10(:)
 real   (kind=16),allocatable:: a11(:)
 complex(kind=4) ,allocatable:: a12(:)
 complex(kind=8) ,allocatable:: a13(:)
 complex(kind=16),allocatable:: a14(:)
 character*10    ,allocatable:: a15(:)
end type
type(ty1) :: str1(10),str2(1)
 integer(kind=1) :: b01(1)/1/
 integer(kind=2) :: b02(2)/1,2/
 integer(kind=4) :: b03(3)/1,2,3/
 integer(kind=8) :: b04(4)/1,2,3,4/
 logical(kind=1) :: b05(5)/5*.true./
 logical(kind=2) :: b06(6)/6*.true./
 logical(kind=4) :: b07(7)/7*.true./
 logical(kind=8) :: b08(8)/8*.true./
 real   (kind=4) :: b09(9)/9*1.0/
 real   (kind=8) :: b10(10)/10*1.0/
 real   (kind=16):: b11(11)/11*1.0/
 complex(kind=4) :: b12(12)/12*1.0/
 complex(kind=8) :: b13(13)/13*1.0/
 complex(kind=16):: b14(14)/14*1.0/
 character*10    :: b15(15)/15*'a'/

forall(ii=1:10) 
 str2=(/ty1(b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15)/)
 str2(1:1)=(/ty1(b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15)/)

j=1
 str1=(/(ty1(b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15),i=1,10)/)
 str1(1:10)=(/(ty1(b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15),i=1,10)/)
 str1(j:10)=(/(ty1(b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15),i=1,10)/)
 str1((/(i,i=1,10)/))=(/(ty1(b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15),i=1,10)/)
 str1(:)=(/(ty1(b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15),i=1,10)/)
endforall
str1(:)=str1
str2(:)=str2

end

