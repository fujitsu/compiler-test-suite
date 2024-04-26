volatile k
integer*4  k
integer  j,i
print *,'test start'
call sub(i)
call sub(j)
if (i==j) then
  k=1
else
  k=0
endif
if (k==1) then
  print *,'test OK'
else
  print *,'test NG'
endif
print *,'test end'
end

subroutine sub(a)
integer a
  a=2
end
