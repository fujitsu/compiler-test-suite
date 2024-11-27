integer ::arr(10)=1
integer,parameter :: brr(10)=1
call sub(arr)
call sub(arr(:))
call sub(arr(arr))
call sub(brr)
call sub(brr(:))
call sub(brr(arr))
end

subroutine sub(i)
integer,intent(out) :: i(10)
i=1
end
