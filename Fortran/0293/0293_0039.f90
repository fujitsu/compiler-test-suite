subroutine s1(k1,k2,a1,a2,b1,b2)
integer a1(k1,k2),a2(k1+1,k2+1)
type x
 sequence
 integer x1
 integer x2
end type
type (x)::b1(k1,k2),b2(k1+1,k2+1)
namelist /name/ a1,a2,b1,b2
rewind 1
read (1,name)
call       chk(k1,k2,a1,a2,b1,b2)
read (1,name)
call       chk(k1,k2,a1,a2,b1,b2)
read (1,name)
call       chk(k1,k2,a1,a2,b1,b2)
end
parameter(k1=2,k2=3)
integer a1(k1,k2),a2(k1+1,k2+1)
type x
 sequence
 integer x1
 integer x2
end type
type (x)::b1(k1,k2),b2(k1+1,k2+1)
a1=reshape([1,2,3,4,5,6],[2,3])
a2=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])
b1%x1=reshape([1,2,3,4,5,6],[2,3])+10
b1%x2=reshape([1,2,3,4,5,6],[2,3])+20
b2%x1=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])+30
b2%x2=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])+40
call w
call s1(k1,k2,a1,a2,b1,b2)
a1=0;a2=0;b1%x1=0;b1%x2=0;b2%x1=0;b2%x2=0
print *,'pass'
end
subroutine w
character(*),parameter::r=&
'&NAME A1=1,2,3,4,5,6,A2=1,2,3,4,5,6,7,8,9,10,11,12,&
  &B1%X1=11,12,13,14,15,16,B2%X1=31,32,33,34,35,36,37,38,39,40,41,42,&
  &B1%X2=21,22,23,24,25,26,B2%X2=41,42,43,44,45,46,47,48,49,50,51,52/'
write(1,*) r
write(1,*) r
write(1,*) r
end
subroutine chk(k1,k2,a1,a2,b1,b2)
integer a1(k1,k2),a2(k1+1,k2+1)
type x
 sequence
 integer x1
 integer x2
end type
type (x)::b1(k1,k2),b2(k1+1,k2+1)
if (any(a1/=reshape([1,2,3,4,5,6],[2,3])))print *,102
if (any(a2/=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])))print *,103
if (any(b1%x1/=reshape([1,2,3,4,5,6],[2,3])+10))print *,104
if (any(b1%x2/=reshape([1,2,3,4,5,6],[2,3])+20))print *,105
if (any(b2%x1/=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])+30))print *,106
if (any(b2%x2/=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[3,4])+40))print *,107
a1=0;a2=0;b1%x1=0;b1%x2=0;b2%x1=0;b2%x2=0
end

