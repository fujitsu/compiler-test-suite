real*8 function mary_arg(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9, &
          a10,a11,a12,a13,a14,a15,a16,a17,a18,a19, &
          a20,a21,a22,a23,a24,a25,a26,a27,a28,a29, &
          a30,a31,a32,a33,a34,a35,a36,a37,a38,a39)
!$omp declare simd notinbranch
  real*8,intent(in):: a0,a1,a2,a3,a4,a5,a6,a7,a8,a9, &
          a10,a11,a12,a13,a14,a15,a16,a17,a18,a19, &
          a20,a21,a22,a23,a24,a25,a26,a27,a28,a29, &
          a30,a31,a32,a33,a34,a35,a36,a37,a38,a39
  value::a0,a1,a2,a3,a4,a5,a6,a7,a8,a9, &
          a10,a11,a12,a13,a14,a15,a16,a17,a18,a19, &
          a20,a21,a22,a23,a24,a25,a26,a27,a28,a29, &
          a30,a31,a32,a33,a34,a35,a36,a37,a38,a39
  mary_arg = a0+a1+a2+a3+a4+a5+a6+a7+a8+a9+ &
          a10-a11-a12-a13-a14-a15-a16-a17-a18-a19- &
          a20+a21+a22+a23+a24+a25+a26+a27+a28+a29+ &
          a30-a31-a32-a33-a34-a35-a36-a37-a38-a39
end function mary_arg

program declare_test
  parameter(N=32)
  real*8 a(N),b(N)
  interface
     real*8 function mary_arg(a0,a1,a2,a3,a4,a5,a6,a7,a8,a9, &
          a10,a11,a12,a13,a14,a15,a16,a17,a18,a19, &
          a20,a21,a22,a23,a24,a25,a26,a27,a28,a29, &
          a30,a31,a32,a33,a34,a35,a36,a37,a38,a39)
       real*8,intent(in):: a0,a1,a2,a3,a4,a5,a6,a7,a8,a9, &
          a10,a11,a12,a13,a14,a15,a16,a17,a18,a19, &
          a20,a21,a22,a23,a24,a25,a26,a27,a28,a29, &
          a30,a31,a32,a33,a34,a35,a36,a37,a38,a39
       value::a0,a1,a2,a3,a4,a5,a6,a7,a8,a9, &
          a10,a11,a12,a13,a14,a15,a16,a17,a18,a19, &
          a20,a21,a22,a23,a24,a25,a26,a27,a28,a29, &
          a30,a31,a32,a33,a34,a35,a36,a37,a38,a39
     end function mary_arg
  end interface

!$omp simd
  do i=1,N
     a(i) = i
     b(i) = 0
  enddo

!$omp simd
  do i=1,N
     b(i)= mary_arg(a(i), a(i)+1,  a(i)+2,  a(i)+3,  a(i)+4,  a(i)+5,  a(i)+6, a(i)+7,&
          a(i)+8,  a(i)+9,  a(i)+10, a(i)+11, a(i)+12, a(i)+13, a(i)+14, a(i)+15,  &
          a(i)+16, a(i)+17, a(i)+18, a(i)+19, a(i)+20, a(i)+21, a(i)+22, a(i)+23,  &
          a(i)+24, a(i)+25, a(i)+26, a(i)+27, a(i)+28, a(i)+29, a(i)+30, a(i)+31,  &
          a(i)+32, a(i)+33, a(i)+34, a(i)+35, a(i)+36, a(i)+37, a(i)+38, a(i)+39)
  enddo
  write(6,1) b
  1 format(8f10.3)

end program declare_test
