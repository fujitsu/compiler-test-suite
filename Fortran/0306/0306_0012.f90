subroutine sub1(i)
     select case(i)
     case (0)
     case (1)
end select
end subroutine sub1

subroutine sub2(i)
     select case(i)
     case (0)
end select
end subroutine sub2

subroutine sub3(i)
     select case(i)
     case (0)
end select
end subroutine sub3

program main
call sub1(0)
call sub1(1)
call sub2(0)
call sub3(0)
print *, "ok"
end
