call test_01()
call test_02()
call test_03()
call test_04()
call test_05()
print *,"pass"
end

subroutine test_01()
if (int(z"111111" ,1) .ne. 17) write(6,*) "NG"
if (int(z"f11f11" ,1) .ne. 17) write(6,*) "NG"
if (int(z"011f11" ,1) .ne. 17) write(6,*) "NG"
if (int(z"131f11" ,1) .ne. 17) write(6,*) "NG"
if (int(z"114f11" ,1) .ne. 17) write(6,*) "NG"
if (int(z"11ff11" ,1) .ne. 17) write(6,*) "NG"
if (int(z"111011" ,1) .ne. 17) write(6,*) "NG"
if (int(z"ffff11" ,1) .ne. 17) write(6,*) "NG"
if (int(z"ffff11" ,1) .ne. 17) write(6,*) "NG"
if (int(z"1f1f11" ,1) .ne. 17) write(6,*) "NG"
if (int(z"111121" ,1) .ne. 17+16) write(6,*) "NG"
end

subroutine test_02()
if (int(z"111111" ,2) .ne. 4369) write(6,*) "NG"
if (int(z"1f1111" ,2) .ne. 4369) write(6,*) "NG"
if (int(z"1111" ,2) .ne. 4369) write(6,*) "NG"
if (int(z"001111" ,2) .ne. 4369) write(6,*) "NG"
if (int(z"341111" ,2) .ne. 4369) write(6,*) "NG"
if (int(z"aa1111" ,2) .ne. 4369) write(6,*) "NG"
if (int(z"abc1111" ,2) .ne. 4369) write(6,*) "NG"
if (int(z"f71111" ,2) .ne. 4369) write(6,*) "NG"
if (int(z"71111" ,2) .ne. 4369) write(6,*) "NG"
end

subroutine test_03()
if (int(z"11111111" ,4) .ne. 286331153) write(6,*) "NG"
if (int(z"f11111111" ,4) .ne. 286331153) write(6,*) "NG"
if (int(z"011111111" ,4) .ne. 286331153) write(6,*) "NG"
if (int(z"aaaaaa11111111" ,4) .ne. 286331153) write(6,*) "NG"
if (int(z"acd11111111" ,4) .ne. 286331153) write(6,*) "NG"
if (int(z"788811111111" ,4) .ne. 286331153) write(6,*) "NG"
end

subroutine test_04()
if (int(z"111111111" ,8) .ne. 4581298449_8) write(6,*) "NG"
if (int(z"0111111111" ,8) .ne. 4581298449_8) write(6,*) "NG"
if (int(z"f0000000111111111" ,8) .ne. 4581298449_8) write(6,*) "NG"
if (int(z"70000000111111111" ,8) .ne. 4581298449_8) write(6,*) "NG"
if (int(z"10000000111111111" ,8) .ne. 4581298449_8) write(6,*) "NG"
if (int(z"1111f0000000111111111" ,8) .ne. 4581298449_8) write(6,*) "NG"
end

subroutine test_05()
if (int(z"111111111" ,8) .ne. 4581298449_8) write(6,*) "NG"
if (int(z"0111111111" ,8) .ne. 4581298449_8) write(6,*) "NG"
if (int(z"f0000000111111111" ,8) .ne. 4581298449_8) write(6,*) "NG"
if (int(z"70000000111111111" ,8) .ne. 4581298449_8) write(6,*) "NG"
if (int(z"10000000111111111" ,8) .ne. 4581298449_8) write(6,*) "NG"
if (int(z"1111f0000000111111111" ,8) .ne. 4581298449_8) write(6,*) "NG"
end



subroutine test_0x()
end 
