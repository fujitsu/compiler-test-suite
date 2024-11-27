integer :: i,j,a
integer,dimension(6)::num1=(/1,4,13,16,35,46/)
integer,dimension(4)::num2=(/4,17,28,44/)
i = 1
j = 1
a= 0
do while (i.LE.6 .and. j.LE.4 )
   if (num1(i).EQ.num2(j) ) then
      a = a + 1
      i = i + 1
      j = j + 1
   elseif (num1(i).LT.num2(j) ) then
      i = i + 1
   else
      j = j + 1
   endif
enddo
if (a/=1)print *,'error'
print *,'pass'
end
