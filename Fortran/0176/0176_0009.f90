character(10)::ch(10)
ch(1)="aaa"
call sub(ch)
contains
subroutine sub(ch)
  character(10)::ch(10)
  select case (ch(1))
  case("aaa")
     print *,'pass'
  case default
    print *,1
  end select
end subroutine
end

