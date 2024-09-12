print *,'pass'
end

subroutine test01()
character :: c(1)=(/4haaaa/)
print *,4haaaa
write(6,*) 4haaaa
end
