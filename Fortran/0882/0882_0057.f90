INTEGER::ii(5)
call sub(ii)
contains
  subroutine sub(dum)
    class(*):: dum(7:11)
    print*,'SIZE: ',SIZE(dum),'UBOUND: ',ubound(dum)
  end subroutine sub
end
