interface 
subroutine subb2(aa)
integer aa(:)
end subroutine
end interface
integer a1(10)
integer a2(0:10)
integer a3(-10:10)
call suba1(a1,10)
call suba2(a2,0,10)
call suba3(a3,-10)
call subb1(a1)
call subb2(a1)
call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
print *,'pass'
end

subroutine sub(a)
integer a(*)
i=bit_size(a)
end subroutine

subroutine sub1()
integer a(10)
a=1
call sub(a(1:10:1))
call sub(a(2:10:1))
call sub(a(3:10:1))
call sub(a(4:10:1))
call sub(a(5:10:1))
call sub(a(6:10:1))
call sub(a(7:10:1))
call sub(a(8:10:1))
call sub(a(9:10:1))
call sub(a(10:10:1))
call sub(a(1:1:-1))
call sub(a(2:1:-1))
call sub(a(3:1:-1))
call sub(a(4:1:-1))
call sub(a(5:1:-1))
call sub(a(6:1:-1))
call sub(a(7:1:-1))
call sub(a(8:1:-1))
call sub(a(9:1:-1))
call sub(a(10:1:-1))
call sub(a(1:10))
call sub(a(2:10))
call sub(a(3:10))
call sub(a(4:10))
call sub(a(5:10))
call sub(a(6:10))
call sub(a(7:10))
call sub(a(8:10))
call sub(a(9:10))
call sub(a(10:10))
call sub(a(1::1))
call sub(a(2::1))
call sub(a(3::1))
call sub(a(4::1))
call sub(a(5::1))
call sub(a(6::1))
call sub(a(7::1))
call sub(a(8::1))
call sub(a(9::1))
call sub(a(10::1))
call sub(a(1:))
call sub(a(2:))
call sub(a(3:))
call sub(a(4:))
call sub(a(5:))
call sub(a(6:))
call sub(a(7:))
call sub(a(8:))
call sub(a(9:))
call sub(a(10:))
call sub(a(:))
call sub(a(1:-1))
call sub(a(2:1))
call sub(a(0:-1))
call sub(a(-1:1:-1))
call sub(a(-1::-1))
call sub(a(-1:-2))
end subroutine

subroutine sub2()
integer a(0:10)
a=1
call sub(a(0:10:1))
call sub(a(1:10:1))
call sub(a(2:10:1))
call sub(a(3:10:1))
call sub(a(4:10:1))
call sub(a(5:10:1))
call sub(a(6:10:1))
call sub(a(7:10:1))
call sub(a(8:10:1))
call sub(a(9:10:1))
call sub(a(10:10:1))
call sub(a(1:0:-1))
call sub(a(1:0:-1))
call sub(a(2:0:-1))
call sub(a(3:0:-1))
call sub(a(4:0:-1))
call sub(a(5:0:-1))
call sub(a(6:0:-1))
call sub(a(7:0:-1))
call sub(a(8:0:-1))
call sub(a(9:0:-1))
call sub(a(10:0:-1))
call sub(a(0:10))
call sub(a(1:10))
call sub(a(2:10))
call sub(a(3:10))
call sub(a(4:10))
call sub(a(5:10))
call sub(a(6:10))
call sub(a(7:10))
call sub(a(8:10))
call sub(a(9:10))
call sub(a(10:10))
call sub(a(0::1))
call sub(a(1::1))
call sub(a(2::1))
call sub(a(3::1))
call sub(a(4::1))
call sub(a(5::1))
call sub(a(6::1))
call sub(a(7::1))
call sub(a(8::1))
call sub(a(9::1))
call sub(a(10::1))
call sub(a(0:))
call sub(a(1:))
call sub(a(2:))
call sub(a(3:))
call sub(a(4:))
call sub(a(5:))
call sub(a(6:))
call sub(a(7:))
call sub(a(8:))
call sub(a(9:))
call sub(a(10:))
call sub(a(:))
call sub(a(0:-1))
call sub(a(2:1))
call sub(a(0:-1))
call sub(a(-1:0:-1))
call sub(a(-1::-1))
call sub(a(-1:-2))
end subroutine

