integer  a(3,3),b(3,3)
a=reshape((/(i,i=1,9)/),(/3,3/))
b=transpose(a)
if (any((/b/)/=(/1,4,7,2,5,8,3,6,9/)))write(6,*) "NG"
if (any((/b/)/=(/1,4,7,2,5,8,3,6,9/)))then
print *,b
endif
print *,'pass'
end
