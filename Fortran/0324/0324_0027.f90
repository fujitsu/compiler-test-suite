call test01()
call test02()
print *,'pass'
end

subroutine test01()
type ty1
 integer a,b,c
end type
type ty2
 integer ,dimension(5) ::a,b,c
end type
type ty3
 integer a,b(10),c
end type
type(ty1) :: str1
type(ty2) :: str2
type(ty3) :: str3
str1= ty1(1,2,3)
str2= ty2(1,2,3)
str3= ty3(1,2,3)
if (str1%a.ne.1.or.str1%b.ne.2.or.str1%c.ne.3) print *,'err'
if (all(str2%a.ne.1).or.all(str2%b.ne.2).or.all(str2%c.ne.3)) print *,'err'
if (str3%a.ne.1.or.all(str3%b.ne.2).or.str3%c.ne.3) print *,'err'
str1= ty1(int(1),int(2),int(3))
str2= ty2((/(1,i=1,5)/),-(/(-2,i=1,5)/),+(/(+3,i=1,5)/))
str3= ty3(1,(/(2,i=1,10)/),3)
if (str1%a.ne.1.or.str1%b.ne.2.or.str1%c.ne.3) print *,'err'
if (all(str2%a.ne.1).or.all(str2%b.ne.2).or.all(str2%c.ne.3)) print *,'err'
if (str3%a.ne.1.or.all(str3%b.ne.2).or.str3%c.ne.3) print *,'err'
str1= ty1(int(1),int(2),int(3))
str2= ty2((/(i,i=1,5)/),(/(int(i),i=1,5)/),(/(i,i=1,5)/))
str3= ty3(1,(/(i,i=1,10)/),3)
if (str1%a.ne.1.or.str1%b.ne.2.or.str1%c.ne.3) print *,'err'
if (all(str2%a.ne.(/(i,i=1,5)/)).or.all(str2%b.ne.(/(i,i=1,5)/))   &
&    .or.all(str2%c.ne.(/(i,i=1,5)/))) print *,'err'
if (str3%a.ne.1.or.all(str3%b.ne.(/(i,i=1,10)/)).or.str3%c.ne.3) print *,'err'
end

subroutine test02()
type ty1
 integer a,b(10)
end type
type ty2
 integer aa
 type (ty1) :: str
end type
type(ty2) :: s
s=ty2(1,ty1(1,(/1,2,3,4,5,6,7,8,9,10/)))
if (s%aa.ne.1) print *,'err'
end

