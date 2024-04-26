subroutine s1
integer:: a(4:6)
parameter (n1=1,n2=2)
data (a(n1+k+n2),k=1,3)/1,2,3/
if (a(4)/=1) print *,101,a(4)
if (a(5)/=2) print *,102,a(5)
if (a(6)/=3) print *,103,a(6)
end
subroutine s2
integer:: a(4:6)
integer,parameter:: x(2)=[1,2]
data (a(x(1)+k+x(2)),k=1,3)/1,2,3/
if (a(4)/=1) print *,201,a(4)
if (a(5)/=2) print *,202,a(5)
if (a(6)/=3) print *,203,a(6)
end
subroutine s3
integer:: a(7:9)
type y
 integer::y1,y2,y3
end type
type(y),parameter::w=y(1,2,3)
data (a(w%y1+k+w%y2+w%y3),k=1,3)/1,2,3/
if (a(7)/=1) print *,301,a(7)
if (a(8)/=2) print *,302,a(8)
if (a(9)/=3) print *,303,a(9)
end
subroutine s5
integer:: a(4:6)
parameter (n1=1,n2=2)
data (a(ichar(char(2))+n1+k+n2-iachar(achar(2))),k=1,3)/1,2,3/
if (a(4)/=1) print *,501,a(4)
if (a(5)/=2) print *,502,a(5)
if (a(6)/=3) print *,503,a(6)
end
subroutine s6
integer:: a(4:6)
parameter (n1=1,n2=2)
data (a(sum([1,2])+n1+k+n2-sum([1,2])),k=1,3)/1,2,3/
if (a(4)/=1) print *,601,a(4)
if (a(5)/=2) print *,602,a(5)
if (a(6)/=3) print *,603,a(6)
end
subroutine s8
integer:: a(4:6)
parameter (n1=1,n2=2)
data (a(int(n1)+k+int(n2)),k=1,3)/1,2,3/
if (a(4)/=1) print *,801,a(4)
if (a(5)/=2) print *,802,a(5)
if (a(6)/=3) print *,803,a(6)
end
call s1
call s2
call s3
call s5
call s6
call s8
print *,'pass'
end
