subroutine s1
implicit character(len=2,kind=1)(a)
implicit character(len=2,kind=4)(b)
end
call s1
print *,'pass'
end

subroutine pr1(c,k)
character(2)::c
print *,'num:',k
print '(z4.4)',c
print '(4z2.2)',c(1:1),c(2:2)
end

subroutine pr4(c,k)
character(8)::c
print *,'num:',k
print '(z16.16)',c
print '(8z2.2)',c(1:1),c(2:2),c(3:3),c(4:4),c(5:5),c(6:6),c(7:7),c(8:8)
end
