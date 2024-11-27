integer,pointer:: p(:),pp(:,:)
integer,target  ::t(3)=(/1,2,3/)
integer,target  ::tt(3,3)=reshape((/(i,i=1,9)/),(/3,3/))
p=>t(1:3:2)
i= f(p)
if (i/=1)write(6,*) "NG"
pp=>tt(2:,1:3:2)
i= ff(pp)
if (i/=2)write(6,*) "NG"
print *,'pass'
contains
integer function f(a)
integer:: a(2)
if (a(1)/=1)write(6,*) "NG"
if (a(2)/=3)write(6,*) "NG"
f=1
end function
integer function ff(a)
integer:: a(4)
if (a(1)/=2)write(6,*) "NG"
if (a(2)/=3)write(6,*) "NG"
if (a(3)/=8)write(6,*) "NG"
if (a(4)/=9)write(6,*) "NG"
ff=2
end function
end


