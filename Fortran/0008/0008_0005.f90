subroutine s1
integer:: k(4,3),kk(4,3),nn(4,3),mm(4,3)
integer,parameter::p(4,3)=10*reshape([1,2,3,4,5,6,7,8,9,10,11,12],[4,3])
k=p
kk=k
forall (n=1:3)
kk(n+1,:)=kk(n,:)+1
end forall

nn=0
mm=k
do n=1,3
nn(n,:)=mm(n,:)+1
end do
do n=1,3
mm(n+1,:)=nn(n,:)
end do

if (any(kk/=mm)) then
  print *,101
  print *,kk
  print *,mm
end if

end
call s1
print *,'OK'
end

