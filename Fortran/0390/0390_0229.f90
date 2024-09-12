subroutine s1
assign 1000 to j
do 2000 concurrent(i=1:10)
  goto j
print *,101
2000 continue
1000 continue
end
subroutine s2
assign 1000 to j
do 2000 i=1,10
  goto j
print *,101
2000 continue
1000 continue
end
subroutine s3
assign 1000 to j
  goto j
do 2000 concurrent(i=1:10)
print *,101
1000 continue
2000 continue
end
subroutine s4
assign 1000 to j
  goto j
do 2000 i=1,10
print *,101
1000 continue
2000 continue
end
subroutine s5(k)
if (k==1) then
  assign 1000 to j
  goto j
else if (k==2) then
  assign 2000 to j
else
  assign 3000 to j
endif
do 2000 concurrent(i=1:10)
  goto j
print *,101
3000 continue
2000 continue
1000 continue
end
call s1
call s2
call s5(2)
call s5(3)
print *,'pass'
end
