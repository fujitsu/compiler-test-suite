c
c
      call s1
      print *,'pass'
      end
      subroutine s1
      call ss1
      call ss2
      call ss3
      end
      subroutine ss1
      character:: a(2,3)/'1','2','3','4','5','6'/
      character:: b(3)/'1','3','5'/,ch*4
      if (any((/a(1,:)/)/=b))print *,'fail'
      write(1,*)(/a(1,:)/);rewind 1;read (1,'(a)') ch
      if (ch/=' 135')print *,'fail'
      end
      subroutine ss2
      character,target:: a(2,3)/'1','2','3','4','5','6'/
      character:: b(3)/'1','3','5'/,ch*4
      character,pointer::p(:)
      p=>a(1,:)
      if (any((/p/)/=b))print *,'fail'
      write(2,*)(/p/);rewind 2;read (2,'(a)') ch
      if (ch/=' 135')print *,'fail'
      if (any((/p(:)/)/=b))print *,'fail'
      write(3,*)(/p(:)/);rewind 3;read (3,'(a)') ch
      if (ch/=' 135')print *,'fail'
      end
      subroutine ss3
      character:: a(2,3)/'1','2','3','4','5','6'/
      character:: b(3)/'1','3','5'/,ch*4
      call ss31(a(1,:))
      contains
      subroutine ss31(a)
      character*(*)::a(:)
      if (any((/a(:)/)/=b))print *,'fail'
      write(11,*)(/a(:)/);rewind 11;read (11,'(a)') ch
      if (ch/=' 135')print *,'fail'
      if (any((/a/)/=b))print *,'fail'
      write(12,*)(/a/);rewind 12;read (12,'(a)') ch
      if (ch/=' 135')print *,'fail'
      end subroutine
      end
