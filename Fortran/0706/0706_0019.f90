c
c ow=g1128
c
      call s1
      print *,'pass'
      end
      module m1
      integer i1/1/,i2/2/
       character(len=*),parameter,dimension(2,2)::a1='1'
       character(len=*),parameter,dimension(2,2)::a2='1'
       character(len=*),parameter,dimension(2,2)::a3='1'
       character(len=*),parameter,dimension(2,2)::a4='1'
       character(len=*),parameter,dimension(2,2)::a5='1'
       character(len=*),parameter,dimension(2,2)::a6='1'
       character(len=*),parameter,dimension(2,2)::a7='1'
       character(len=*),parameter,dimension(2,2)::a8='1'
       character(len=*),parameter,dimension(2,2)::a9='1'
       character(len=*),parameter,dimension(2,2)::aa='1'
      contains
      subroutine s110()
       character,dimension(:,:)::a1
       character,dimension(1:,1:)::a2
       character,dimension(i1:,i1:)::a3
       character,dimension(2:,2:)::a4
       character,dimension(i2-i1:,-i2+i1:)::a5
       character,dimension(:,:)::a6
       character,dimension(1:,:)::a7
       character,dimension(i1:,:)::a8
       character,dimension(2:,:)::a9
       character,dimension(i2-i1:,:)::aa
       entry s111(a1)
       entry s112(a2)
       entry s113(a3)
       entry s114(a4)
       entry s115(a5)
       entry s116(a6)
       entry s117(a7)
       entry s118(a8)
       entry s119(a9)
       entry s11a(aa)
      end subroutine
      subroutine s120(a1,a2,a3,a4,a5,a6,a7,a8,a9,aa)
       character,dimension(:,:)::a1
       character,dimension(1:,1:)::a2
       character,dimension(i1:,i1:)::a3
       character,dimension(2:,2:)::a4
       character,dimension(i2-i1:,-i2+i1:)::a5
       character,dimension(:,:)::a6
       character,dimension(1:,:)::a7
       character,dimension(i1:,:)::a8
       character,dimension(2:,:)::a9
       character,dimension(i2-i1:,:)::aa
       entry s121(a1)
       entry s122(a2)
       entry s123(a3)
       entry s124(a4)
       entry s125(a5)
       entry s126(a6)
       entry s127(a7)
       entry s128(a8)
       entry s129(a9)
       entry s12a(aa)
      end subroutine
      subroutine s130()
       character,dimension(:,:)::a1
       character,dimension(1:,1:)::a2
       character,dimension(i1:,i1:)::a3
       character,dimension(2:,2:)::a4
       character,dimension(i2-i1:,-i2+i1:)::a5
       character,dimension(:,:)::a6
       character,dimension(1:,:)::a7
       character,dimension(i1:,:)::a8
       character,dimension(2:,:)::a9
       character,dimension(i2-i1:,:)::aa
       entry s131(a1)
       entry s132(a2)
       entry s133(a3)
       entry s134(a4)
       entry s135(a5)
       entry s136(a6)
       entry s137(a7)
       entry s138(a8)
       entry s139(a9)
       entry s13a(  )
       entry s13b(a1,a2,a3,a4,a5,a6,a7,a8,a9,aa)
      end subroutine
      end module
      subroutine s1
      use m1
      call s110()
       call s111(a1)
       call s112(a2)
       call s113(a3)
       call s114(a4)
       call s115(a5)
       call s116(a6)
       call s117(a7)
       call s118(a8)
       call s119(a9)
       call s11a(aa)
      call s120(a1,a2,a3,a4,a5,a6,a7,a8,a9,aa)
       call s121(a1)
       call s122(a2)
       call s123(a3)
       call s124(a4)
       call s125(a5)
       call s126(a6)
       call s127(a7)
       call s128(a8)
       call s129(a9)
       call s12a(aa)
      call s130()
       call s131(a1)
       call s132(a2)
       call s133(a3)
       call s134(a4)
       call s135(a5)
       call s136(a6)
       call s137(a7)
       call s138(a8)
       call s139(a9)
       call s13a(  )
       call s13b(a1,a2,a3,a4,a5,a6,a7,a8,a9,aa)
      end
