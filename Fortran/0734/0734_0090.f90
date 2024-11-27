module mm
contains
subroutine suc
entry      euc
return 
end subroutine
end
module mm2
contains
subroutine suc2
call sub()
goto 11
1write(6,*) "NG"
11 continue
contains
subroutine sub()
return 
end subroutine
end subroutine
end
use mm
call suc()
goto 22
2write(6,*) "NG"
22 call sub()
goto 11
1write(6,*) "NG"
11 continue
call suc()
goto 33
3write(6,*) "NG"
33 continue
print *,'pass'
contains
subroutine sub()
return 
end subroutine
end
