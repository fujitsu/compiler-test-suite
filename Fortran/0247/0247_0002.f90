integer :: k,J,LL=1
x:DO CONCURRENT(J=1:5)
y:DO K=1,2
if(K .EQ. 2)cycle x
LL = LL + 1
END DO y
END DO x
if (LL == 6) then
print*,'PASS'
endif
end
