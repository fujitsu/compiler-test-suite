interface
 subroutine ifun(i,j)
  integer,pointer :: i
  integer,target  :: j
 end subroutine
 subroutine jfun(i,j)
  integer,pointer :: i
  integer,target  :: j
 end subroutine
end interface

procedure(ifun),pointer :: p
integer,pointer :: ip
integer,target  :: it,it2

it=1
it2=it+1
p=>jfun
call jfun(ip,it)
if (ip.ne.1) print *,'fail'
call p(ip,it2)
if (ip.ne.2) print *,'fail'

print *,'pass'

end

subroutine jfun(i,j)
 integer,pointer :: i
 integer,target  :: j
 i=>j
end subroutine
