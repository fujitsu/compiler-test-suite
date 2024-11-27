do i=1,4
call sub(*1,*2,*3,i)
if (i/=4)write(6,*) "NG"; cycle
1 continue
if (i/=1)write(6,*) "NG"; cycle
2 continue
if (i/=2)write(6,*) "NG"; cycle
3 continue
if (i/=3)write(6,*) "NG"; cycle
end do

do i=1,4
call ent1(*11,*12,*13,i)
if (i/=4)write(6,*) "NG"; cycle
11 continue
if (i/=1)write(6,*) "NG"; cycle
12 continue
if (i/=2)write(6,*) "NG"; cycle
13 continue
if (i/=3)write(6,*) "NG"; cycle
end do

do i=1,4
call ent2(*21,*22,*23,i)
if (i/=4)write(6,*) "NG"; cycle
21 continue
if (i/=1)write(6,*) "NG"; cycle
22 continue
if (i/=2)write(6,*) "NG"; cycle
23 continue
if (i/=3)write(6,*) "NG"; cycle
end do

do i=1,4
call ent3(*31,*32,*33,i)
cycle
31 continue
write(6,*) "NG"; cycle
32 continue
write(6,*) "NG"; cycle
33 continue
write(6,*) "NG"; cycle
end do

do i=1,4
call ent4(*41,*42,*43,i)
cycle
41 continue
write(6,*) "NG"; cycle
42 continue
write(6,*) "NG"; cycle
43 continue
write(6,*) "NG"; cycle
end do

assign 101 to j
goto j
100 write(6,*) "NG"
101 continue

do i=1,4
select case(i)
case (1)
assign 201 to j
case (2)
assign 202 to j
case (3)
assign 203 to j
case (4)
assign 204 to j
end select
goto j
200 write(6,*) "NG"
201 continue
if (i/=1)write(6,*) "NG";cycle
202 continue
if (i/=2)write(6,*) "NG";cycle
203 continue
if (i/=3)write(6,*) "NG";cycle
204 continue
if (i/=4)write(6,*) "NG";cycle
end do

print *,'pass'
end
subroutine sub(*,*,*,i)
return i
entry ent1(*,*,*,i)
return i
entry ent2(*,*,*,i)
return i
entry ent3(*,*,*,i)
return 
entry ent4(*,*,*,i)
end
