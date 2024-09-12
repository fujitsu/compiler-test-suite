c
c ow=g1128
c
      call s1
      print *,'pass'
      end
      module m1
      contains
      subroutine t21(j1,j2,
     1 d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,
     1 d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,
     1 d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,
     1 d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,
     1 d41)
      entry t22(j1,j2,
     1 d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,
     1 d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,
     1 d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,
     1 d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,
     1 d41)
      entry t23(j1,j2,
     1 d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,
     1 d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,
     1 d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,
     1 d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,
     1 d41)
      character*(j1)::d01
      character*(j1)::d02(j1: 2)
      character*(j1)::d03( 1:j2)
      character*(j1)::d04( 1: 2)
      character*(j1)::d05(j1:j2)
      character*(j1)::d06(j1: 2, 1: 2)
      character*(j1)::d07( 1:j2, 1: 2)
      character*(j1)::d08(j1:j2, 1: 2)
      character*(j1)::d09(j1: 2,j1:j2)
      character*(j1)::d10( 1:j2,j1:j2)
      character*(j1)::d11(j1:j2,j1:j2)
      character*( *)::d12
      character*( *)::d13(j1: 2)
      character*( *)::d14( 1:j2)
      character*( *)::d15( 1: 2)
      character*( *)::d16(j1:j2)
      character*( *)::d17(j1: 2, 1: 2)
      character*( *)::d18( 1:j2, 1: 2)
      character*( *)::d19(j1:j2, 1: 2)
      character*( *)::d20(j1: 2,j1:j2)
      character*( *)::d21( 1:j2,j1:j2)
      character*( *)::d22(j1:j2,j1:j2)
      character*( 1)::d23
      character*(j1)::d24(j1:  )
      character*(j1)::d25( 1:  )
      character*(j1)::d26(j2-j1: )
      character*(j1)::d27(j1:   , 1:  )
      character*(j1)::d28( 1:   , 1:  )
      character*(j1)::d29(j2-j1:, 1: )
      character*(j1)::d30(j1:   ,j1:  )
      character*(j1)::d31( 1:   ,j1:  )
      character*(j1)::d32(j2-j1:,j2-j1:)
      character*( *)::d33(j1:  )
      character*( *)::d34( 1:  )
      character*( *)::d35(j2-j1: )
      character*( *)::d36(j1:   , 1:  )
      character*( *)::d37( 1:   , 1:  )
      character*( *)::d38(j2-j1:, 1: )
      character*( *)::d39(j1:   ,j1:  )
      character*( *)::d40( 1:   ,j1:  )
      character*( *)::d41(j2-j1:,j2-j1:)
      entry      t11
      entry      t12
      entry      t13
      end subroutine
      subroutine s11
      entry      s12
      entry      s13
      character*(j1)::d01
      character*(j1)::d02(j1: 2)
      character*(j1)::d03( 1:j2)
      character*(j1)::d04( 1: 2)
      character*(j1)::d05(j1:j2)
      character*(j1)::d06(j1: 2, 1: 2)
      character*(j1)::d07( 1:j2, 1: 2)
      character*(j1)::d08(j1:j2, 1: 2)
      character*(j1)::d09(j1: 2,j1:j2)
      character*(j1)::d10( 1:j2,j1:j2)
      character*(j1)::d11(j1:j2,j1:j2)
      character*( *)::d12
      character*( *)::d13(j1: 2)
      character*( *)::d14( 1:j2)
      character*( *)::d15( 1: 2)
      character*( *)::d16(j1:j2)
      character*( *)::d17(j1: 2, 1: 2)
      character*( *)::d18( 1:j2, 1: 2)
      character*( *)::d19(j1:j2, 1: 2)
      character*( *)::d20(j1: 2,j1:j2)
      character*( *)::d21( 1:j2,j1:j2)
      character*( *)::d22(j1:j2,j1:j2)
      character*( 1)::d23
      character*(j1)::d24(j1:  )
      character*(j1)::d25( 1:  )
      character*(j1)::d26(j2-j1: )
      character*(j1)::d27(j1:   , 1:  )
      character*(j1)::d28( 1:   , 1:  )
      character*(j1)::d29(j2-j1:, 1: )
      character*(j1)::d30(j1:   ,j1:  )
      character*(j1)::d31( 1:   ,j1:  )
      character*(j1)::d32(j2-j1:,j2-j1:)
      character*( *)::d33(j1:  )
      character*( *)::d34( 1:  )
      character*( *)::d35(j2-j1: )
      character*( *)::d36(j1:   , 1:  )
      character*( *)::d37( 1:   , 1:  )
      character*( *)::d38(j2-j1:, 1: )
      character*( *)::d39(j1:   ,j1:  )
      character*( *)::d40( 1:   ,j1:  )
      character*( *)::d41(j2-j1:,j2-j1:)
      return
      entry s21(j1,j2,
     1 d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,
     1 d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,
     1 d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,
     1 d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,
     1 d41)
      entry s22(j1,j2,
     1 d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,
     1 d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,
     1 d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,
     1 d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,
     1 d41)
      entry s23(j1,j2,
     1 d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,
     1 d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,
     1 d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,
     1 d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,
     1 d41)
      end subroutine
      end module
      subroutine s1
      use m1
      parameter (j1=1,j2=2)
      character*(*),parameter::d0='1',d1(2)=(/'2','3'/),
     1 d2(2,2)=reshape((/'4','5','6','7'/),(/2,2/))
      character*(j1),parameter::d01=d0
      character*(j1),parameter::d02(j1: 2)=d1
      character*(j1),parameter::d03( 1:j2)=d1
      character*(j1),parameter::d04( 1: 2)=d1
      character*(j1),parameter::d05(j1:j2)=d1
      character*(j1),parameter::d06(j1: 2, 1: 2)=d2
      character*(j1),parameter::d07( 1:j2, 1: 2)=d2
      character*(j1),parameter::d08(j1:j2, 1: 2)=d2
      character*(j1),parameter::d09(j1: 2,j1:j2)=d2
      character*(j1),parameter::d10( 1:j2,j1:j2)=d2
      character*(j1),parameter::d11(j1:j2,j1:j2)=d2
      character*( *),parameter::d12=d0
      character*( *),parameter::d13(j1: 2)=d1
      character*( *),parameter::d14( 1:j2)=d1
      character*( *),parameter::d15( 1: 2)=d1
      character*( *),parameter::d16(j1:j2)=d1
      character*( *),parameter::d17(j1: 2, 1: 2)=d2
      character*( *),parameter::d18( 1:j2, 1: 2)=d2
      character*( *),parameter::d19(j1:j2, 1: 2)=d2
      character*( *),parameter::d20(j1: 2,j1:j2)=d2
      character*( *),parameter::d21( 1:j2,j1:j2)=d2
      character*( *),parameter::d22(j1:j2,j1:j2)=d2
      character*( 1),parameter::d23=d0
      character*(j1),parameter::d24(j1: 2)=d1
      character*(j1),parameter::d25( 1: 2)=d1
      character*(j1),parameter::d26(j2-j1:2)=d1
      character*(j1),parameter::d27(j1: 2 , 1:2 )=d2
      character*(j1),parameter::d28( 1: 2 , 1:2 )=d2
      character*(j1),parameter::d29(j2-j1:2, 1:2)=d2
      character*(j1),parameter::d30(j1: 2 ,j1:2 )=d2
      character*(j1),parameter::d31( 1: 2 ,j1:2 )=d2
      character*(j1),parameter::d32(j2-j1:2,j2-j1:2)=d2
      character*( *),parameter::d33(j1:2 )=d1
      character*( *),parameter::d34( 1:2 )=d1
      character*( *),parameter::d35(j2-j1:2)=d1
      character*( *),parameter::d36(j1: 2 , 1:2 )=d2
      character*( *),parameter::d37( 1: 2 , 1:2 )=d2
      character*( *),parameter::d38(j2-j1:2, 1:2)=d2
      character*( *),parameter::d39(j1: 2 ,j1:2 )=d2
      character*( *),parameter::d40( 1: 2 ,j1:2 )=d2
      character*( *),parameter::d41(j2-j1:2,j2-j1:2)=d2
      call       s11
      call       s12
      call       s13
      call  s21(j1,j2,
     1 d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,
     1 d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,
     1 d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,
     1 d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,
     1 d41)
      call  s22(j1,j2,
     1 d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,
     1 d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,
     1 d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,
     1 d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,
     1 d41)
      call  s23(j1,j2,
     1 d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,
     1 d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,
     1 d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,
     1 d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,
     1 d41)
      call       t11
      call       t12
      call       t13
      call  t21(j1,j2,
     1 d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,
     1 d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,
     1 d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,
     1 d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,
     1 d41)
      call  t22(j1,j2,
     1 d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,
     1 d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,
     1 d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,
     1 d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,
     1 d41)
      call  t23(j1,j2,
     1 d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,
     1 d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,
     1 d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,
     1 d31,d32,d33,d34,d35,d36,d37,d38,d39,d40,
     1 d41)
      end subroutine
