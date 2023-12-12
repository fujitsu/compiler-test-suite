subroutine s1
integer:: k(4),kk(4)
integer::     mm(4),nn(4)
integer,parameter::p(4)=reshape([1,2,3,4],[4])*10
k=p
kk=k
forall (n=1:3)
kk(n+1)=kk(n)+1
end forall

nn=0
mm=k
do n=1,3
nn(n)=mm(n)+1
end do
do n=1,3
mm(n+1)=nn(n)
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

