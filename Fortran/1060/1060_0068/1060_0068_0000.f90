interface
recursive function ifun01(arg1) result(ians)
integer arg1(:)
integer ians(3)
end function
end interface
integer a(3)

a=ifun01(a)
call sub(a)
end

subroutine sub(ians)
integer ians(3)
if (ians(1).ne.1) stop '1-1'
if (ians(2).ne.2) stop '1-2'
if (ians(3).ne.3) stop '1-3'
print *,'PASS'
end
