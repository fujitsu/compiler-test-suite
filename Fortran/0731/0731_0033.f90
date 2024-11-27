integer::j=0
if (ieor(1,j)==1) then
else
  print *,'NG-1'
endif
call sub(j)
end
subroutine sub(j)
if (ieor(1,j)==1) then
else
  print *,'NG-2'
endif
print *,'pass'
end

