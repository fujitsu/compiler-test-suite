subroutine s1()
block 
  integer:: x1
  dimension x1(2)
  integer:: x2
  dimension x2(2)
  parameter (x2=1)
    x1=x2
    if (x1(1)/=1) print *,101
end block
end
call s1()
print *,'pass'
end
