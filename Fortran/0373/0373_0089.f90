subroutine sub2(sub1)
external sub1
call sub1()
end subroutine

subroutine sub1()
print*,'ok'
end subroutine

program main
external sub1
call sub2(sub1)
end
