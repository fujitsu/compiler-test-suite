subroutine sub(Z)
LOGICAL Z(1,1)
INTEGER*4 WUDZ5(1,1)
WUDZ5=121
Z=(.NOT.WUDZ5<=WUDZ5)
write(6,*) .NOT.Z
end

LOGICAL Z(1,1)
call sub(Z)
end
