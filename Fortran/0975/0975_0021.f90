real(kind=4) :: a(10),b(10)

do i=1,10
 a(i) = i
 b(i) = i + i
enddo


write(6,*) "bofore call subroutin b=",b
call sub(a,b)
write(6,*) "a=",a
write(6,*) "after call subroutin b=",b
end

subroutine sub(a,b)
real(kind=4) :: a(10),b(10)

do i=1,10
 a(i) = 0.1
enddo

do i=1,10
 b(i) = 0.0
enddo

write(6,*) "into subroutin b=",b

end subroutine
