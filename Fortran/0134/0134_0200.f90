program main
integer k
write(70,*)loc(k)
call s1
call s2
call s3
print *,'pass'
end
recursive subroutine s1
integer k1
save
write(70,*)loc(k1)
end
recursive subroutine s2
integer k2
write(70,*)loc(k2)
end
subroutine s3
integer k3
write(70,*)loc(k3)
end
