integer,target :: ttt(10)=1
integer,pointer :: p
data p /ttt(2)/
p=>ttt(2)
print *,'pass'
end
