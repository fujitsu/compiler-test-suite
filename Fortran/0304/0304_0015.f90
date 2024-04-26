write(6,*) " ok "
end

subroutine test()
real*8,dimension(0:5,0:1,0:250) :: bb
integer,dimension(0:250) :: list
call aaa(bb(0:5,0:1,list(0:mmm)))
end

subroutine aaa(zz)
real*8 zz
end
