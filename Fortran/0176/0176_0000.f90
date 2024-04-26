character(10)::ch="abcde"
call sub(ch)
end

subroutine sub(ch)
character(10)::ch
select case (ch)
case("aaa")
  print *,1
case("abcde")
  print *,'pass'
case default
  print *,2
end select
end

