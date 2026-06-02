call test01()
print *,'pass'
end

subroutine test01()
type ty1
integer,pointer,dimension(:) :: ip
endtype 
type (ty1) :: str(10)
integer,target ,dimension(10):: it
integer arr(10),brr(10)
i=100
iw=100
ii=0
jj=0
kk=0
it=(/1,2,3,4,5,6,7,8,9,10/)
forall (i=1:10,.true.)
kk=kk+1+i-i
arr(i)=kk+i-i+i
brr(i)=i
str(i)%ip=>it
forall (j=1:10,i.eq.1)
ii=ii+1
end forall
forall (j=1:10,.true.)
jj=jj+1
end forall
end forall
if (ii.ne.1) write(6,*) "NG"
if (jj.ne.1) write(6,*) "NG"
if (kk.ne.1) write(6,*) "NG"
if (.not.all(arr.eq.(/(jp,jp=2,11)/))) write(6,*) "NG"
if (.not.all(brr.eq.(/(jp,jp=1,10)/))) write(6,*) "NG"
end
