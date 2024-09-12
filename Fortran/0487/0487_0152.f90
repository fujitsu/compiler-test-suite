subroutine s(k1)
integer::a(10),b(3,2)
write(1,*) is_contiguous(a(1:10:k1))
write(1,*) is_contiguous(a(k1:1))
write(1,*) is_contiguous(b(1:3:2,1:1))
end
logical k
call s(-1)
call s(1)
call s(2)
rewind 1
read(1,*) k;if (k) print *,1001
read(1,*) k;if (.not.k) print *,1002
read(1,*) k;if (k) print *,1003
read(1,*) k;if (.not.k) print *,1021
read(1,*) k;if (.not.k) print *,1022
read(1,*) k;if (k) print *,1023
read(1,*) k;if (k) print *,1031
read(1,*) k;if (.not.k) print *,1032
read(1,*) k;if (k) print *,1033
print *,'pass'
end
