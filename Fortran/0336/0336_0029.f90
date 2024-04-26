subroutine sub(ii)
integer  ii(1,1),i(1,1)
i = ii
end

program main
integer  ii(1)
call sub(ii(1))
call sub(ii)
end
