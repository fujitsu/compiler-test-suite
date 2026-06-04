      call sub1()
      print *,'pass'
      end
      subroutine sub1()
       type ty1
        character   a1
       end type
       type (ty1) :: str
       character*0 cha0
       character   cha1
       character   car(10)
       character*10cha10
       cha0=''
       cha1='a'
       str%a1='a'
       cha10='abcdefhijk'
       car=(/(cha10(i:i),i=1,10)/)
      call ss01(iachar('a'),'a')
      call ss01(iachar(cha1),cha1)
      call ss01(iachar(cha1(1:1)),cha1(1:1))
      call ss01(iachar(cha10(1:1)),cha10(1:1))
      do i=1,10;call ss01(iachar(cha10(i:i)),cha10(i:i));enddo
      call ss01(iachar(car(1)),car(1))
      do i=1,10;call ss01(iachar(car(i)),car(i));enddo
      call ss01(iachar(str%a1),str%a1)
      call ss01(iachar('a'//''),'a'//'')
      call ss01(iachar(cha1//''),cha1//'')
      call ss01(iachar(cha1(1:1)//''),cha1(1:1)//'')
      call ss01(iachar(cha10(1:1)//''),cha10(1:1)//'')
      do i=1,10;call ss01(iachar(cha10(i:i)//''),cha10(i:i)//'');
      enddo
      call ss01(iachar(car(1)//''),car(1)//'')
      do i=1,10;call ss01(iachar(car(i)//''),car(i)//'');enddo
      call ss01(iachar(str%a1//''),str%a1//'')
      call ss00(iachar((/'a'/)),(/'a'/))
      call ss00(iachar((/cha1/)),(/cha1/))
      call ss00(iachar((/cha1(1:1)/)),(/cha1(1:1)/))
      call ss00(iachar((/cha10(1:1)/)),(/cha10(1:1)/))
      do i=1,10;call ss00(iachar((/cha10(i:i)/)),(/cha10(i:i)/));
      enddo
      call ss00(iachar((/car(1)/)),(/car(1)/))
      do i=1,10;call ss00(iachar((/car(i)/)),(/car(i)/));enddo
      call ss00(iachar((/str%a1/)),(/str%a1/))
      call ss00(iachar((/'a'//''/)),(/'a'//''/))
      call ss00(iachar((/cha1//''/)),(/cha1//''/))
      call ss00(iachar((/cha1(1:1)//''/)),(/cha1(1:1)//''/))
      call ss00(iachar((/cha10(1:1)//''/)),(/cha10(1:1)//''/))
      do i=1,10;
      call ss00(iachar((/cha10(i:i)//''/)),(/cha10(i:i)//''/));enddo
      call ss00(iachar((/car(1)//''/)),(/car(1)//''/))
      do i=1,10;
      call ss00(iachar((/car(i)//''/)),(/car(i)//''/));enddo
      call ss00(iachar((/str%a1//''/)),(/str%a1//''/))
      contains
       subroutine ss01(i,cha)
       integer*4  i
       character  cha
       if (achar(i).ne.cha) print *,"fail"
       end subroutine
       subroutine ss00(i,cha)
       integer*4  i(:)
       character  cha(:)
       if (achar(i(1)).ne.cha(1)) print *,"fail"
       end subroutine
      end
