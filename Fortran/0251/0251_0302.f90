subroutine s1()
block
integer ii
interface Assignment(=)
subroutine ss(d1,d2)
integer,INTENT(OUT) :: d1
character(len=*),intent(in) :: d2
end subroutine
end interface Assignment(=)


block
integer ii
ii = 'ABC'
if(ii==3) print*,'pass'
end block

ii = 'DEFG'
if(ii==4) print*,'pass'
end block
end subroutine

call s1
end

subroutine ss(d1,d2)
integer,INTENT(OUT) :: d1
character(len=*),intent(in) :: d2
d1 = len(d2)
end subroutine
