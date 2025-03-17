subroutine sub
write(1,*) 2
rewind 1
read(1,*) j
select case(j)
case (1)
assign 10 to i
case (2)
assign 101 to i
case (3)
assign 12 to i
case (4)
assign 13 to i
case (5)
assign 14 to i
case (6)
assign 15 to i
case (7)
assign 16 to i
case (8)
assign 17 to i
case (9)
assign 18 to i
case (10)
assign 19 to i
end select
goto i
10 write(6,*) "NG";return
12 write(6,*) "NG";return
13 write(6,*) "NG";return
14 write(6,*) "NG";return
15 write(6,*) "NG";return
16 write(6,*) "NG";return
17 write(6,*) "NG";return
18 write(6,*) "NG";return
19 write(6,*) "NG";return
101 end
call sub
print *,'pass'
end
