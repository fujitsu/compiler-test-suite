call test01()
call test02()
call test03()
call test04()
call test05()
call test06()
call test07()
call test08()
call test09()
call test10()
call test11()
call test12()
call test13()
print *,'pass'
end

subroutine test01()
i=1
!$OMP ATOMIC
i=max(1,i)
end 

subroutine test02()
i=1
!$OMP ATOMIC
i=min(1,i)
end 

subroutine test03()
i=1
!$OMP ATOMIC
i=ior(1,i)
end 

subroutine test04()
i=1
!$OMP ATOMIC
i=ieor(1,i)
end 

subroutine test05()
i=1
!$OMP ATOMIC
i=iand(1,i)
end 

subroutine test06()
i=1
!$OMP ATOMIC
i=1+i     
end 

subroutine test07()
i=1
!$OMP ATOMIC
i=1*i
end

subroutine test08()
i=1
!$OMP ATOMIC
i=1-i
end

subroutine test09()
i=1
!$OMP ATOMIC
i=1/i
end

subroutine test10()
logical i
i=.true.
!$OMP ATOMIC
i=.true..and.i
end

subroutine test11()
logical i
i=.true.
!$OMP ATOMIC
i=.true..or.i
end

subroutine test12()
logical i
i=.true.
!$OMP ATOMIC
i=.true..eqv.i
end

subroutine test13()
logical i
i=.true.
!$OMP ATOMIC
i=.true..neqv.i
end
