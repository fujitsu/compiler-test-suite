class(*), allocatable :: var
allocate(character(1)::var)



select type (var)
 type is( character(*))
end select
print *,'pass'
end
