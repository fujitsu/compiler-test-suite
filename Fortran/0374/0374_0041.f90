call test01()
print *,"pass"
end 
subroutine test01()
if (int(z"7F" ,1).ne.int(b"1111111",1)) call errtra
if (int(z"FF" ,2).ne.int(b"11111111",2)) call errtra
if (int(z"FF" ,4).ne.int(b"11111111",4)) call errtra
if (int(z"FFFF" ,8).ne.int(b"1111111111111111",8)) call errtra
if (int(z"7F" ,1).ne.int(o"177",1)) call errtra
if (int(z"FF" ,2).ne.int(o"377",2)) call errtra
if (int(z"FF" ,4).ne.int(o"377",4)) call errtra
if (int(z"FFFF" ,8).ne.int(o"177777",8)) call errtra
if (int(z"7F" ,1).ne.int(127,1)) call errtra
if (int(z"FF" ,2).ne.int(255,2)) call errtra
if (int(z"FF" ,4).ne.int(255,4)) call errtra
if (int(z"FFFF" ,8).ne.int(65535,8)) call errtra

if (real(z"FF").ne.real(b"11111111")) call errtra
if (real(z"FF" ,4).ne.real(b"11111111",4)) call errtra
if (real(z"FFFF" ,8).ne.real(b"1111111111111111",8)) call errtra
if (real(z"FF").ne.real(o"377")) call errtra
if (real(z"FF" ,4).ne.real(o"377",4)) call errtra
if (real(z"FFFF" ,8).ne.real(o"177777",8)) call errtra

if (dble(z"FF").ne.dble(b"11111111")) call errtra
if (dble(z"FF").ne.dble(o"377")) call errtra

if (cmplx(z"FF").ne.cmplx(b"11111111")) call errtra
if (cmplx(z"FF" ,4).ne.cmplx(b"11111111",4)) call errtra
if (cmplx(z"FFFF" ,8).ne.cmplx(b"1111111111111111",8)) call errtra
if (cmplx(z"FF").ne.cmplx(o"377")) call errtra
if (cmplx(z"FF" ,4).ne.cmplx(o"377",4)) call errtra
if (cmplx(z"FFFF" ,8).ne.cmplx(o"177777",8)) call errtra
if (cmplx(z"FF",b"11111111").ne.cmplx(b"11111111",o"377")) call errtra
if (cmplx(z"FF",o"177777" ,4).ne.cmplx(b"11111111",z"FFFF",4)) call errtra
if (cmplx(z"FFFF",o"177" ,8).ne.cmplx(b"1111111111111111",b"1111111",8)) call errtra
if (cmplx(z"FF",b"11111111").ne.cmplx(o"377",z"FF")) call errtra
if (cmplx(z"FF",z"FFFF" ,4).ne.cmplx(o"377",o"177777",4)) call errtra
if (cmplx(z"FFFF",b"1111111111111111" ,8).ne.cmplx(o"177777",z"FFFF",8)) call errtra

end subroutine
