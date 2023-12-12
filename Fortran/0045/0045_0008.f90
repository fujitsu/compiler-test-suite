! Kind used
        program pro
integer, parameter:: x1= kind(HYPOT(4.0,5.0))

    if(x1 .ne. 4)print*, 101,x1
print *, "pass"
end
