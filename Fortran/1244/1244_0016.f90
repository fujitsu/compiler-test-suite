  type ::tt
     integer::iii
     integer::jjj=2
  end type tt
  type(tt)::ttt1,ttt2
  interface assignment(=)
     procedure bbb
  end interface
call bbb(ttt1,ttt2)
if(ttt1%iii/=2) print *,'err'
  print *,'sngtin21:pass'
contains
recursive  subroutine bbb(xxx, yyy)
    type(tt),intent(out) :: xxx
    type(tt),intent(in)  :: yyy
xxx%iii=yyy%jjj
  end subroutine bbb
end