subroutine sub3()
integer a(-10:10)
a=1
call sub(a(-10:10:1))
call sub(a(-9:10:1))
call sub(a(-8:10:1))
call sub(a(-7:10:1))
call sub(a(-6:10:1))
call sub(a(-5:10:1))
call sub(a(-4:10:1))
call sub(a(-3:10:1))
call sub(a(-2:10:1))
call sub(a(-1:10:1))
call sub(a(0:10:1))
call sub(a(1:10:1))
call sub(a(2:10:1))
call sub(a(3:10:1))
call sub(a(4:10:1))
call sub(a(5:10:1))
call sub(a(6:10:1))
call sub(a(7:10:1))
call sub(a(8:10:1))
call sub(a(9:10:1))
call sub(a(10:10:1))
call sub(a(-10:-10:-1))
call sub(a(-9:-10:-1))
call sub(a(-8:-10:-1))
call sub(a(-7:-10:-1))
call sub(a(-6:-10:-1))
call sub(a(-5:-10:-1))
call sub(a(-4:-10:-1))
call sub(a(-3:-10:-1))
call sub(a(-2:-10:-1))
call sub(a(-1:-10:-1))
call sub(a(0:-10:-1))
call sub(a(1:-10:-1))
call sub(a(2:-10:-1))
call sub(a(3:-10:-1))
call sub(a(4:-10:-1))
call sub(a(5:-10:-1))
call sub(a(6:-10:-1))
call sub(a(7:-10:-1))
call sub(a(8:-10:-1))
call sub(a(9:-10:-1))
call sub(a(10:-10:-1))
call sub(a(-10:10))
call sub(a(-9:10))
call sub(a(-8:10))
call sub(a(-7:10))
call sub(a(-6:10))
call sub(a(-5:10))
call sub(a(-4:10))
call sub(a(-3:10))
call sub(a(-2:10))
call sub(a(-1:10))
call sub(a(0:10))
call sub(a(1:10))
call sub(a(2:10))
call sub(a(3:10))
call sub(a(4:10))
call sub(a(5:10))
call sub(a(6:10))
call sub(a(7:10))
call sub(a(8:10))
call sub(a(9:10))
call sub(a(10:10))
call sub(a(-10::1))
call sub(a(-9::1))
call sub(a(-8::1))
call sub(a(-7::1))
call sub(a(-6::1))
call sub(a(-5::1))
call sub(a(-4::1))
call sub(a(-3::1))
call sub(a(-2::1))
call sub(a(-1::1))
call sub(a(0::1))
call sub(a(1::1))
call sub(a(2::1))
call sub(a(3::1))
call sub(a(4::1))
call sub(a(5::1))
call sub(a(6::1))
call sub(a(7::1))
call sub(a(8::1))
call sub(a(9::1))
call sub(a(10::1))
call sub(a(-1:))
call sub(a(-2:))
call sub(a(-3:))
call sub(a(-4:))
call sub(a(-5:))
call sub(a(-6:))
call sub(a(-7:))
call sub(a(-8:))
call sub(a(-9:))
call sub(a(-10:))
call sub(a(0:))
call sub(a(1:))
call sub(a(2:))
call sub(a(3:))
call sub(a(4:))
call sub(a(5:))
call sub(a(6:))
call sub(a(7:))
call sub(a(8:))
call sub(a(9:))
call sub(a(10:))
call sub(a(:))
call sub(a(0:-1))
call sub(a(2:1))
call sub(a(0:-1))
call sub(a(-1:0:-1))
call sub(a(-1::-1))
call sub(a(-1:-2))
call sub(a(-10:-1))
call sub(a(-10:-2))
call sub(a(-10:-3))
call sub(a(-1:-10:-1))
call sub(a(-2:-10:-1))
call sub(a(-3:-10:-1))
call sub(a(-4:-10:-1))
call sub(a(-5:-10:-1))
call sub(a(-6:-10:-1))
call sub(a(-7:-10:-1))
call sub(a(-8:-10:-1))
call sub(a(-9:-10:-1))
call sub(a(-10:-10:-2))
call sub(a(-1:-10:-3))
call sub(a(-2:-10:-4))
call sub(a(-3:-10:-5))
call sub(a(-4:-10:-6))
call sub(a(-5:-10:-7))
call sub(a(-6:-10:-8))
call sub(a(-7:-10:-9))
call sub(a(-8:-10:-10))
call sub(a(-9:-10:-2))
call sub(a(-10:-10:-3))
call sub(a(-10:-10:-2))
call sub(a(-10:-10:-4))
call sub(a(-10:-10:-5))
call sub(a(-10:-10:-6))
call sub(a(-10:-10:-7))
call sub(a(-10:-10:-8))
call sub(a(-10:-10:-9))
call sub(a(-10:-10:-10))
call sub(a(-10:-10:-13))
call sub(a(-10:-10:-33))
call sub(a(-10:-10:-2))
call sub(a(-9:-10:-2))
call sub(a(-8:-10:-2))
call sub(a(-7:-10:-2))
call sub(a(-6:-10:-2))
call sub(a(-5:-10:-2))
call sub(a(-4:-10:-2))
call sub(a(-3:-10:-2))
call sub(a(-2:-10:-2))
call sub(a(-1:-10:-2))
call sub(a(0:-10:-2))
call sub(a(1:-10:-2))
call sub(a(2:-10:-2))
call sub(a(3:-10:-2))
call sub(a(4:-10:-2))
call sub(a(5:-10:-2))
call sub(a(6:-10:-2))
call sub(a(7:-10:-2))
call sub(a(8:-10:-2))
call sub(a(9:-10:-2))
call sub(a(10:-10:-5))
call sub(a(-9:-10:-5))
call sub(a(-8:-10:-5))
call sub(a(-7:-10:-5))
call sub(a(-6:-10:-5))
call sub(a(-5:-10:-5))
call sub(a(-4:-10:-5))
call sub(a(-3:-10:-5))
call sub(a(-2:-10:-5))
call sub(a(-1:-10:-5))
call sub(a(0:-10:-5))
call sub(a(1:-10:-5))
call sub(a(2:-10:-5))
call sub(a(3:-10:-5))
call sub(a(4:-10:-5))
call sub(a(5:-10:-5))
call sub(a(6:-10:-5))
call sub(a(7:-10:-5))
call sub(a(8:-10:-5))
call sub(a(9:-10:-5))
call sub(a(10:-10:-5))
call sub(a(10:-10:-6))
call sub(a(-9:-10:-6))
call sub(a(-8:-10:-6))
call sub(a(-7:-10:-6))
call sub(a(-6:-10:-6))
call sub(a(-5:-10:-6))
call sub(a(-4:-10:-6))
call sub(a(-3:-10:-6))
call sub(a(-2:-10:-6))
call sub(a(-1:-10:-6))
call sub(a(0:-10:-6))
call sub(a(1:-10:-6))
call sub(a(2:-10:-6))
call sub(a(3:-10:-6))
call sub(a(4:-10:-6))
call sub(a(5:-10:-6))
call sub(a(6:-10:-6))
call sub(a(7:-10:-6))
call sub(a(8:-10:-6))
call sub(a(9:-10:-6))
call sub(a(10:-10:-6))
call sub(a(10:-10:-5))
call sub(a(10:-10:-7))
call sub(a(-9:-10:-7))
call sub(a(-8:-10:-7))
call sub(a(-7:-10:-7))
call sub(a(-6:-10:-7))
call sub(a(-5:-10:-7))
call sub(a(-4:-10:-7))
call sub(a(-3:-10:-7))
call sub(a(-2:-10:-7))
call sub(a(-1:-10:-7))
call sub(a(0:-10:-7))
call sub(a(1:-10:-7))
call sub(a(2:-10:-7))
call sub(a(3:-10:-7))
call sub(a(4:-10:-7))
call sub(a(5:-10:-7))
call sub(a(6:-10:-7))
call sub(a(7:-10:-7))
call sub(a(8:-10:-7))
call sub(a(9:-10:-7))
call sub(a(10:-10:-8))
call sub(a(-9:-10:-8))
call sub(a(-8:-10:-8))
call sub(a(-7:-10:-8))
call sub(a(-6:-10:-8))
call sub(a(-5:-10:-8))
call sub(a(-4:-10:-8))
call sub(a(-3:-10:-8))
call sub(a(-2:-10:-8))
call sub(a(-1:-10:-8))
call sub(a(0:-10:-8))
call sub(a(1:-10:-8))
call sub(a(2:-10:-8))
call sub(a(3:-10:-8))
call sub(a(4:-10:-8))
call sub(a(5:-10:-8))
call sub(a(6:-10:-8))
call sub(a(7:-10:-8))
call sub(a(8:-10:-8))
call sub(a(9:-10:-8))
call sub(a(10:-10:-9))
call sub(a(-9:-10:-9))
call sub(a(-8:-10:-9))
call sub(a(-7:-10:-9))
call sub(a(-6:-10:-9))
call sub(a(-5:-10:-9))
call sub(a(-4:-10:-9))
call sub(a(-3:-10:-9))
call sub(a(-2:-10:-9))
call sub(a(-1:-10:-9))
call sub(a(0:-10:-9))
call sub(a(1:-10:-9))
call sub(a(2:-10:-9))
call sub(a(3:-10:-9))
call sub(a(4:-10:-9))
call sub(a(5:-10:-9))
call sub(a(6:-10:-9))
call sub(a(7:-10:-9))
call sub(a(8:-10:-9))
call sub(a(9:-10:-9))
call sub(a(10:-10:-10))
call sub(a(-9:-10:-10))
call sub(a(-8:-10:-10))
call sub(a(-7:-10:-10))
call sub(a(-6:-10:-10))
call sub(a(-5:-10:-10))
call sub(a(-4:-10:-10))
call sub(a(-3:-10:-10))
call sub(a(-2:-10:-10))
call sub(a(-1:-10:-10))
call sub(a(0:-10:-10))
call sub(a(1:-10:-10))
call sub(a(2:-10:-10))
call sub(a(3:-10:-10))
call sub(a(4:-10:-10))
call sub(a(5:-10:-10))
call sub(a(6:-10:-10))
call sub(a(7:-10:-10))
call sub(a(8:-10:-10))
call sub(a(9:-10:-10))
call sub(a(10:-10:-11))
call sub(a(-9:-10:-11))
call sub(a(-8:-10:-11))
call sub(a(-7:-10:-11))
call sub(a(-6:-10:-11))
call sub(a(-5:-10:-11))
call sub(a(-4:-10:-11))
call sub(a(-3:-10:-11))
call sub(a(-2:-10:-11))
call sub(a(-1:-10:-11))
call sub(a(0:-10:-11))
call sub(a(1:-10:-11))
call sub(a(2:-10:-11))
call sub(a(3:-10:-11))
call sub(a(4:-10:-11))
call sub(a(5:-10:-11))
call sub(a(6:-10:-11))
call sub(a(7:-10:-11))
call sub(a(8:-10:-11))
call sub(a(9:-10:-11))
call sub(a(10:-10:-16))
call sub(a(-9:-10:-16))
call sub(a(-8:-10:-16))
call sub(a(-7:-10:-16))
call sub(a(-6:-10:-16))
call sub(a(-5:-10:-16))
call sub(a(-4:-10:-16))
call sub(a(-3:-10:-16))
call sub(a(-2:-10:-16))
call sub(a(-1:-10:-16))
call sub(a(0:-10:-16))
call sub(a(1:-10:-16))
call sub(a(2:-10:-16))
call sub(a(3:-10:-16))
call sub(a(4:-10:-16))
call sub(a(5:-10:-16))
call sub(a(6:-10:-16))
call sub(a(7:-10:-16))
call sub(a(8:-10:-16))
call sub(a(9:-10:-16))
call sub(a(10:-10:-26))
call sub(a(-9:-10:-26))
call sub(a(-8:-10:-26))
call sub(a(-7:-10:-26))
call sub(a(-6:-10:-26))
call sub(a(-5:-10:-26))
call sub(a(-4:-10:-26))
call sub(a(-3:-10:-26))
call sub(a(-2:-10:-26))
call sub(a(-1:-10:-26))
call sub(a(0:-10:-26))
call sub(a(1:-10:-26))
call sub(a(2:-10:-26))
call sub(a(3:-10:-26))
call sub(a(4:-10:-26))
call sub(a(5:-10:-26))
call sub(a(6:-10:-26))
call sub(a(7:-10:-26))
call sub(a(8:-10:-26))
call sub(a(9:-10:-26))
call sub(a(10:-11:-26))
call sub(a(-9:-11:-26))
call sub(a(-8:-11:-26))
call sub(a(-7:-11:-26))
call sub(a(-6:-11:-26))
call sub(a(-5:-11:-26))
call sub(a(-4:-11:-26))
call sub(a(-3:-11:-26))
call sub(a(-2:-11:-26))
call sub(a(-1:-11:-26))
call sub(a(0:-11:-26))
call sub(a(1:-11:-26))
call sub(a(2:-11:-26))
call sub(a(3:-11:-26))
call sub(a(4:-11:-26))
call sub(a(5:-11:-26))
call sub(a(6:-11:-26))
call sub(a(7:-11:-26))
call sub(a(8:-11:-26))
call sub(a(9:-11:-26))
call sub(a(10:-15:-26))
call sub(a(-9:-15:-26))
call sub(a(-8:-15:-26))
call sub(a(-7:-15:-26))
call sub(a(-6:-15:-26))
call sub(a(-5:-15:-26))
call sub(a(-4:-15:-26))
call sub(a(-3:-15:-26))
call sub(a(-2:-15:-26))
call sub(a(-1:-15:-26))
call sub(a(0:-15:-26))
call sub(a(1:-15:-26))
call sub(a(2:-15:-26))
call sub(a(3:-15:-26))
call sub(a(4:-15:-26))
call sub(a(5:-15:-26))
call sub(a(6:-15:-26))
call sub(a(7:-15:-26))
call sub(a(8:-15:-26))
call sub(a(9:-15:-26))
end subroutine

