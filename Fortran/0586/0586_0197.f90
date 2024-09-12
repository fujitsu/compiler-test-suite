procedure():: f2
procedure(),pointer :: pp=>f2
call f2()
end

subroutine f2()
print*,"PASS"
end

