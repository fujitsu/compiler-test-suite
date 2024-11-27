    GO TO 30
  5 DO 10 I=1,10
     A=1.0
     GO TO 20
if (1.eq.2) then
iiii=iiii
30 endif
  10 end do
  20 CONTINUE
    GO TO 50
if (1.eq.2) then
iiii=iiii
50 endif
    GO TO 60
select case(1)
case (1)
if (1.eq.2) then
iiii=iiii
60 endif
end select
end