subroutine sub4()
integer a(-10:0)
a=1
call sub(a(-10:0:1))
call sub(a(-9:0:1))
call sub(a(-8:0:1))
call sub(a(-7:0:1))
call sub(a(-6:0:1))
call sub(a(-5:0:1))
call sub(a(-4:0:1))
call sub(a(-3:0:1))
call sub(a(-2:0:1))
call sub(a(-1:0:1))
call sub(a(0:0:1))
call sub(a(1:0:1))
call sub(a(2:0:1))
call sub(a(3:0:1))
call sub(a(4:0:1))
call sub(a(5:0:1))
call sub(a(6:0:1))
call sub(a(7:0:1))
call sub(a(8:0:1))
call sub(a(9:0:1))
call sub(a(10:0:1))
call sub(a(-10:-0:-1))
call sub(a(-9:-0:-1))
call sub(a(-8:-0:-1))
call sub(a(-7:-0:-1))
call sub(a(-6:-0:-1))
call sub(a(-5:-0:-1))
call sub(a(-4:-0:-1))
call sub(a(-3:-0:-1))
call sub(a(-2:-0:-1))
call sub(a(-1:-0:-1))
call sub(a(0:-0:-1))
call sub(a(1:0:1))
call sub(a(2:0:1))
call sub(a(3:0:1))
call sub(a(4:0:1))
call sub(a(5:0:1))
call sub(a(6:0:1))
call sub(a(7:0:1))
call sub(a(8:0:1))
call sub(a(9:0:1))
call sub(a(10:0:1))
call sub(a(-10:0))
call sub(a(-9:0))
call sub(a(-8:0))
call sub(a(-7:0))
call sub(a(-6:0))
call sub(a(-5:0))
call sub(a(-4:0))
call sub(a(-3:0))
call sub(a(-2:0))
call sub(a(-1:0))
call sub(a(0:0))
call sub(a(1:0))
call sub(a(2:0))
call sub(a(3:0))
call sub(a(4:0))
call sub(a(5:0))
call sub(a(6:0))
call sub(a(7:0))
call sub(a(8:0))
call sub(a(9:0))
call sub(a(10:0))
call sub(a(-10::1))
call sub(a(-9::1))
call sub(a(-8::1))
call sub(a(-7::1))
call sub(a(-6::1))
call sub(a(-5::1))
call sub(a(-4::1))
call sub(a(-3::1))
call sub(a(-2::1))
call sub(a(-1::1))
call sub(a(0::1))
call sub(a(1::1))
call sub(a(2::1))
call sub(a(3::1))
call sub(a(4::1))
call sub(a(5::1))
call sub(a(6::1))
call sub(a(7::1))
call sub(a(8::1))
call sub(a(9::1))
call sub(a(10::1))
call sub(a(-1:))
call sub(a(-2:))
call sub(a(-3:))
call sub(a(-4:))
call sub(a(-5:))
call sub(a(-6:))
call sub(a(-7:))
call sub(a(-8:))
call sub(a(-9:))
call sub(a(-10:))
call sub(a(0:))
call sub(a(1:))
call sub(a(2:))
call sub(a(3:))
call sub(a(4:))
call sub(a(5:))
call sub(a(6:))
call sub(a(7:))
call sub(a(8:))
call sub(a(9:))
call sub(a(10:))
call sub(a(:))
call sub(a(0:-1))
call sub(a(2:1))
call sub(a(0:-1))
call sub(a(-1:0:-1))
call sub(a(-1::-1))
call sub(a(-1:-2))
call sub(a(-10:-1))
call sub(a(-10:-2))
call sub(a(-10:-3))
call sub(a(-1:-0:-1))
call sub(a(-2:-0:-1))
call sub(a(-3:-0:-1))
call sub(a(-4:-0:-1))
call sub(a(-5:-0:-1))
call sub(a(-6:-0:-1))
call sub(a(-7:-0:-1))
call sub(a(-8:-0:-1))
call sub(a(-9:-0:-1))
end subroutine

