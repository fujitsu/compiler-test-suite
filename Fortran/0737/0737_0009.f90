call s1
print *,'pass'
end
module m1
contains
recursive subroutine s11(a1,a2,f1,f2)
character(len=*),pointer,optional::a1,f1,f2
character(len=*),allocatable,optional::a2(:)
if (     present(a1).and.f1/='1')write(6,*) "NG"
if (present(a1))then
if (.not.associated(a1))write(6,*) "NG"
endif
if (present(a2))then
if (.not.allocated(a2))write(6,*) "NG"
endif
if (.not.present(a1).and.f1/='0')write(6,*) "NG"
if (     present(a2).and.f2/='1')write(6,*) "NG"
if (.not.present(a2).and.f2/='0')write(6,*) "NG"
if (     present(a1)) then;if (len(a1)/=1)write(6,*) "NG";endif
if (     present(a2)) then;if (len(a2)/=1)write(6,*) "NG";endif
if (len(f1)/=1)write(6,*) "NG"; if (len(f2)/=1)write(6,*) "NG"
call       s12(a1,a2,f1=f1,f2=f2)
call       s111(a1,a2,f1=f1,f2=f2)
return
entry      s13(a1,a2,f1,f2)
if (     present(a1)) then;if (len(a1)/=1)write(6,*) "NG";endif
if (     present(a2)) then;if (len(a2)/=1)write(6,*) "NG";endif
if (len(f1)/=1)write(6,*) "NG"; if (len(f2)/=1)write(6,*) "NG"
if (     present(a1).and.f1/='1')write(6,*) "NG"
if (.not.present(a1).and.f1/='0')write(6,*) "NG"
if (     present(a2).and.f2/='1')write(6,*) "NG"
if (.not.present(a2).and.f2/='0')write(6,*) "NG"
if (present(a1))then
if (.not.associated(a1))write(6,*) "NG"
endif
if (present(a2))then
if (.not.allocated(a2))write(6,*) "NG"
endif
return
entry      s12(a1,a2,f1,f2)
if (     present(a1)) then;if (len(a1)/=1)write(6,*) "NG";endif
if (     present(a2)) then;if (len(a2)/=1)write(6,*) "NG";endif
if (len(f1)/=1)write(6,*) "NG"; if (len(f2)/=1)write(6,*) "NG"
if (     present(a1).and.f1/='1')write(6,*) "NG"
if (.not.present(a1).and.f1/='0')write(6,*) "NG"
if (     present(a2).and.f2/='1')write(6,*) "NG"
if (.not.present(a2).and.f2/='0')write(6,*) "NG"
call       s13(a1,a2,f1=f1,f2=f2)
if (present(a1))then
if (.not.associated(a1))write(6,*) "NG"
endif
if (present(a2))then
if (.not.allocated(a2))write(6,*) "NG"
endif
end subroutine
recursive subroutine s111(a1,a2,f1,f2)
character(len=*),pointer,optional::a1,f1,f2
character(len=*),allocatable,optional::a2(:)
if (     present(a1)) then;if (len(a1)/=1)write(6,*) "NG";endif
if (     present(a2)) then;if (len(a2)/=1)write(6,*) "NG";endif
if (len(f1)/=1)write(6,*) "NG"; if (len(f2)/=1)write(6,*) "NG"
if (     present(a1).and.f1/='1')write(6,*) "NG"
if (.not.present(a1).and.f1/='0')write(6,*) "NG"
if (     present(a2).and.f2/='1')write(6,*) "NG"
if (.not.present(a2).and.f2/='0')write(6,*) "NG"
if (present(a1))then
if (.not.associated(a1))write(6,*) "NG"
endif
if (present(a2))then
if (.not.allocated(a2))write(6,*) "NG"
endif
call       s112(a1,a2,f1=f1,f2=f2)
return
entry      s113(a1,a2,f1,f2)
if (     present(a1)) then;if (len(a1)/=1)write(6,*) "NG";endif
if (     present(a2)) then;if (len(a2)/=1)write(6,*) "NG";endif
if (len(f1)/=1)write(6,*) "NG"; if (len(f2)/=1)write(6,*) "NG"
if (     present(a1).and.f1/='1')write(6,*) "NG"
if (.not.present(a1).and.f1/='0')write(6,*) "NG"
if (     present(a2).and.f2/='1')write(6,*) "NG"
if (.not.present(a2).and.f2/='0')write(6,*) "NG"
if (     present(a1)            ) a1='1'
if (     present(a2)            ) a2='1'
if (present(a1))then
if (.not.associated(a1))write(6,*) "NG"
endif
if (present(a2))then
if (.not.allocated(a2))write(6,*) "NG"
endif
return
entry      s112(a1,a2,f1,f2)
if (     present(a1)) then;if (len(a1)/=1)write(6,*) "NG";endif
if (     present(a2)) then;if (len(a2)/=1)write(6,*) "NG";endif
if (len(f1)/=1)write(6,*) "NG"; if (len(f2)/=1)write(6,*) "NG"
if (     present(a1).and.f1/='1')write(6,*) "NG"
if (.not.present(a1).and.f1/='0')write(6,*) "NG"
if (     present(a2).and.f2/='1')write(6,*) "NG"
if (.not.present(a2).and.f2/='0')write(6,*) "NG"
if (present(a1))then
if (.not.associated(a1))write(6,*) "NG"
endif
if (present(a2))then
if (.not.allocated(a2))write(6,*) "NG"
endif
call       s113(a1,a2,f1=f1,f2=f2)
end subroutine
end module
subroutine s1
use m1
character,pointer:: a1,f1,f2
character,allocatable:: a2(:)
character,parameter::f='0',t='1'
allocate(a1,a2(2),f1,f2)
a1='0';a2='0';f1=t;f2=t;call s11(a1=a1,a2=a2,f1=f1,f2=f2)
if (a1/='1')write(6,*) "NG"; if (any(a2/='1'))write(6,*) "NG"
!
a1='0';a2='0';f1=f;f2=t;call s11(      a2=a2,f1=f1,f2=f2)
if (a1/='0')write(6,*) "NG"; if (any(a2/='1'))write(6,*) "NG"
!
a1='0';a2='0';f1=t;f2=f;call s11(a1=a1      ,f1=f1,f2=f2)
if (a1/='1')write(6,*) "NG"; if (any(a2/='0'))write(6,*) "NG"
!
a1='0';a2='0';f1=f;f2=f;call s11(            f1=f1,f2=f2)
if (a1/='0')write(6,*) "NG"; if (any(a2/='0'))write(6,*) "NG"
deallocate (a1,a2,f1,f2)
end 
