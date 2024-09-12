call test01()
call test02()
call test03()
call test04()
print *,"pass"
end

subroutine test01()
enum, bind(c)
 enumerator :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10
 enumerator :: a11,a12,a13,a14,a15,a16,a17,a18,a19,a20
 enumerator :: a21,a22,a23,a24,a25,a26,a27,a28,a29,a30
 enumerator :: a31,a32,a33,a34,a35,a36,a37,a38,a39,a40
 enumerator :: a41,a42,a43,a44,a45,a46,a47,a48,a49,a50
end enum
if (a01.ne.0) call errtra
if (a50.ne.49) call errtra
call sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10)
call sub(a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
call sub(a21,a22,a23,a24,a25,a26,a27,a28,a29,a30)
call sub(a31,a32,a33,a34,a35,a36,a37,a38,a39,a40)
call sub(a41,a42,a43,a44,a45,a46,a47,a48,a49,a50)
contains
subroutine sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10)
integer :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10
i=a01+a02+a03+a04+a05+a06+a07+a08+a09+a10
i=i
end subroutine
end

subroutine test02()
enum, bind(c)
 enumerator :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10
 enumerator :: a11,a12,a13,a14,a15,a16,a17,a18,a19,a20
 enumerator :: a21,a22,a23,a24,a25,a26,a27,a28,a29,a30
 enumerator :: a31,a32,a33,a34,a35,a36,a37,a38,a39,a40
 enumerator :: a41=1,a42,a43,a44,a45,a46,a47,a48,a49,a50
end enum
if (a01.ne.0) call errtra
if (a50.ne.10) call errtra
call sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10)
call sub(a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
call sub(a21,a22,a23,a24,a25,a26,a27,a28,a29,a30)
call sub(a31,a32,a33,a34,a35,a36,a37,a38,a39,a40)
call sub(a41,a42,a43,a44,a45,a46,a47,a48,a49,a50)
contains
subroutine sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10)
integer :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10
i=a01+a02+a03+a04+a05+a06+a07+a08+a09+a10
i=i
end subroutine
end

subroutine test03()
enum, bind(c)
 enumerator :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10
 enumerator :: a11,a12,a13,a14,a15,a16,a17,a18,a19,a20
 enumerator :: a21,a22,a23,a24,a25,a26,a27,a28,a29,a30
 enumerator :: a31,a32,a33,a34,a35,a36,a37,a38,a39,a40
 enumerator :: a41,a42,a43,a44,a45,a46,a47,a48,a49=55,a50
end enum
if (a01.ne.0) call errtra
if (a50.ne.56) call errtra
call sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10)
call sub(a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
call sub(a21,a22,a23,a24,a25,a26,a27,a28,a29,a30)
call sub(a31,a32,a33,a34,a35,a36,a37,a38,a39,a40)
call sub(a41,a42,a43,a44,a45,a46,a47,a48,a49,a50)
contains
subroutine sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10)
integer :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10
i=a01+a02+a03+a04+a05+a06+a07+a08+a09+a10
i=i
end subroutine
end

subroutine test04()
enum, bind(c)
 enumerator :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10
 enumerator :: a11,a12,a13,a14,a15,a16,a17,a18,a19,a20
 enumerator :: a21,a22,a23,a24,a25,a26,a27,a28,a29,a30
 enumerator :: a31,a32,a33,a34,a35,a36,a37,a38,a39,a40
 enumerator :: a41,a42,a43,a44,a45,a46,a47,a48,a49=55,a50
 enumerator :: enumerator
end enum
if (a01.ne.0) call errtra
if (a50.ne.56) call errtra
if (enumerator.ne.57) call errtra
call sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10)
call sub(a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)
call sub(a21,a22,a23,a24,a25,a26,a27,a28,a29,a30)
call sub(a31,a32,a33,a34,a35,a36,a37,a38,a39,a40)
call sub(a41,a42,a43,a44,a45,a46,a47,a48,a49,a50)
contains
subroutine sub(a01,a02,a03,a04,a05,a06,a07,a08,a09,a10)
integer :: a01,a02,a03,a04,a05,a06,a07,a08,a09,a10
i=a01+a02+a03+a04+a05+a06+a07+a08+a09+a10
i=i
end subroutine
end

