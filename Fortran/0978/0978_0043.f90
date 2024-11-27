function func(iii) result (ret)
    character,allocatable :: iii(:)
    character,allocatable :: ret(:)
    call move_alloc(iii,ret)
end function

interface
function func(iii) result (ret)
    character,allocatable :: iii(:)
    character,allocatable :: ret(:)
end function
end interface
character,allocatable :: iii(:)
character,allocatable :: jjj(:)
allocate(iii(10))
iii = (/'a','b','c','d','e','f','g','h','i','j'/)
if (any(func(iii)/=(/'a','b','c','d','e','f','g','h','i','j'/)))write(6,*) "NG"
print *,'pass'
end program
