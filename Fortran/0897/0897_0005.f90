integer:: i(10)=1
call sub(i)
  contains
    subroutine sub(ia)
    integer :: ia(*)
    print *,IPARITY(ia)
    end subroutine
end
