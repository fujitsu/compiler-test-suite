character    cc(9:10, 1:2, 1:3, 5:10, 10, 1:10, 5:6)
character    ccx(5000000)
cc='b'
ccx='x'
write(cc(9:10, 1:2, 3:1:-1, 10:5:-1, 1:10, 10:1:-1, 5:6),55)ccx(1:28800:2)
55 format(a)
if (any(cc(9:10, 1:2, 3:1:-1, 10:5:-1, 1:10, 10:1:-1, 5:6)/='x'))print *,'error'
print *,'pass'
end
