subroutine init_a(a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,n)
real(8),dimension(1:n) :: a00,a01,a02,a03,a04,a05,a06,a07,a08,a09
a00 = 0
a01 = 0
a02 = 0
a03 = 0
a04 = 0
a05 = 0
a06 = 0
a07 = 0
a08 = 0
a09 = 0
end subroutine

subroutine connect_ouds(&
  a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,&
  a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,&
  a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,&
  a30,a31,a32,a33,a34,a35,a36,a37,a38,a39,&
  a40,a41,a42,a43,a44,a45,a46,a47,a48,a49,&
  a50,a51,a52,a53,a54,a55,a56,a57,a58,a59,&
  a60,a61,a62,a63,a64,a65,a66,a67,a68,a69,&
  a70,a71,a72,a73,a74,a75,a76,a77,a78,a79,&
  a80,a81,a82,a83,a84,a85,a86,a87,a88,a89,&
  a90,a91,a92,a93,a94,a95,a96,a97,a98,a99,&
  d00,d01,d02,d03,d04,d05,d06,d07,d08,d09,&
  d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,&
  d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,&
  d30,d31,d32,d33,d34,d35,d36,d37,d38,d39,&
  d40,d41,d42,d43,d44,d45,d46,d47,d48,d49,&
  d50,d51,d52,d53,d54,d55,d56,d57,d58,d59,&
  d60,d61,d62,d63,d64,d65,d66,d67,d68,d69,&
  d70,d71,d72,d73,d74,d75,d76,d77,d78,d79,&
  d80,d81,d82,d83,d84,d85,d86,d87,d88,d89,&
  d90,d91,d92,d93,d94,d95,d96,d97,d98,d99,&
  l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,&
  l10,l11,l12,l13,l14,l15,l16,l17,l18,l19 &
  )
  integer,parameter :: n=5, m=2, nnn=500
  real(8),dimension(1:n) :: a00,a01,a02,a03,a04,a05,a06,a07,a08,a09
  real(8),dimension(1:n) :: a10,a11,a12,a13,a14,a15,a16,a17,a18,a19
  real(8),dimension(1:n) :: a20,a21,a22,a23,a24,a25,a26,a27,a28,a29
  real(8),dimension(1:n) :: a30,a31,a32,a33,a34,a35,a36,a37,a38,a39
  real(8),dimension(1:n) :: a40,a41,a42,a43,a44,a45,a46,a47,a48,a49
  real(8),dimension(1:n) :: a50,a51,a52,a53,a54,a55,a56,a57,a58,a59
  real(8),dimension(1:n) :: a60,a61,a62,a63,a64,a65,a66,a67,a68,a69
  real(8),dimension(1:n) :: a70,a71,a72,a73,a74,a75,a76,a77,a78,a79
  real(8),dimension(1:n) :: a80,a81,a82,a83,a84,a85,a86,a87,a88,a89
  real(8),dimension(1:n) :: a90,a91,a92,a93,a94,a95,a96,a97,a98,a99
  real(8),dimension(1:nnn) :: d00,d01,d02,d03,d04,d05,d06,d07,d08,d09
  real(8),dimension(1:nnn) :: d10,d11,d12,d13,d14,d15,d16,d17,d18,d19
  real(8),dimension(1:nnn) :: d20,d21,d22,d23,d24,d25,d26,d27,d28,d29
  real(8),dimension(1:nnn) :: d30,d31,d32,d33,d34,d35,d36,d37,d38,d39
  real(8),dimension(1:nnn) :: d40,d41,d42,d43,d44,d45,d46,d47,d48,d49
  real(8),dimension(1:nnn) :: d50,d51,d52,d53,d54,d55,d56,d57,d58,d59
  real(8),dimension(1:nnn) :: d60,d61,d62,d63,d64,d65,d66,d67,d68,d69
  real(8),dimension(1:nnn) :: d70,d71,d72,d73,d74,d75,d76,d77,d78,d79
  real(8),dimension(1:nnn) :: d80,d81,d82,d83,d84,d85,d86,d87,d88,d89
  real(8),dimension(1:nnn) :: d90,d91,d92,d93,d94,d95,d96,d97,d98,d99
  integer(8),dimension(1:m) :: l00,l01,l02,l03,l04,l05,l06,l07,l08,l09
  integer(8),dimension(1:m) :: l10,l11,l12,l13,l14,l15,l16,l17,l18,l19

  call init_a(a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,n)
  call init_a(a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,n)
  call init_a(a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,n)
  call init_a(a30,a31,a32,a33,a34,a35,a36,a37,a38,a39,n)
  call init_a(a40,a41,a42,a43,a44,a45,a46,a47,a48,a49,n)
  call init_a(a50,a51,a52,a53,a54,a55,a56,a57,a58,a59,n)
  call init_a(a60,a61,a62,a63,a64,a65,a66,a67,a68,a69,n)
  call init_a(a70,a71,a72,a73,a74,a75,a76,a77,a78,a79,n)
  call init_a(a80,a81,a82,a83,a84,a85,a86,a87,a88,a89,n)
  call init_a(a90,a91,a92,a93,a94,a95,a96,a97,a98,a99,n)
  call init_a(d00,d01,d02,d03,d04,d05,d06,d07,d08,d09,nnn)
  call init_a(d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,nnn)
  call init_a(d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,nnn)
  call init_a(d30,d31,d32,d33,d34,d35,d36,d37,d38,d39,nnn)
  call init_a(d40,d41,d42,d43,d44,d45,d46,d47,d48,d49,nnn)
  call init_a(d50,d51,d52,d53,d54,d55,d56,d57,d58,d59,nnn)
  call init_a(d60,d61,d62,d63,d64,d65,d66,d67,d68,d69,nnn)
  call init_a(d70,d71,d72,d73,d74,d75,d76,d77,d78,d79,nnn)
  call init_a(d80,d81,d82,d83,d84,d85,d86,d87,d88,d89,nnn)
  call init_a(d90,d91,d92,d93,d94,d95,d96,d97,d98,d99,nnn)
  l00(1) = 1
  l01(1) = 1
  l02(1) = 1
  l03(1) = 1
  l04(1) = 1
  l05(1) = 1
  l06(1) = 1
  l07(1) = 1
  l08(1) = 1
  l09(1) = 1
  l00(2) = 1
  l01(2) = 1
  l02(2) = 1
  l03(2) = 1
  l04(2) = 1
  l05(2) = 1
  l06(2) = 1
  l07(2) = 1
  l08(2) = 1
  l09(2) = 1
  l10(1) = 1
  l11(1) = 1
  l12(1) = 1
  l13(1) = 1
  l14(1) = 1
  l15(1) = 1
  l16(1) = 1
  l17(1) = 1
  l18(1) = 1
  l19(1) = 1
  l10(2) = 1
  l11(2) = 1
  l12(2) = 1
  l13(2) = 1
  l14(2) = 1
  l15(2) = 1
  l16(2) = 1
  l17(2) = 1
  l18(2) = 1
  l19(2) = 1
  do i=1,nnn
     if (sum(l00).eq.sum(l10)) then
        do j=1,n
           a00(j) = a00(j)+a01(j)+a02(j)+a03(j)+a04(j)+a05(j)+a06(j)+a07(j)+a08(j)+a09(j)
        enddo
     endif
     d00(i) = d00(i)+d01(i)+d02(i)+d03(i)+d04(i)+d05(i)+d06(i)+d07(i)+d08(i)+d09(i)+sum(a00)
     if (sum(l01).eq.sum(l11)) then
        do j=1,n
           a10(j) = a01(j)+a11(j)+a12(j)+a13(j)+a14(j)+a15(j)+a16(j)+a17(j)+a18(j)+a19(j)
        enddo
     endif
     d10(i) = d10(i)+d11(i)+d12(i)+d13(i)+d14(i)+d15(i)+d16(i)+d17(i)+d18(i)+d19(i)+sum(a10) 
     if (sum(l02).eq.sum(l12)) then
        do j=1,n
           a20(j) = a20(j)+a21(j)+a22(j)+a23(j)+a24(j)+a25(j)+a26(j)+a27(j)+a28(j)+a29(j)
        enddo
     endif
     d20(i) = d20(i)+d21(i)+d22(i)+d23(i)+d24(i)+d25(i)+d26(i)+d27(i)+d28(i)+d29(i)+sum(a20)
     if (sum(l03).eq.sum(l13)) then
        do j=1,n
           a30(j) = a30(j)+a31(j)+a32(j)+a33(j)+a34(j)+a35(j)+a36(j)+a37(j)+a38(j)+a39(j)
        enddo
     endif
     d30(i) = d30(i)+d31(i)+d32(i)+d33(i)+d34(i)+d35(i)+d36(i)+d37(i)+d38(i)+d39(i)+sum(a30)
     if (sum(l04).eq.sum(l14)) then
        do j=1,n
           a40(j) = a40(j)+a41(j)+a42(j)+a43(j)+a44(j)+a45(j)+a46(j)+a47(j)+a48(j)+a49(j)
        enddo
     endif
     d40(i) = d40(i)+d41(i)+d42(i)+d43(i)+d44(i)+d45(i)+d46(i)+d47(i)+d48(i)+d49(i)+sum(a40)
     if (sum(l05).eq.sum(l15)) then
        do j=1,n
           a50(j) = a50(j)+a51(j)+a52(j)+a53(j)+a54(j)+a55(j)+a56(j)+a57(j)+a58(j)+a59(j)
        enddo
     endif
     d50(i) = d50(i)+d51(i)+d52(i)+d53(i)+d54(i)+d55(i)+d56(i)+d57(i)+d58(i)+d59(i)+sum(a50)
     if (sum(l06).eq.sum(l16)) then
        do j=1,n
           a60(j) = a61(j)+a62(j)+a63(j)+a64(j)+a65(j)+a66(j)+a67(j)+a68(j)+a69(j)
        enddo
     endif
     d60(i) = d60(i)+d61(i)+d62(i)+d63(i)+d64(i)+d65(i)+d66(i)+d67(i)+d68(i)+d69(i)+sum(a60)
     if (sum(l07).eq.sum(l17)) then
        do j=1,n
           a70(j) = a70(j)+a71(j)+a72(j)+a73(j)+a74(j)+a75(j)+a76(j)+a77(j)+a78(j)+a79(j)
        enddo
     endif
     d70(i) = d70(i)+d71(i)+d72(i)+d73(i)+d74(i)+d75(i)+d76(i)+d77(i)+d78(i)+d79(i)+sum(a70)
     if (sum(l08).eq.sum(l18)) then
        do j=1,n
           a80(j) = a80(j)+a81(j)+a82(j)+a83(j)+a84(j)+a85(j)+a86(j)+a87(j)+a88(j)+a89(j)
        enddo
     endif
     d80(i) = d80(i)+d81(i)+d82(i)+d83(i)+d84(i)+d85(i)+d86(i)+d87(i)+d88(i)+d89(i)+sum(a80)
     if (sum(l09).eq.sum(l19)) then
        do j=1,n
           a90(j) = a90(j)+a91(j)+a92(j)+a93(j)+a94(j)+a95(j)+a96(j)+a97(j)+a99(j)+a99(j)
        enddo
     endif
     d90(i) = d90(i)+d91(i)+d92(i)+d93(i)+d94(i)+d95(i)+d96(i)+d97(i)+d99(i)+d99(i)+sum(a90)

     if (sum(l00).eq.sum(l10)) then
        do j=1,n
           a00(j) = a00(j)+a01(j)+a02(j)+a03(j)+a04(j)+a05(j)+a06(j)+a07(j)+a08(j)+a09(j)
        enddo
     endif
     d00(i) = d00(i)+d01(i)+d02(i)+d03(i)+d04(i)+d05(i)+d06(i)+d07(i)+d08(i)+d09(i)+sum(a00)
     if (sum(l01).eq.sum(l11)) then
        do j=1,n
           a10(j) = a01(j)+a11(j)+a12(j)+a13(j)+a14(j)+a15(j)+a16(j)+a17(j)+a18(j)+a19(j)
        enddo
     endif
     d10(i) = d10(i)+d11(i)+d12(i)+d13(i)+d14(i)+d15(i)+d16(i)+d17(i)+d18(i)+d19(i)+sum(a10) 
     if (sum(l02).eq.sum(l12)) then
        do j=1,n
           a20(j) = a20(j)+a21(j)+a22(j)+a23(j)+a24(j)+a25(j)+a26(j)+a27(j)+a28(j)+a29(j)
        enddo
     endif
     d20(i) = d20(i)+d21(i)+d22(i)+d23(i)+d24(i)+d25(i)+d26(i)+d27(i)+d28(i)+d29(i)+sum(a20)
     if (sum(l03).eq.sum(l13)) then
        do j=1,n
           a30(j) = a30(j)+a31(j)+a32(j)+a33(j)+a34(j)+a35(j)+a36(j)+a37(j)+a38(j)+a39(j)
        enddo
     endif
     d30(i) = d30(i)+d31(i)+d32(i)+d33(i)+d34(i)+d35(i)+d36(i)+d37(i)+d38(i)+d39(i)+sum(a30)
     if (sum(l04).eq.sum(l14)) then
        do j=1,n
           a40(j) = a40(j)+a41(j)+a42(j)+a43(j)+a44(j)+a45(j)+a46(j)+a47(j)+a48(j)+a49(j)
        enddo
     endif
     d40(i) = d40(i)+d41(i)+d42(i)+d43(i)+d44(i)+d45(i)+d46(i)+d47(i)+d48(i)+d49(i)+sum(a40)
     if (sum(l05).eq.sum(l15)) then
        do j=1,n
           a50(j) = a50(j)+a51(j)+a52(j)+a53(j)+a54(j)+a55(j)+a56(j)+a57(j)+a58(j)+a59(j)
        enddo
     endif
     d50(i) = d50(i)+d51(i)+d52(i)+d53(i)+d54(i)+d55(i)+d56(i)+d57(i)+d58(i)+d59(i)+sum(a50)
     if (sum(l06).eq.sum(l16)) then
        do j=1,n
           a60(j) = a61(j)+a62(j)+a63(j)+a64(j)+a65(j)+a66(j)+a67(j)+a68(j)+a69(j)
        enddo
     endif
     d60(i) = d60(i)+d61(i)+d62(i)+d63(i)+d64(i)+d65(i)+d66(i)+d67(i)+d68(i)+d69(i)+sum(a60)
     if (sum(l07).eq.sum(l17)) then
        do j=1,n
           a70(j) = a70(j)+a71(j)+a72(j)+a73(j)+a74(j)+a75(j)+a76(j)+a77(j)+a78(j)+a79(j)
        enddo
     endif
     d70(i) = d70(i)+d71(i)+d72(i)+d73(i)+d74(i)+d75(i)+d76(i)+d77(i)+d78(i)+d79(i)+sum(a70)
     if (sum(l08).eq.sum(l18)) then
        do j=1,n
           a80(j) = a80(j)+a81(j)+a82(j)+a83(j)+a84(j)+a85(j)+a86(j)+a87(j)+a88(j)+a89(j)
        enddo
     endif
     d80(i) = d80(i)+d81(i)+d82(i)+d83(i)+d84(i)+d85(i)+d86(i)+d87(i)+d88(i)+d89(i)+sum(a80)
     if (sum(l09).eq.sum(l19)) then
        do j=1,n
           a90(j) = a90(j)+a91(j)+a92(j)+a93(j)+a94(j)+a95(j)+a96(j)+a97(j)+a99(j)+a99(j)
        enddo
     endif
     d90(i) = d90(i)+d91(i)+d92(i)+d93(i)+d94(i)+d95(i)+d96(i)+d97(i)+d99(i)+d99(i)+sum(a90)
  enddo