subroutine sub5()
integer a(-10:-1)
a=1
call sub(a(-10:-1:1))
call sub(a(-9:-1:1))
call sub(a(-8:-1:1))
call sub(a(-7:-1:1))
call sub(a(-6:-1:1))
call sub(a(-5:-1:1))
call sub(a(-4:-1:1))
call sub(a(-3:-1:1))
call sub(a(-2:-1:1))
call sub(a(-1:-1:1))
call sub(a(0:-1:1))
call sub(a(1:-1:1))
call sub(a(2:-1:1))
call sub(a(3:-1:1))
call sub(a(4:-1:1))
call sub(a(5:-1:1))
call sub(a(6:-1:1))
call sub(a(7:-1:1))
call sub(a(8:-1:1))
call sub(a(9:-1:1))
call sub(a(10:-1:1))
call sub(a(-10:-1:-1))
call sub(a(-9:-1:-1))
call sub(a(-8:-1:-1))
call sub(a(-7:-1:-1))
call sub(a(-6:-1:-1))
call sub(a(-5:-1:-1))
call sub(a(-4:-1:-1))
call sub(a(-3:-1:-1))
call sub(a(-2:-1:-1))
call sub(a(-1:-1:-1))
call sub(a(0:-1:1))
call sub(a(1:0:2))
call sub(a(2:1:1))
call sub(a(3:1:1))
call sub(a(4:1:1))
call sub(a(5:1:1))
call sub(a(6:1:1))
call sub(a(7:1:1))
call sub(a(8:1:1))
call sub(a(9:1:1))
call sub(a(10:1:1))
call sub(a(-10:-1))
call sub(a(-9:-1))
call sub(a(-8:-1))
call sub(a(-7:-1))
call sub(a(-6:-1))
call sub(a(-5:-1))
call sub(a(-4:-1))
call sub(a(-3:-1))
call sub(a(-2:-1))
call sub(a(-1:-1))
call sub(a(0:-1))
call sub(a(1:-1))
call sub(a(-10::1))
call sub(a(-9::1))
call sub(a(-8::1))
call sub(a(-7::1))
call sub(a(-6::1))
call sub(a(-5::1))
call sub(a(-4::1))
call sub(a(-3::1))
call sub(a(-2::1))
call sub(a(-1::1))
call sub(a(0::1))
call sub(a(1::1))
call sub(a(2::1))
call sub(a(3::1))
call sub(a(4::1))
call sub(a(5::1))
call sub(a(6::1))
call sub(a(7::1))
call sub(a(8::1))
call sub(a(9::1))
call sub(a(10::1))
call sub(a(-1:))
call sub(a(-2:))
call sub(a(-3:))
call sub(a(-4:))
call sub(a(-5:))
call sub(a(-6:))
call sub(a(-7:))
call sub(a(-8:))
call sub(a(-9:))
call sub(a(-10:))
call sub(a(0:))
call sub(a(1:))
call sub(a(2:))
call sub(a(3:))
call sub(a(4:))
call sub(a(5:))
call sub(a(6:))
call sub(a(7:))
call sub(a(8:))
call sub(a(9:))
call sub(a(10:))
call sub(a(:))
call sub(a(0:-1))
call sub(a(2:1))
call sub(a(0:-1))
call sub(a(-1:0:-1))
call sub(a(-1::-1))
call sub(a(-1:-2))
call sub(a(-10:-1))
call sub(a(-10:-2))
call sub(a(-10:-3))
call sub(a(-1:-2:-1))
call sub(a(-2:-2:-1))
call sub(a(-3:-2:-1))
call sub(a(-4:-2:-1))
call sub(a(-5:-0:-1))
call sub(a(-6:-2:-1))
call sub(a(-7:-2:-1))
call sub(a(-8:-2:-1))
call sub(a(-9:-2:-1))
end subroutine

