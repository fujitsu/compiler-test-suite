subroutine s(aa,bb,cc,dd)
complex b/0/,bb
real    a/0/,aa
complex ::c(2)=0,cc(2)
real    ::d(2)=0,dd(2)
call s1s(-a)
call s2s(-b)
call s1s(-aa)
call s2s(-bb)
call s3(-c)
call s4(-d)
call s3(-cc)
call s4(-dd)
end
complex bb/0/
real    aa/0/
complex ::cc(2)=0
real    ::dd(2)=0
call s(aa,bb,cc,dd)
print *,'pass'
end
subroutine s1(a)
dimension a(2)
write(21,'("a=",z8.8)') a
end
subroutine s2(b)
complex b(2)
write(21,'("b=",z8.8)') b
end
subroutine s3(c)
complex c
dimension c(2)
write(21,'("c=",z8.8)') c
end
subroutine s4(d)
dimension d(2)
write(21,'("d=",z8.8)') d
end
subroutine s1s(a)
write(21,'("a=",z8.8)') a
end
subroutine s2s(b)
complex b
write(21,'("b=",z8.8)') b
end
subroutine s3s(c)
complex c
write(21,'("c=",z8.8)') c
end
subroutine s4s(d)
write(21,'("d=",z8.8)') d
end
