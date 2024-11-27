print *,"pass"
end

subroutine test()
integer i,x
i=6
flush(i)
flush(6,iostat=x)
flush(i,err=10)
i=x
10 end
