call test01()
print *,"pass"
end 
subroutine test01()
if (int(z"7F" ,1).ne.int(b"1111111",1)) print *,'fail'
if (int(z"FF" ,2).ne.int(b"11111111",2)) print *,'fail'
if (int(z"FF" ,4).ne.int(b"11111111",4)) print *,'fail'
if (int(z"FFFF" ,8).ne.int(b"1111111111111111",8)) print *,'fail'
if (int(z"7F" ,1).ne.int(o"177",1)) print *,'fail'
if (int(z"FF" ,2).ne.int(o"377",2)) print *,'fail'
if (int(z"FF" ,4).ne.int(o"377",4)) print *,'fail'
if (int(z"FFFF" ,8).ne.int(o"177777",8)) print *,'fail'
if (int(z"7F" ,1).ne.int(127,1)) print *,'fail'
if (int(z"FF" ,2).ne.int(255,2)) print *,'fail'
if (int(z"FF" ,4).ne.int(255,4)) print *,'fail'
if (int(z"FFFF" ,8).ne.int(65535,8)) print *,'fail'

if (real(z"FF").ne.real(b"11111111")) print *,'fail'
if (real(z"FF" ,4).ne.real(b"11111111",4)) print *,'fail'
if (real(z"FFFF" ,8).ne.real(b"1111111111111111",8)) print *,'fail'
if (real(z"FF").ne.real(o"377")) print *,'fail'
if (real(z"FF" ,4).ne.real(o"377",4)) print *,'fail'
if (real(z"FFFF" ,8).ne.real(o"177777",8)) print *,'fail'

if (dble(z"FF").ne.dble(b"11111111")) print *,'fail'
if (dble(z"FF").ne.dble(o"377")) print *,'fail'

if (cmplx(z"FF").ne.cmplx(b"11111111")) print *,'fail'
if (cmplx(z"FF" ,4).ne.cmplx(b"11111111",4)) print *,'fail'
if (cmplx(z"FFFF" ,8).ne.cmplx(b"1111111111111111",8)) print *,'fail'
if (cmplx(z"FF").ne.cmplx(o"377")) print *,'fail'
if (cmplx(z"FF" ,4).ne.cmplx(o"377",4)) print *,'fail'
if (cmplx(z"FFFF" ,8).ne.cmplx(o"177777",8)) print *,'fail'
if (cmplx(z"FF",b"11111111").ne.cmplx(b"11111111",o"377")) print *,'fail'
if (cmplx(z"FF",o"177777" ,4).ne.cmplx(b"11111111",z"FFFF",4)) print *,'fail'
if (cmplx(z"FFFF",o"177" ,8).ne.cmplx(b"1111111111111111",b"1111111",8)) print *,'fail'
if (cmplx(z"FF",b"11111111").ne.cmplx(o"377",z"FF")) print *,'fail'
if (cmplx(z"FF",z"FFFF" ,4).ne.cmplx(o"377",o"177777",4)) print *,'fail'
if (cmplx(z"FFFF",b"1111111111111111" ,8).ne.cmplx(o"177777",z"FFFF",8)) print *,'fail'

end subroutine