subroutine suba1(a,i)
integer a(i)
a=1
call sub(a(1:10:1))
call sub(a(2:10:1))
call sub(a(3:10:1))
call sub(a(4:10:1))
call sub(a(5:10:1))
call sub(a(6:10:1))
call sub(a(7:10:1))
call sub(a(8:10:1))
call sub(a(9:10:1))
call sub(a(10:10:1))
call sub(a(1:1:-1))
call sub(a(2:1:-1))
call sub(a(3:1:-1))
call sub(a(4:1:-1))
call sub(a(5:1:-1))
call sub(a(6:1:-1))
call sub(a(7:1:-1))
call sub(a(8:1:-1))
call sub(a(9:1:-1))
call sub(a(10:1:-1))
call sub(a(1:10))
call sub(a(2:10))
call sub(a(3:10))
call sub(a(4:10))
call sub(a(5:10))
call sub(a(6:10))
call sub(a(7:10))
call sub(a(8:10))
call sub(a(9:10))
call sub(a(10:10))
call sub(a(1::1))
call sub(a(2::1))
call sub(a(3::1))
call sub(a(4::1))
call sub(a(5::1))
call sub(a(6::1))
call sub(a(7::1))
call sub(a(8::1))
call sub(a(9::1))
call sub(a(10::1))
call sub(a(1:))
call sub(a(2:))
call sub(a(3:))
call sub(a(4:))
call sub(a(5:))
call sub(a(6:))
call sub(a(7:))
call sub(a(8:))
call sub(a(9:))
call sub(a(10:))
call sub(a(:))
call sub(a(1:-1))
call sub(a(2:1))
call sub(a(0:-1))
call sub(a(-1:1:-1))
call sub(a(-1::-1))
call sub(a(-1:-2))
end subroutine

subroutine suba2(a,i,j)
integer a(i:j)
a=1
call sub(a(0:10:1))
call sub(a(1:10:1))
call sub(a(2:10:1))
call sub(a(3:10:1))
call sub(a(4:10:1))
call sub(a(5:10:1))
call sub(a(6:10:1))
call sub(a(7:10:1))
call sub(a(8:10:1))
call sub(a(9:10:1))
call sub(a(10:10:1))
call sub(a(1:0:-1))
call sub(a(1:0:-1))
call sub(a(2:0:-1))
call sub(a(3:0:-1))
call sub(a(4:0:-1))
call sub(a(5:0:-1))
call sub(a(6:0:-1))
call sub(a(7:0:-1))
call sub(a(8:0:-1))
call sub(a(9:0:-1))
call sub(a(10:0:-1))
call sub(a(0:10))
call sub(a(1:10))
call sub(a(2:10))
call sub(a(3:10))
call sub(a(4:10))
call sub(a(5:10))
call sub(a(6:10))
call sub(a(7:10))
call sub(a(8:10))
call sub(a(9:10))
call sub(a(10:10))
call sub(a(0::1))
call sub(a(1::1))
call sub(a(2::1))
call sub(a(3::1))
call sub(a(4::1))
call sub(a(5::1))
call sub(a(6::1))
call sub(a(7::1))
call sub(a(8::1))
call sub(a(9::1))
call sub(a(10::1))
call sub(a(0:))
call sub(a(1:))
call sub(a(2:))
call sub(a(3:))
call sub(a(4:))
call sub(a(5:))
call sub(a(6:))
call sub(a(7:))
call sub(a(8:))
call sub(a(9:))
call sub(a(10:))
call sub(a(:))
call sub(a(0:-1))
call sub(a(2:1))
call sub(a(0:-1))
call sub(a(-1:0:-1))
call sub(a(-1::-1))
call sub(a(-1:-2))
end subroutine

