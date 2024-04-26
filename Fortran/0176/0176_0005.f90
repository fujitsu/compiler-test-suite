character(10),pointer::ch
allocate(character(10)::ch)
ch="aaa"
call sub(ch,10)
contains
subroutine sub(ch,n)
  character(n),pointer::ch
  select case (ch)
  case("aaa")
     print *,'pass'
  case default
    print *,1
  end select
end subroutine
end

