interface
function ifun() result(sub)
allocatable :: sub
end function

end interface
write(1,*) ifun()
print *,'pass'
end
function ifun() result(sub)

allocatable :: sub
allocate(sub)
sub=0
end function
