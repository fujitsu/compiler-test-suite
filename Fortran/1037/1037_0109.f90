integer j(2)
i=2
j=(/11,12/)
call sub1((i),i)
call sub2((j),j)
print *,'pass'
end
subroutine sub1(i1,i2)
if (loc(i1)==loc(i2))then
  print *,'error-11'
endif
if (i1/=2)print *,'error-12'
if (i2/=2)print *,'error-13'
end
subroutine sub2(i1,i2)
integer,dimension(2):: i1,i2
if (loc(i1)==loc(i2))then
  print *,'error-21'
endif
if (i1(1)/=11)print *,'error-21'
if (i1(2)/=12)print *,'error-22'
if (i2(1)/=11)print *,'error-23'
if (i2(2)/=12)print *,'error-24'
end
