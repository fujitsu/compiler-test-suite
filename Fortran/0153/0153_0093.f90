subroutine s1(k)
block
integer a(3),b(k)
character(k)  aa(3),bb(k)
a=1
b=1
aa='111'
bb='111'
write(1,*)a(3)
write(1,*)b(3)
write(1,*)aa(3)
write(1,*)bb(3)
end block
end
call s1(3)
print *,'pass'
end
