 call s1
 print *,'pass'
 end
subroutine s1
integer a(10)
a=1
call sub((a))
end
subroutine sub(i)
integer i(10),j(10)
j=i
end