end subroutine

program main
  integer,parameter :: n=5, m=2, nnn=500
  real(8),dimension(1:n) :: a00,a01,a02,a03,a04,a05,a06,a07,a08,a09
  real(8),dimension(1:n) :: a10,a11,a12,a13,a14,a15,a16,a17,a18,a19
  real(8),dimension(1:n) :: a20,a21,a22,a23,a24,a25,a26,a27,a28,a29
  real(8),dimension(1:n) :: a30,a31,a32,a33,a34,a35,a36,a37,a38,a39
  real(8),dimension(1:n) :: a40,a41,a42,a43,a44,a45,a46,a47,a48,a49
  real(8),dimension(1:n) :: a50,a51,a52,a53,a54,a55,a56,a57,a58,a59
  real(8),dimension(1:n) :: a60,a61,a62,a63,a64,a65,a66,a67,a68,a69
  real(8),dimension(1:n) :: a70,a71,a72,a73,a74,a75,a76,a77,a78,a79
  real(8),dimension(1:n) :: a80,a81,a82,a83,a84,a85,a86,a87,a88,a89
  real(8),dimension(1:n) :: a90,a91,a92,a93,a94,a95,a96,a97,a98,a99
  real(8),dimension(1:nnn) :: d00,d01,d02,d03,d04,d05,d06,d07,d08,d09
  real(8),dimension(1:nnn) :: d10,d11,d12,d13,d14,d15,d16,d17,d18,d19
  real(8),dimension(1:nnn) :: d20,d21,d22,d23,d24,d25,d26,d27,d28,d29
  real(8),dimension(1:nnn) :: d30,d31,d32,d33,d34,d35,d36,d37,d38,d39
  real(8),dimension(1:nnn) :: d40,d41,d42,d43,d44,d45,d46,d47,d48,d49
  real(8),dimension(1:nnn) :: d50,d51,d52,d53,d54,d55,d56,d57,d58,d59
  real(8),dimension(1:nnn) :: d60,d61,d62,d63,d64,d65,d66,d67,d68,d69
  real(8),dimension(1:nnn) :: d70,d71,d72,d73,d74,d75,d76,d77,d78,d79
  real(8),dimension(1:nnn) :: d80,d81,d82,d83,d84,d85,d86,d87,d88,d89
  real(8),dimension(1:nnn) :: d90,d91,d92,d93,d94,d95,d96,d97,d98,d99
  integer(8),dimension(1:m) :: l00,l01,l02,l03,l04,l05,l06,l07,l08,l09
  integer(8),dimension(1:m) :: l10,l11,l12,l13,l14,l15,l16,l17,l18,l19

  call connect_ouds(&
       a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,&
       a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,&
       a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,&
       a30,a31,a32,a33,a34,a35,a36,a37,a38,a39,&
       a40,a41,a42,a43,a44,a45,a46,a47,a48,a49,&
       a50,a51,a52,a53,a54,a55,a56,a57,a58,a59,&
       a60,a61,a62,a63,a64,a65,a66,a67,a68,a69,&
       a70,a71,a72,a73,a74,a75,a76,a77,a78,a79,&
       a80,a81,a82,a83,a84,a85,a86,a87,a88,a89,&
       a90,a91,a92,a93,a94,a95,a96,a97,a98,a99,&
       d00,d01,d02,d03,d04,d05,d06,d07,d08,d09,&
       d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,&
       d20,d21,d22,d23,d24,d25,d26,d27,d28,d29,&
       d30,d31,d32,d33,d34,d35,d36,d37,d38,d39,&
       d40,d41,d42,d43,d44,d45,d46,d47,d48,d49,&
       d50,d51,d52,d53,d54,d55,d56,d57,d58,d59,&
       d60,d61,d62,d63,d64,d65,d66,d67,d68,d69,&
       d70,d71,d72,d73,d74,d75,d76,d77,d78,d79,&
       d80,d81,d82,d83,d84,d85,d86,d87,d88,d89,&
       d90,d91,d92,d93,d94,d95,d96,d97,d98,d99,&
       l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,&
       l10,l11,l12,l13,l14,l15,l16,l17,l18,l19 &
  )
  if (int(sum(d00+d10+d20+d30+d40+d50+d60+d70+d80+d90)).eq.0) then
     print *,"ok"
  else
     print *,"ng",int(sum(d00+d10+d20+d30+d40+d50+d60+d70+d80+d90))
  endif
end program main
