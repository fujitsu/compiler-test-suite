character    cc(9:10, 1:2, 1:3, 5:10, 10, 1:10, 5:6)
character    ccx(10000000)
cc='b'
ccx='x'
write(cc,55)ccx(1:28800:2)
55 format(a)
if (any(cc/='x'))print *,'error'
print *,'pass'
end
