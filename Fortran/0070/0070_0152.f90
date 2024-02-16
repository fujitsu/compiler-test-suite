subroutine s
integer:: x
integer:: y(2,3)
save x,y
!$omp threadprivate(x,y)
integer::b(2,3),c(2,3),e(2,3)
integer,allocatable::a
character(2)::d(2,3)
allocate(a)
call s1(2,b,a,3,c,d,e)
call s2(2,b,a,3,c,d,e)
call s3(2,b,a,3,c,d,e)
contains
subroutine s1(i,b,a,j,c,d,e)
integer,allocatable::a
integer         :: b(i:j,j:j+2),c(2,3),e(:,:)
character(*)::d(:,:)
namelist /nam/ b,a,x,c,y,d,e
b=reshape([1,2,3,4,5,6],[2,3])
c=reshape([1,2,3,4,5,6],[2,3])
y=reshape([1,2,3,4,5,6],[2,3])
e=reshape([1,2,3,4,5,6],[2,3])
d=reshape(['11','22','33','44','55','66'],[2,3])
a=5
x=6
write(1,nam)
b=100+reshape([1,2,3,4,5,6],[2,3])
c=100+reshape([1,2,3,4,5,6],[2,3])
y=100+reshape([1,2,3,4,5,6],[2,3])
e=100+reshape([1,2,3,4,5,6],[2,3])
d=reshape(['aa','bb','cc','dd','ee','ff'],[2,3])
a=105
x=106
write(2,nam)
end subroutine
subroutine s2(i,b,a,j,c,d,e)
integer         :: b(i:j,j:j+2),c(2,3),e(:,:)
character(*)::d(:,:)
namelist /nam/ b,a,x,c,y,d,e
integer,allocatable::a
!$omp parallel
e=reshape([1,2,3,4,5,6],[2,3])+10
d=reshape(['11','22','33','44','55','66'],[2,3])
b=reshape([1,2,3,4,5,6],[2,3])+10
c=reshape([1,2,3,4,5,6],[2,3])+10
y=reshape([1,2,3,4,5,6],[2,3])+10
a=6
x=7
write(1,nam)
b=100+reshape([1,2,3,4,5,6],[2,3])+10
c=100+reshape([1,2,3,4,5,6],[2,3])+10
y=100+reshape([1,2,3,4,5,6],[2,3])+10
e=100+reshape([1,2,3,4,5,6],[2,3])+10
d=reshape(['aa','bb','cc','dd','ee','ff'],[2,3])
a=106
x=107
write(2,nam)
!$omp end parallel
end subroutine
subroutine s3(i,b,a,j,c,d,e)
character(*)::d(:,:)
integer,allocatable::a
integer         :: b(i:j,j:j+2),c(2,3),e(:,:)
namelist /nam/ b,a,x,c,y,e,d
!$omp parallel
do k=i,2
b=reshape([1,2,3,4,5,6],[2,3])+20
c=reshape([1,2,3,4,5,6],[2,3])+20
e=reshape([1,2,3,4,5,6],[2,3])+20
d=reshape(['11','22','33','44','55','66'],[2,3])
y=reshape([1,2,3,4,5,6],[2,3])+20
a=7
x=8
write(1,nam)
b=100+reshape([1,2,3,4,5,6],[2,3])+20
c=100+reshape([1,2,3,4,5,6],[2,3])+20
y=100+reshape([1,2,3,4,5,6],[2,3])+20
e=100+reshape([1,2,3,4,5,6],[2,3])+20
d=reshape(['aa','bb','cc','dd','ee','ff'],[2,3])
a=107
x=108
write(2,nam)
end do
!$omp end parallel
end subroutine
end
integer:: b(2,3),a,x,c(2,3),y(2,3),e(2,3)
!$omp threadprivate(b,a,x,c,y)
character(2)::d(2,3)
open(1,delim='quote')
open(2,delim='quote')
call omp_set_num_threads(1)
call s
call chk(d,e)
print *,'pass'
contains
subroutine chk(d,e)
integer,save:: b(2,3),a,x,c(2,3),y(2,3)
integer:: e(:,:)
character(*)::d(:,:)
!$omp threadprivate(b,a,x,c,y)
namelist /nam/b,a,x,c,y,e,d
rewind 1
rewind 2
do k=1,1
b=100+reshape([1,2,3,4,5,6],[2,3])+20
c=100+reshape([1,2,3,4,5,6],[2,3])+20
y=100+reshape([1,2,3,4,5,6],[2,3])+20
e=100+reshape([1,2,3,4,5,6],[2,3])+20
d=reshape(['aa','bb','cc','dd','ee','ff'],[2,3])
a=107
x=108
read(1,nam)
if (x/=6) print *,100,x,k
if (a/=5) print *,101,a,k
if (any(b/=reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
if (any(c/=reshape([1,2,3,4,5,6],[2,3])))print *,102,c,k
if (any(y/=reshape([1,2,3,4,5,6],[2,3])))print *,102,y,k
if (any(e/=reshape([1,2,3,4,5,6],[2,3])))print *,102,y,k
if (any(d/=reshape(['11','22','33','44','55','66'],[2,3]))) print *,901
d=''
e=0
b=100+reshape([1,2,3,4,5,6],[2,3])+20
c=100+reshape([1,2,3,4,5,6],[2,3])+20
y=100+reshape([1,2,3,4,5,6],[2,3])+20
a=107
x=108
read(1,nam)
if (x/=7) print *,100,a,k
if (a/=6) print *,101,a,k
if (any(b/=10+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
if (any(c/=10+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
if (any(y/=10+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
if (any(e/=10+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
if (any(d/=reshape(['11','22','33','44','55','66'],[2,3]))) print *,901
d=''
e=0
b=100+reshape([1,2,3,4,5,6],[2,3])+20
c=100+reshape([1,2,3,4,5,6],[2,3])+20
y=100+reshape([1,2,3,4,5,6],[2,3])+20
a=107
x=108
read(1,nam)
if (x/=8) print *,100,a,k
if (a/=7) print *,101,a,k
if (any(b/=20+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
if (any(c/=20+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
if (any(y/=20+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
if (any(e/=20+reshape([1,2,3,4,5,6],[2,3])))print *,102,b,k
if (any(d/=reshape(['11','22','33','44','55','66'],[2,3]))) print *,901
d=''
e=0
b=100+reshape([1,2,3,4,5,6],[2,3])+20
c=100+reshape([1,2,3,4,5,6],[2,3])+20
y=100+reshape([1,2,3,4,5,6],[2,3])+20
a=107
x=108
read(2,nam)
if (x/=106) print *,1100,x,k
if (a/=105) print *,1101,a,k
if (any(b/=100+reshape([1,2,3,4,5,6],[2,3])))print *,1102,b,k
if (any(c/=100+reshape([1,2,3,4,5,6],[2,3])))print *,1102,b,k
if (any(y/=100+reshape([1,2,3,4,5,6],[2,3])))print *,1102,b,k
if (any(e/=100+reshape([1,2,3,4,5,6],[2,3])))print *,1102,b,k
if (any(d/=reshape(['aa','bb','cc','dd','ee','ff'],[2,3]))) print *,902
b=100+reshape([1,2,3,4,5,6],[2,3])+20
c=100+reshape([1,2,3,4,5,6],[2,3])+20
y=100+reshape([1,2,3,4,5,6],[2,3])+20
d=''
e=0
a=107
x=108
read(2,nam)
if (x/=107) print *,1110,x,k
if (a/=106) print *,1111,a,k
if (any(b/=110+reshape([1,2,3,4,5,6],[2,3])))print *,2102,b,k
if (any(c/=110+reshape([1,2,3,4,5,6],[2,3])))print *,2102,b,k
if (any(y/=110+reshape([1,2,3,4,5,6],[2,3])))print *,2102,b,k
if (any(d/=reshape(['aa','bb','cc','dd','ee','ff'],[2,3]))) print *,902
b=100+reshape([1,2,3,4,5,6],[2,3])+20
c=100+reshape([1,2,3,4,5,6],[2,3])+20
y=100+reshape([1,2,3,4,5,6],[2,3])+20
a=107
x=108
d=''
e=0
read(2,nam)
if (x/=108) print *,3100,x,k
if (a/=107) print *,3101,a,k
if (any(b/=120+reshape([1,2,3,4,5,6],[2,3])))print *,3102,b,k
if (any(c/=120+reshape([1,2,3,4,5,6],[2,3])))print *,3102,b,k
if (any(y/=120+reshape([1,2,3,4,5,6],[2,3])))print *,3102,b,k
if (any(d/=reshape(['aa','bb','cc','dd','ee','ff'],[2,3]))) print *,902
end do
end subroutine
end
