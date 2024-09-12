subroutine s1
integer,pointer::p(:,:,:)
interface
  subroutine ss(n)
  integer,optional::n(2,3,4)
  end subroutine
end interface
p=>null()
call ss(p)
end
subroutine ss(n)
integer,optional::n(2,3,4)
if (present(n)) print *,200
end subroutine
call s1
print *,'pass'
end
