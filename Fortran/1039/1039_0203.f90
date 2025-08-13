subroutine s1
parameter (i=2,j=3)
implicit real(8)(i,j)
parameter (ii=4,jj=5)
complex z
if (kind((i,j))/=4)write(6,*) "NG"
if (kind((ii,jj))/=8)write(6,*) "NG"
write(36,*) (i,j)
write(36,*) (ii,jj)
rewind 36
read(36,*) z
if(abs(z-(i,j))>0.0001)write(6,*) "NG"
read(36,*) z
if(abs(z-(ii,jj))>0.0001)write(6,*) "NG"
end
subroutine s2
parameter (i=2,j=3)
complex ss
ss(ii,jj)=(i,j)+cmplx(ii,jj)
if (abs(ss(i,j)-(i,j)-(i,j))>0.000001)write(6,*) "NG"
end
subroutine s3(k)
parameter (i=2,j=3)
select case (k)
case (i,j)
  n=1
end select
if (n/=1)write(6,*) "NG"
end
subroutine s4
parameter (i=2,j=3)
dimension a(i,j)
common /aaa/ b(i,j)
target       c(i,j)
call s4b(i,j)
if (any(shape(a)/=(/i,j/)))write(6,*) "NG"
if (any(shape(b)/=(/i,j/)))write(6,*) "NG"
if (any(shape(c)/=(/i,j/)))write(6,*) "NG"
contains
subroutine s4b(i1,i2)
if (i1/=2)write(6,*) "NG"
if (i2/=3)write(6,*) "NG"
end subroutine 
end
subroutine s5
parameter (i=2,j=1)
character(i,j) aa
character(2,1) bb
if (len(aa)/=2)write(6,*) "NG"
if (len(bb)/=2)write(6,*) "NG"
end
subroutine s6
parameter (x=12)
1 format(x,x)
if (abs((x,x)-(12,12))>0.0001)write(6,*) "NG"
end
call s1
call s2
call s3(2)
call s3(3)
call s4
call s5
call s6
print *,'pass'
end
