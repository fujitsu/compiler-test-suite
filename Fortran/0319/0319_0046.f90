subroutine test1
common /com/iv1,iv2
interface
  pure subroutine update_1(i)
  intent(inout)::i
  end subroutine
end interface
  iv1=1
  iv2=2
  ians1=2
  call update_1(ians1)
  ians2=iv1+iv2
  if ( ians1.ne.5 .or. ians2.ne.3 ) then;  print *,"NG"
                                    else;  print *,"OK"; endif
  return
end
program main
  print *,'test start'
  call test1
  print *,'test end'
end
pure subroutine update_1(i)
  common /com/iv1,iv2
  intent(inout)::i
  i=iv1+iv2+i
  return
end


