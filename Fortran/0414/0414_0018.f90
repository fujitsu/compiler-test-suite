call sss()
print *,'pass'
end

subroutine sss()
IMPLICIT TYPE(ty1)( a)
save
  type ty1
    integer(8),allocatable          :: chk( : )
  end type
TYPE(ty1) :: bb(10)
afun(i)=bb(i)
do i=1,10
allocate(bb(i)%chk(3))
enddo
end
