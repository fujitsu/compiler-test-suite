call test01()
call test02()
print *,"pass"
end

subroutine test01()
integer :: arr(10)
ir=1
arr=1
write(11,*) (/character(ir) :: ("1_2",i=1,10),"1"/)
write(11,*) (/character(ir+1) :: ("1_2",i=1,10),"1"/)
write(11,*) (/character((ir)) :: ("1_2",i=1,10),"1"/)
write(11,*) (/character(ir) :: ("1_2",i=1,10),"1"/)
write(11,*) (/character(+ir) :: ("1_2",i=1,10),"1"/)
write(11,*) (/character(ir) :: ("1_2",i=1,10),"1"/)
write(11,*) (/character(1) :: ("1_2",i=1,10),"1"/)
write(11,*) (/character(arr(1)) :: ("1_2",i=1,10),"1"/)
write(11,*) (/character(arr(1)+2) :: ("1_2",i=1,10),"1"/)
write(11,*) (/character(arr(1)+2) :: ("1_2",i=1,10),"1"/)
write(11,*) (/character(arr(1)+int(1)) :: ("1_2",i=1,10),"1"/)
end subroutine
subroutine test02()
call sub_l1  ( (/logical(kind=1) :: .false.,.false./) )
call sub_l2  ( (/logical(kind=2) :: .false.,.false./) )
call sub_l4  ( (/logical(kind=4) :: .false.,.false./) )
call sub_l8  ( (/logical(kind=8) :: .false.,.false./) )
call sub_l1  ( (/logical(kind=1) :: .false.,.false./) )
call sub_i1  ( (/integer(kind=1) :: 1,3.0/) )
call sub_i2  ( (/integer(kind=2) :: 1,3.0/) )
call sub_i4  ( (/integer(kind=4) :: 1,3.0/) )
call sub_i8  ( (/integer(kind=8) :: 1,3.0/) )
call sub_rs  ( (/real   (kind=4) :: 1,3.0/) )
call sub_rd  ( (/real   (kind=8) :: 1,3.0/) )
call sub_rq  ( (/real   (kind=16):: 1,3.0/) )
call sub_cs  ( (/complex(kind=4) :: 1,3.0/) )
call sub_cd  ( (/complex(kind=8) :: 1,3.0/) )
call sub_cq  ( (/complex(kind=16):: 1,3.0/) )

contains
subroutine sub_l1(cc)
logical(kind=1)  :: cc(*),i
i=cc(1) ; i=i
end subroutine
subroutine sub_l2(cc)
logical(kind=2)  :: cc(*),i
i=cc(1) ; i=i
end subroutine
subroutine sub_l4(cc)
logical(kind=4)  :: cc(*),i
i=cc(1) ; i=i
end subroutine
subroutine sub_l8(cc)
logical(kind=8)  :: cc(*),i
i=cc(1) ; i=i
end subroutine

subroutine sub_i1(cc)
integer(kind=1)  :: cc(*)
i=cc(1) ; i=i
end subroutine
subroutine sub_i2(cc)
integer(kind=2)  :: cc(*)
i=cc(1) ; i=i
end subroutine
subroutine sub_i4(cc)
integer(kind=4)  :: cc(*)
i=cc(1) ; i=i
end subroutine
subroutine sub_i8(cc)
integer(kind=8)  :: cc(*)
i=cc(1) ; i=i
end subroutine
subroutine sub_rs(cc)
real(kind=4)      :: cc(*)
i=cc(1) ; i=i
end subroutine
subroutine sub_rd(cc)
real(kind=8)      :: cc(*)
i=cc(1) ; i=i
end subroutine
subroutine sub_rq(cc)
real(kind=16)     :: cc(*)
i=cc(1) ; i=i
end subroutine
subroutine sub_cs(cc)
complex(kind=4)      :: cc(*)
i=cc(1) ; i=i
end subroutine
subroutine sub_cd(cc)
complex(kind=8)      :: cc(*)
i=cc(1) ; i=i
end subroutine
subroutine sub_cq(cc)
complex(kind=16)     :: cc(*)
i=cc(1) ; i=i
end subroutine
end