subroutine suba3(a,i)
integer a(i:10)
a=1
call sub(a(-10:10:1))
call sub(a(-9:10:1))
call sub(a(-8:10:1))
call sub(a(-7:10:1))
call sub(a(-6:10:1))
call sub(a(-5:10:1))
call sub(a(-4:10:1))
call sub(a(-3:10:1))
call sub(a(-2:10:1))
call sub(a(-1:10:1))
call sub(a(0:10:1))
call sub(a(1:10:1))
call sub(a(2:10:1))
call sub(a(3:10:1))
call sub(a(4:10:1))
call sub(a(5:10:1))
call sub(a(6:10:1))
call sub(a(7:10:1))
call sub(a(8:10:1))
call sub(a(9:10:1))
call sub(a(10:10:1))
call sub(a(-10:-10:-1))
call sub(a(-9:-10:-1))
call sub(a(-8:-10:-1))
call sub(a(-7:-10:-1))
call sub(a(-6:-10:-1))
call sub(a(-5:-10:-1))
call sub(a(-4:-10:-1))
call sub(a(-3:-10:-1))
call sub(a(-2:-10:-1))
call sub(a(-1:-10:-1))
call sub(a(0:-10:-1))
call sub(a(1:-10:-1))
call sub(a(2:-10:-1))
call sub(a(3:-10:-1))
call sub(a(4:-10:-1))
call sub(a(5:-10:-1))
call sub(a(6:-10:-1))
call sub(a(7:-10:-1))
call sub(a(8:-10:-1))
call sub(a(9:-10:-1))
call sub(a(10:-10:-1))
call sub(a(-10:10))
call sub(a(-9:10))
call sub(a(-8:10))
call sub(a(-7:10))
call sub(a(-6:10))
call sub(a(-5:10))
call sub(a(-4:10))
call sub(a(-3:10))
call sub(a(-2:10))
call sub(a(-1:10))
call sub(a(0:10))
call sub(a(1:10))
call sub(a(2:10))
call sub(a(3:10))
call sub(a(4:10))
call sub(a(5:10))
call sub(a(6:10))
call sub(a(7:10))
call sub(a(8:10))
call sub(a(9:10))
call sub(a(10:10))
call sub(a(-10::1))
call sub(a(-9::1))
call sub(a(-8::1))
call sub(a(-7::1))
call sub(a(-6::1))
call sub(a(-5::1))
call sub(a(-4::1))
call sub(a(-3::1))
call sub(a(-2::1))
call sub(a(-1::1))
call sub(a(0::1))
call sub(a(1::1))
call sub(a(2::1))
call sub(a(3::1))
call sub(a(4::1))
call sub(a(5::1))
call sub(a(6::1))
call sub(a(7::1))
call sub(a(8::1))
call sub(a(9::1))
call sub(a(10::1))
call sub(a(-1:))
call sub(a(-2:))
call sub(a(-3:))
call sub(a(-4:))
call sub(a(-5:))
call sub(a(-6:))
call sub(a(-7:))
call sub(a(-8:))
call sub(a(-9:))
call sub(a(-10:))
call sub(a(0:))
call sub(a(1:))
call sub(a(2:))
call sub(a(3:))
call sub(a(4:))
call sub(a(5:))
call sub(a(6:))
call sub(a(7:))
call sub(a(8:))
call sub(a(9:))
call sub(a(10:))
call sub(a(:))
call sub(a(0:-1))
call sub(a(2:1))
call sub(a(0:-1))
call sub(a(-1:0:-1))
call sub(a(-1::-1))
call sub(a(-1:-2))
call sub(a(-10:-1))
call sub(a(-10:-2))
call sub(a(-10:-3))
call sub(a(-1:-10:-1))
call sub(a(-2:-10:-1))
call sub(a(-3:-10:-1))
call sub(a(-4:-10:-1))
call sub(a(-5:-10:-1))
call sub(a(-6:-10:-1))
call sub(a(-7:-10:-1))
call sub(a(-8:-10:-1))
call sub(a(-9:-10:-1))
call sub(a(-10:-10:-2))
call sub(a(-1:-10:-3))
call sub(a(-2:-10:-4))
call sub(a(-3:-10:-5))
call sub(a(-4:-10:-6))
call sub(a(-5:-10:-7))
call sub(a(-6:-10:-8))
call sub(a(-7:-10:-9))
call sub(a(-8:-10:-10))
call sub(a(-9:-10:-2))
call sub(a(-10:-10:-3))
call sub(a(-10:-10:-2))
call sub(a(-10:-10:-4))
call sub(a(-10:-10:-5))
call sub(a(-10:-10:-6))
call sub(a(-10:-10:-7))
call sub(a(-10:-10:-8))
call sub(a(-10:-10:-9))
call sub(a(-10:-10:-10))
call sub(a(-10:-10:-13))
call sub(a(-10:-10:-33))
call sub(a(-10:-10:-2))
call sub(a(-9:-10:-2))
call sub(a(-8:-10:-2))
call sub(a(-7:-10:-2))
call sub(a(-6:-10:-2))
call sub(a(-5:-10:-2))
call sub(a(-4:-10:-2))
call sub(a(-3:-10:-2))
call sub(a(-2:-10:-2))
call sub(a(-1:-10:-2))
call sub(a(0:-10:-2))
call sub(a(1:-10:-2))
call sub(a(2:-10:-2))
call sub(a(3:-10:-2))
call sub(a(4:-10:-2))
call sub(a(5:-10:-2))
call sub(a(6:-10:-2))
call sub(a(7:-10:-2))
call sub(a(8:-10:-2))
call sub(a(9:-10:-2))
call sub(a(10:-10:-5))
call sub(a(-9:-10:-5))
call sub(a(-8:-10:-5))
call sub(a(-7:-10:-5))
call sub(a(-6:-10:-5))
call sub(a(-5:-10:-5))
call sub(a(-4:-10:-5))
call sub(a(-3:-10:-5))
call sub(a(-2:-10:-5))
call sub(a(-1:-10:-5))
call sub(a(0:-10:-5))
call sub(a(1:-10:-5))
call sub(a(2:-10:-5))
call sub(a(3:-10:-5))
call sub(a(4:-10:-5))
call sub(a(5:-10:-5))
call sub(a(6:-10:-5))
call sub(a(7:-10:-5))
call sub(a(8:-10:-5))
call sub(a(9:-10:-5))
call sub(a(10:-10:-5))
call sub(a(10:-10:-6))
call sub(a(-9:-10:-6))
call sub(a(-8:-10:-6))
call sub(a(-7:-10:-6))
call sub(a(-6:-10:-6))
call sub(a(-5:-10:-6))
call sub(a(-4:-10:-6))
call sub(a(-3:-10:-6))
call sub(a(-2:-10:-6))
call sub(a(-1:-10:-6))
call sub(a(0:-10:-6))
call sub(a(1:-10:-6))
call sub(a(2:-10:-6))
call sub(a(3:-10:-6))
call sub(a(4:-10:-6))
call sub(a(5:-10:-6))
call sub(a(6:-10:-6))
call sub(a(7:-10:-6))
call sub(a(8:-10:-6))
call sub(a(9:-10:-6))
call sub(a(10:-10:-6))
call sub(a(10:-10:-5))
call sub(a(10:-10:-7))
call sub(a(-9:-10:-7))
call sub(a(-8:-10:-7))
call sub(a(-7:-10:-7))
call sub(a(-6:-10:-7))
call sub(a(-5:-10:-7))
call sub(a(-4:-10:-7))
call sub(a(-3:-10:-7))
call sub(a(-2:-10:-7))
call sub(a(-1:-10:-7))
call sub(a(0:-10:-7))
call sub(a(1:-10:-7))
call sub(a(2:-10:-7))
call sub(a(3:-10:-7))
call sub(a(4:-10:-7))
call sub(a(5:-10:-7))
call sub(a(6:-10:-7))
call sub(a(7:-10:-7))
call sub(a(8:-10:-7))
call sub(a(9:-10:-7))
call sub(a(10:-10:-8))
call sub(a(-9:-10:-8))
call sub(a(-8:-10:-8))
call sub(a(-7:-10:-8))
call sub(a(-6:-10:-8))
call sub(a(-5:-10:-8))
call sub(a(-4:-10:-8))
call sub(a(-3:-10:-8))
call sub(a(-2:-10:-8))
call sub(a(-1:-10:-8))
call sub(a(0:-10:-8))
call sub(a(1:-10:-8))
call sub(a(2:-10:-8))
call sub(a(3:-10:-8))
call sub(a(4:-10:-8))
call sub(a(5:-10:-8))
call sub(a(6:-10:-8))
call sub(a(7:-10:-8))
call sub(a(8:-10:-8))
call sub(a(9:-10:-8))
call sub(a(10:-10:-9))
call sub(a(-9:-10:-9))
call sub(a(-8:-10:-9))
call sub(a(-7:-10:-9))
call sub(a(-6:-10:-9))
call sub(a(-5:-10:-9))
call sub(a(-4:-10:-9))
call sub(a(-3:-10:-9))
call sub(a(-2:-10:-9))
call sub(a(-1:-10:-9))
call sub(a(0:-10:-9))
call sub(a(1:-10:-9))
call sub(a(2:-10:-9))
call sub(a(3:-10:-9))
call sub(a(4:-10:-9))
call sub(a(5:-10:-9))
call sub(a(6:-10:-9))
call sub(a(7:-10:-9))
call sub(a(8:-10:-9))
call sub(a(9:-10:-9))
call sub(a(10:-10:-10))
call sub(a(-9:-10:-10))
call sub(a(-8:-10:-10))
call sub(a(-7:-10:-10))
call sub(a(-6:-10:-10))
call sub(a(-5:-10:-10))
call sub(a(-4:-10:-10))
call sub(a(-3:-10:-10))
call sub(a(-2:-10:-10))
call sub(a(-1:-10:-10))
call sub(a(0:-10:-10))
call sub(a(1:-10:-10))
call sub(a(2:-10:-10))
call sub(a(3:-10:-10))
call sub(a(4:-10:-10))
call sub(a(5:-10:-10))
call sub(a(6:-10:-10))
call sub(a(7:-10:-10))
call sub(a(8:-10:-10))
call sub(a(9:-10:-10))
call sub(a(10:-10:-11))
call sub(a(-9:-10:-11))
call sub(a(-8:-10:-11))
call sub(a(-7:-10:-11))
call sub(a(-6:-10:-11))
call sub(a(-5:-10:-11))
call sub(a(-4:-10:-11))
call sub(a(-3:-10:-11))
call sub(a(-2:-10:-11))
call sub(a(-1:-10:-11))
call sub(a(0:-10:-11))
call sub(a(1:-10:-11))
call sub(a(2:-10:-11))
call sub(a(3:-10:-11))
call sub(a(4:-10:-11))
call sub(a(5:-10:-11))
call sub(a(6:-10:-11))
call sub(a(7:-10:-11))
call sub(a(8:-10:-11))
call sub(a(9:-10:-11))
call sub(a(10:-10:-16))
call sub(a(-9:-10:-16))
call sub(a(-8:-10:-16))
call sub(a(-7:-10:-16))
call sub(a(-6:-10:-16))
call sub(a(-5:-10:-16))
call sub(a(-4:-10:-16))
call sub(a(-3:-10:-16))
call sub(a(-2:-10:-16))
call sub(a(-1:-10:-16))
call sub(a(0:-10:-16))
call sub(a(1:-10:-16))
call sub(a(2:-10:-16))
call sub(a(3:-10:-16))
call sub(a(4:-10:-16))
call sub(a(5:-10:-16))
call sub(a(6:-10:-16))
call sub(a(7:-10:-16))
call sub(a(8:-10:-16))
call sub(a(9:-10:-16))
call sub(a(10:-10:-26))
call sub(a(-9:-10:-26))
call sub(a(-8:-10:-26))
call sub(a(-7:-10:-26))
call sub(a(-6:-10:-26))
call sub(a(-5:-10:-26))
call sub(a(-4:-10:-26))
call sub(a(-3:-10:-26))
call sub(a(-2:-10:-26))
call sub(a(-1:-10:-26))
call sub(a(0:-10:-26))
call sub(a(1:-10:-26))
call sub(a(2:-10:-26))
call sub(a(3:-10:-26))
call sub(a(4:-10:-26))
call sub(a(5:-10:-26))
call sub(a(6:-10:-26))
call sub(a(7:-10:-26))
call sub(a(8:-10:-26))
call sub(a(9:-10:-26))
call sub(a(10:-11:-26))
call sub(a(-9:-11:-26))
call sub(a(-8:-11:-26))
call sub(a(-7:-11:-26))
call sub(a(-6:-11:-26))
call sub(a(-5:-11:-26))
call sub(a(-4:-11:-26))
call sub(a(-3:-11:-26))
call sub(a(-2:-11:-26))
call sub(a(-1:-11:-26))
call sub(a(0:-11:-26))
call sub(a(1:-11:-26))
call sub(a(2:-11:-26))
call sub(a(3:-11:-26))
call sub(a(4:-11:-26))
call sub(a(5:-11:-26))
call sub(a(6:-11:-26))
call sub(a(7:-11:-26))
call sub(a(8:-11:-26))
call sub(a(9:-11:-26))
call sub(a(10:-15:-26))
call sub(a(-9:-15:-26))
call sub(a(-8:-15:-26))
call sub(a(-7:-15:-26))
call sub(a(-6:-15:-26))
call sub(a(-5:-15:-26))
call sub(a(-4:-15:-26))
call sub(a(-3:-15:-26))
call sub(a(-2:-15:-26))
call sub(a(-1:-15:-26))
call sub(a(0:-15:-26))
call sub(a(1:-15:-26))
call sub(a(2:-15:-26))
call sub(a(3:-15:-26))
call sub(a(4:-15:-26))
call sub(a(5:-15:-26))
call sub(a(6:-15:-26))
call sub(a(7:-15:-26))
call sub(a(8:-15:-26))
call sub(a(9:-15:-26))
end subroutine

