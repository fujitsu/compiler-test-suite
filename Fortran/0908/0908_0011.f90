subroutine sub(x,y)
        type(*) :: x
        type(*) :: y
        print*,"In sub"
        return
        entry sub2(x,y)
        print*,"In sub2"
        return
end subroutine
end
