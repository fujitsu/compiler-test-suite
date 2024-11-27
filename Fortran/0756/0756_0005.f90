subroutine s1(kk)
integer,intent(out)::kk(*)
n=kk(2)
kk(2)=2
end
integer::kk(2)
kk=1
call s1(kk)
print *,'pass'
end
