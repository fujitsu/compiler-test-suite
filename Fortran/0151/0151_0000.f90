subroutine s1()
integer(8):: x1,x2
integer:: a(2)
x1=loc(a)
block
  asynchronous ::a
x2=loc(a)
end block
if (x1/=x2) print *,101,x1,x2
end
subroutine s2()
integer(8):: x1,x2
integer:: a(2)
x1=loc(a)
block
  volatile     ::a
x2=loc(a)
end block
if (x1/=x2) print *,102,x1,x2
end
subroutine s3()
integer:: a(2),b(2)
a=1
block
  asynchronous ::a
write(1) a
end block
rewind 1
read(1) b
if (any(b/=1)) print *,201,b
end
subroutine s4()
integer:: a(2),b(2)
a=1
block
  volatile     ::a
write(2) a
end block
rewind 2
read(2) b
if (any(b/=1)) print *,202,b
end
call s1
call s2
call s3
call s4
print *,'pass'
end
