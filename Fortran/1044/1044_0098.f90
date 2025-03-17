call s
end
subroutine s
integer,pointer::p(:,:)
allocate(p(2,2))
p=1
call sub(p(:,:))
print *,'pass'
end
subroutine sub(a)
integer a(4)
if (any(a/=1))write(6,*) "NG"
end
