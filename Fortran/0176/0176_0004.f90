subroutine sub(n)
  character(n)::ch
  ch="aaa"
  select case (ch)
  case("aaa")
     print *,'pass'
  case default
    print *,1
  end select
end

call sub(3)
end