subroutine subb1(a)
integer a(*)
a(1:10)=1
call sub(a(1:10:1))
call sub(a(2:10:1))
call sub(a(3:10:1))
call sub(a(4:10:1))
call sub(a(5:10:1))
call sub(a(6:10:1))
call sub(a(7:10:1))
call sub(a(8:10:1))
call sub(a(9:10:1))
call sub(a(10:10:1))
call sub(a(1:1:-1))
call sub(a(2:1:-1))
call sub(a(3:1:-1))
call sub(a(4:1:-1))
call sub(a(5:1:-1))
call sub(a(6:1:-1))
call sub(a(7:1:-1))
call sub(a(8:1:-1))
call sub(a(9:1:-1))
call sub(a(10:1:-1))
call sub(a(1:10))
call sub(a(2:10))
call sub(a(3:10))
call sub(a(4:10))
call sub(a(5:10))
call sub(a(6:10))
call sub(a(7:10))
call sub(a(8:10))
call sub(a(9:10))
call sub(a(10:10))
call sub(a(1:9:1))
call sub(a(2:9:1))
call sub(a(3:9:1))
call sub(a(4:9:1))
call sub(a(5:9:1))
call sub(a(6:9:1))
call sub(a(7:9:1))
call sub(a(8:9:1))
call sub(a(9:9:1))
call sub(a(10:10:1))
call sub(a(1:-1))
call sub(a(2:1))
call sub(a(0:-1))
call sub(a(-1:1:-1))
call sub(a(-1:10:-1))
call sub(a(-1:-2))
end subroutine

