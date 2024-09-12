  print *,'pass'
end

subroutine xxx(a)
  integer,intent(out):: a
end
subroutine yyy(bbb)
  integer,intent(in),pointer:: bbb
  call xxx(bbb)
end


