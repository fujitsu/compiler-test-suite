  integer,pointer :: a(:)
  integer,target  :: b(5)
  namelist /namlst/ a
  b=(/0,1,2,3,4/)
  a=>b
  b=(/5,6,7,8,9/)
  write(2,namlst)
call chk
print *,'pass'
  end
subroutine chk
integer a(5)
 namelist /namlst/ a

end