subroutine subb2(a)
integer a(:)
a=1
call sub(a(1:10:1))
call sub(a(2:10:1))
call sub(a(3:10:1))
call sub(a(4:10:1))
call sub(a(5:10:1))
call sub(a(6:10:1))
call sub(a(7:10:1))
call sub(a(8:10:1))
call sub(a(9:10:1))
call sub(a(10:10:1))
call sub(a(1:1:-1))
call sub(a(2:1:-1))
call sub(a(3:1:-1))
call sub(a(4:1:-1))
call sub(a(5:1:-1))
call sub(a(6:1:-1))
call sub(a(7:1:-1))
call sub(a(8:1:-1))
call sub(a(9:1:-1))
call sub(a(10:1:-1))
call sub(a(1:10))
call sub(a(2:10))
call sub(a(3:10))
call sub(a(4:10))
call sub(a(5:10))
call sub(a(6:10))
call sub(a(7:10))
call sub(a(8:10))
call sub(a(9:10))
call sub(a(10:10))
call sub(a(1::1))
call sub(a(2::1))
call sub(a(3::1))
call sub(a(4::1))
call sub(a(5::1))
call sub(a(6::1))
call sub(a(7::1))
call sub(a(8::1))
call sub(a(9::1))
call sub(a(10::1))
call sub(a(1:))
call sub(a(2:))
call sub(a(3:))
call sub(a(4:))
call sub(a(5:))
call sub(a(6:))
call sub(a(7:))
call sub(a(8:))
call sub(a(9:))
call sub(a(10:))
call sub(a(:))
call sub(a(1:-1))
call sub(a(2:1))
call sub(a(0:-1))
call sub(a(-1:1:-1))
call sub(a(-1::-1))
call sub(a(-1:-2))
end subroutine