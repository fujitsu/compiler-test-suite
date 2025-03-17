integer,target:: a(5)
integer,pointer:: p(:)
j=1
p=> a
a=(/1,2,3,4,5/)
a(2:5)=p(1:4)
if (any(a/=(/1,1,2,3,4/)))print *,a
a=(/1,2,3,4,5/)
a(2:5)=2+p(1:4)
if (any(a/=(/1,3,4,5,6/)))print *,a
a=(/1,2,3,4,5/)
a(2:5)=int(p(1:4))
if (any(a/=(/1,1,2,3,4/)))print *,a
a=(/1,2,3,4,5/)
a(2:5)=j+1+int(p(1:4))
if (any(a/=(/1,3,4,5,6/)))print *,a
print *,'pass'
end
