subroutine s
implicit none
integer::n=3
associate(nn=>n)
block
 dimension:: arr(2)
 character(nn):: arr*(2)
if (len (arr)/=2) print *,1021
if (size(arr)/=2) print *,1022
arr='123'
if (any(arr(:)(:)/='12')) print *,1027
end block
end associate
end
call s()

print *,'sngg625r : pass'
end

