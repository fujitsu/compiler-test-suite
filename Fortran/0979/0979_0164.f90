call test01()
print *,"pass"
end 
subroutine test01()
call type_int1(int(z"1111" ,1))
call type_int2(int(z"1111" ,2))
call type_int4(int(z"1111" ,4))
call type_int8(int(z"1111" ,8))
call type_int(int(z"1111"))
call type_real(real(z"1111"))
call type_real4(real(z"1111",4))
call type_real8(real(z"1111",8))
call type_real16(real(z"1111",16))
call type_real8(dble(z"1111"))
call type_cmplx(cmplx(z"1111"))
call type_cmplx4(cmplx(z"1111",kind=4))
call type_cmplx8(cmplx(z"1111",kind=8))
call type_cmplx16(cmplx(z"1111",kind=16))

call type_int1(int(b"1111" ,1))
call type_int2(int(b"1111" ,2))
call type_int4(int(b"1111" ,4))
call type_int8(int(b"1111" ,8))
call type_int(int(b"1111"))
call type_real(real(b"1111"))
call type_real4(real(b"1111",4))
call type_real8(real(b"1111",8))
call type_real16(real(b"1111",16))
call type_real8(dble(b"1111"))
call type_cmplx(cmplx(b"1111"))
call type_cmplx4(cmplx(b"1111",kind=4))
call type_cmplx8(cmplx(b"1111",kind=8))
call type_cmplx16(cmplx(b"1111",kind=16))

call type_int1(int(o"1111" ,1))
call type_int2(int(o"1111" ,2))
call type_int4(int(o"1111" ,4))
call type_int8(int(o"1111" ,8))
call type_int(int(o"1111"))
call type_real(real(o"1111"))
call type_real4(real(o"1111",4))
call type_real8(real(o"1111",8))
call type_real16(real(o"1111",16))
call type_real8(dble(o"1111"))
call type_cmplx(cmplx(o"1111"))
call type_cmplx4(cmplx(o"1111",kind=4))
call type_cmplx8(cmplx(o"1111",kind=8))
call type_cmplx16(cmplx(o"1111",kind=16))


contains
subroutine type_int(ii)
integer,optional :: ii
end subroutine
subroutine type_int1(ii)
integer(kind=1),optional :: ii
end subroutine
subroutine type_int2(ii)
integer(kind=2),optional :: ii
end subroutine
subroutine type_int4(ii)
integer(kind=4),optional :: ii
end subroutine
subroutine type_int8(ii)
integer(kind=8),optional :: ii
end subroutine
subroutine type_real(ii)
real,optional :: ii
end subroutine
subroutine type_real4(ii)
real(kind=4),optional :: ii
end subroutine
subroutine type_real8(ii)
real(kind=8),optional :: ii
end subroutine
subroutine type_real16(ii)
real(kind=16),optional :: ii
end subroutine
subroutine type_cmplx(ii)
complex,optional :: ii
end subroutine
subroutine type_cmplx4(ii)
complex(kind=4),optional :: ii
end subroutine
subroutine type_cmplx8(ii)
complex(kind=8),optional :: ii
end subroutine
subroutine type_cmplx16(ii)
complex(kind=16),optional :: ii
end subroutine

end subroutine
