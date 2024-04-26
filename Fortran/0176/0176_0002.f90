character(10),allocatable,asynchronous::ch
allocate(character(10)::ch)
ch="aaa"
call sub(ch)
contains
subroutine sub(ch)
  character(10),allocatable,asynchronous::ch
  select case (ch)
  case("aaa")
     print *,'pass'
  case default
    print *,1
  end select
end subroutine
end

