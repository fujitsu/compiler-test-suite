real(kind=8) :: b(10)

do i=1,10
 b(i) = i
enddo


write(6,*) "bofore call subroutin b=",b
call sub(b)
write(6,*) "after call subroutin b=",b
write(6,*) "b=",b
end

subroutine sub(b)
real(kind=8) :: b(10)

do i=1,10
 b(i) = 0
enddo

write(6,*) "into subroutin b=",b

end subroutine
