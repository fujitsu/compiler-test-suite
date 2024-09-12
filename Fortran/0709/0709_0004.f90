 call s1
 print *,'pass'
 end
subroutine s1
integer(8) a(10)
a=1
call sub((a))
call sub(+a)
call sub(+(a))
end
subroutine sub(i)
integer(8) i(10),j(10)
j=i
end
