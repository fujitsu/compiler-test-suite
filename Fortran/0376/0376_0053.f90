subroutine s(aa,bb,cc,dd)
complex b/0/,bb
real    a/0/,aa
complex ::c=0,cc
real    ::d=0,dd
call s1(-a)
call s2(-b)
call s1(-aa)
call s2(-bb)
call s3(-c)
call s4(-d)
call s3(-cc)
call s4(-dd)
end
complex bb/0/
real    aa/0/
complex ::cc=0
real    ::dd=0
call s(aa,bb,cc,dd)
print *,'pass'
end
subroutine s1(a)
write(23,'("a=",z8.8)') a
end
subroutine s2(b)
complex b
write(23,'("b=",z8.8)') b
end
subroutine s3(c)
complex:: c
write(23,'("c=",z8.8)') c
end
subroutine s4(d)
write(23,'("d=",z8.8)') d
end
