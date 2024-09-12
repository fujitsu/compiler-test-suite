subroutine s1
 abstract interface
    subroutine sub11
    end subroutine
    subroutine sub12
    end subroutine
 end interface
 interface
    subroutine sub21
    end subroutine
    subroutine sub22
    end subroutine
 end interface
end
call s1
print *,'pass'
end
