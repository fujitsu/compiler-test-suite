module mm
contains
subroutine suc(*)
entry      euc(*)
return 1
end subroutine
end
module mm2
contains
subroutine suc2(*)
call sub(*1)
write(6,*) "NG"
1 continue
contains
subroutine sub(*)
return 1
end subroutine
end subroutine
end
use mm
call suc(*2)
write(6,*) "NG"
2 call sub(*1)
write(6,*) "NG"
1 continue
call suc(*3)
write(6,*) "NG"
3 continue
print *,'pass'
contains
subroutine sub(*)
return 1
end subroutine
end
