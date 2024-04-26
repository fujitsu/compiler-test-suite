integer :: ii

block
interface assignment(=)
subroutine ff(d1,d2)
integer,intent(out)::d1
character(len=*),intent(in) :: d2
end subroutine
end interface assignment(=)

ii='abc'
if(ii==3) print*,'pass'
end block
end

subroutine ff(d1,d2)
integer,intent(out)::d1
character(len=*),intent(in) :: d2
d1=len(d2)
end subroutine

