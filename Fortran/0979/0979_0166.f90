print *,"pass"
end

subroutine test09()
complex(kind=4) :: c8
c8=1
if (cmplx(z"aaaa").ne.1) write(6,*) "NG"
if (cmplx(z"aaaa",z"aaaa").ne.1) write(6,*) "NG"
if (cmplx(1.0,z"aaaa").ne.1) write(6,*) "NG"
if (cmplx(z"aaaa",1.0).ne.1) write(6,*) "NG"
if (cmplx(c8,kind=4).ne.1) write(6,*) "NG"
if (cmplx(c8,kind=8).ne.1) write(6,*) "NG"
if (cmplx(c8,kind=16).ne.1) write(6,*) "NG"
if (cmplx(z"aaaa",kind=4).ne.1) write(6,*) "NG"
if (cmplx(z"aaaa",kind=8).ne.1) write(6,*) "NG"
if (cmplx(z"aaaa",kind=16).ne.1) write(6,*) "NG"
if (cmplx(c8).ne.1) write(6,*) "NG"
end
