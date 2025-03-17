call sub(1)
call sub(2)
print *,'pass'
end
subroutine sub(i)
integer a(10000)
save a
if (i==1)then
  a(1)=100
  if (a(1)/=100) print *,'error'
else 
  a(1)=a(1)+1
  if (a(1)/=101)print *,'error'
endif
end
