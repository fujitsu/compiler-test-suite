subroutine test1
common /com/iv1,iv2
interface
  pure function update_1(i)
  integer(kind=4) update_1
  intent(in)::i
  end function
end interface
  iv1  =1
  iv2  =2
  ians1=2
  ires=update_1(ians1)
  ians2=iv1+iv2
  if (     ians1.ne.2  &
      .or. ians2.ne.3  &
      .or. ires .ne.5    ) then;  print *,"NG"
                           else;  print *,"OK"; endif
  return
end
program main
  print *,'test start'
  call test1
  print *,'test end'
end
pure function update_1(i)
  integer(kind=4):: update_1
  common /com/iv1,iv2
  intent(in)::i
  update_1 = i+iv1+iv2
  return
end


