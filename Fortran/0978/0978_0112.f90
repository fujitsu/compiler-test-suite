subroutine sub(iii,jjj) 
  integer,pointer,intent(in) :: iii(:)
  integer,pointer,intent(out) :: jjj(:)
  jjj => iii
end subroutine

interface aaa
subroutine sub(iii,jjj) 
  integer,pointer,intent(in) :: iii(:)
  integer,pointer,intent(out) :: jjj(:)
end subroutine
end interface

integer,pointer :: iii(:)
integer,pointer :: jjj(:)
allocate(iii(10))
iii = (/1,2,3,4,5,6,7,8,9,10/)
call aaa(iii,jjj)
if (any(jjj/=(/1,2,3,4,5,6,7,8,9,10/)))write(6,*) "NG"
print *,'pass'
end

