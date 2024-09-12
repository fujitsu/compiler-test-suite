subroutine s(aa,bb,cc,dd,mask)
complex b(2)/2*0/,bb(2)
real    a(2)/2*0/,aa(2)
complex ::c(2)=0,cc(2)
real    ::d(2)=0,dd(2)
logical mask(2)
where (mask)
a=-a
b=-b
c=-c
d=-d
aa=-aa
bb=-bb
cc=-cc
dd=-dd
end where
call s1(a)
call s2(b)
call s1(aa)
call s2(bb)
call s3(c)
call s4(d)
call s3(cc)
call s4(dd)
end
logical mask(2)
complex bb(2)/2*0/
real    aa(2)/2*0/
complex ::cc(2)=0
real    ::dd(2)=0
mask=.true.
call s(aa,bb,cc,dd,mask)
print *,'pass'
end
subroutine s1(a)
dimension a(2)
write(1,'("a=",z8.8)') a
end
subroutine s2(b)
complex b(2)
write(1,'("b=",z8.8)') b
end
subroutine s3(c)
complex,dimension(2):: c
write(1,'("c=",z8.8)') c
end
subroutine s4(d)
dimension d(2)
write(1,'("d=",z8.8)') d
end

