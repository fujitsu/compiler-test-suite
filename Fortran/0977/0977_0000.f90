subroutine s
i=1
call s21((i))
if (i/=1)write(6,*) "NG"
i=1
call s11((i))
if (i/=1)write(6,*) "NG"
call s00(i)
contains
subroutine s21(i)
write(1,*)'s21: ',i,loc(i)
end subroutine
end
subroutine s11(i)
write(1,*)'s11: ',i,loc(i)
end
subroutine s00(i)
write(1,*)'s00: ',i,loc(i)
end
call s
print *,'pass'
end


