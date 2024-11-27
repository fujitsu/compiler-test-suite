end

subroutine sub01(proc) bind(c)
 external :: proc
 call proc()
end subroutine

subroutine sub02(proc)
 external :: proc
 call proc()
end subroutine

subroutine sub03(proc) bind(c)
 real,external :: proc
 print *,proc()
end subroutine
