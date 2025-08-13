subroutine sub(j)
select case(j)
case (1)
assign 11 to i
case (2)
assign 12 to i
case (3)
assign 13 to i
case (4)
assign 14 to i
end select
11 format(1h ,'a')
12 format(1h ,'b')
13 format(1h ,'c')
14 format(1h ,'d')
15 format(1h ,'e')
write(2,i)
end
character c
call sub(3)
rewind 2
read(2,'(x ,a)')c
if (c/='c')write(6,*) "NG"
print *,'pass'
end
