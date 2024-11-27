      call test01()
      print *,'pass'
      end
      module m1
      contains
        subroutine sub01(a,ians,jans)
         integer(kind=1) ,optional,pointer::a
         integer ,optional :: ians,jans
         if (present(a)) i=1
         if (present(ians)) ians=1
         if (present(jans)) jans=1
        end subroutine
        subroutine sub02(a,ians,jans)
         integer(kind=2) ,optional,pointer::a
         integer ,optional :: ians,jans
         if (present(a)) i=1
         if (present(ians)) ians=2
         if (present(jans)) jans=2
        end subroutine
        subroutine sub03(a,ians,jans)
         integer(kind=4) ,optional,pointer::a
         integer ,optional :: ians,jans
         if (present(a)) i=1
         if (present(ians)) ians=3
         if (present(jans)) jans=3
        end subroutine
        subroutine sub04(a,ians,jans)
         integer(kind=8) ,optional,pointer::a
         integer ,optional :: ians,jans
         if (present(a)) i=1
         if (present(ians)) ians=4
         if (present(jans)) jans=4
        end subroutine
        subroutine sub05(a,ians,jans)
         real(kind=4)    ,optional,pointer::a
         integer ,optional :: ians,jans
         if (present(a)) i=1
         if (present(ians)) ians=5
         if (present(jans)) jans=5
        end subroutine
        subroutine sub06(a,ians,jans)
         real(kind=16)    ,optional,pointer::a
         integer ,optional :: ians,jans
         if (present(a)) i=1
         if (present(ians)) ians=6
         if (present(jans)) jans=6
        end subroutine
        subroutine sub07(a,ians,jans)
         real(kind=16)    ,optional,pointer::a
         integer ,optional :: ians,jans
         if (present(a)) i=1
         if (present(ians)) ians=7
         if (present(jans)) jans=7
        end subroutine
        subroutine sub08(a,ians,jans)
         complex(kind=4) ,optional,pointer::a
         integer ,optional :: ians,jans
         if (present(a)) i=1
         if (present(ians)) ians=8
         if (present(jans)) jans=8
        end subroutine
        subroutine sub09(a,ians,jans)
         integer ,optional :: ians,jans
         complex(kind=8) ,optional,pointer::a
         if (present(a)) i=1
         if (present(jans)) jans=9
         if (present(ians)) ians=9
        end subroutine
        subroutine sub10(a,ians,jans)
         complex(kind=16) ,optional,pointer::a
         integer ,optional :: ians,jans
         if (present(a)) i=1
         if (present(ians)) ians=10
         if (present(jans)) jans=10
        end subroutine
        subroutine sub11(a,ians,jans)
         logical(kind=1) ,optional,pointer::a
         integer ,optional :: ians,jans
         if (present(a)) i=1
         if (present(ians)) ians=11
         if (present(jans)) jans=11
        end subroutine
        subroutine sub12(a,ians,jans)
         logical(kind=4),optional,pointer::a
         integer ,optional :: ians,jans
         if (present(a)) i=1
         if (present(ians)) ians=12
         if (present(jans)) jans=12
        end subroutine
        subroutine sub13(a,ians,jans)
         character ,optional,pointer::a
         integer ,optional :: ians,jans
         if (present(a)) i=1
         if (present(ians)) ians=13
         if (present(jans)) jans=13
        end subroutine
        subroutine sub14(a,ians,jans)
         type aaa; integer iaaaa; end type
         type(aaa) ,optional,pointer::a
         integer ,optional :: ians,jans
         if (present(a)) i=1
         if (present(ians)) ians=14
         if (present(jans)) jans=14
        end subroutine
      end
      subroutine test01()
      use m1
      call sub01(ians=iii,jans=jjj)
      if (iii.ne.1 ) write(6,*) "NG" 
      if (jjj.ne.1 ) write(6,*) "NG" 
      call sub02(ians=iii,jans=jjj)
      if (iii.ne.2 ) write(6,*) "NG" 
      if (jjj.ne.2 ) write(6,*) "NG" 
      call sub03(ians=iii,jans=jjj)
      if (iii.ne.3 ) write(6,*) "NG" 
      if (jjj.ne.3 ) write(6,*) "NG" 
      call sub04(ians=iii,jans=jjj)
      if (iii.ne.4 ) write(6,*) "NG" 
      if (jjj.ne.4 ) write(6,*) "NG" 
      call sub05(ians=iii,jans=jjj)
      if (iii.ne.5 ) write(6,*) "NG" 
      if (jjj.ne.5 ) write(6,*) "NG" 
      call sub06(ians=iii,jans=jjj)
      if (iii.ne.6 ) write(6,*) "NG" 
      if (jjj.ne.6 ) write(6,*) "NG" 
      call sub07(ians=iii,jans=jjj)
      if (iii.ne.7 ) write(6,*) "NG" 
      if (jjj.ne.7 ) write(6,*) "NG" 
      call sub08(ians=iii,jans=jjj)
      if (iii.ne.8 ) write(6,*) "NG" 
      if (jjj.ne.8 ) write(6,*) "NG" 
      call sub09(ians=iii,jans=jjj)
      if (iii.ne.9 ) write(6,*) "NG" 
      if (jjj.ne.9 ) write(6,*) "NG" 
      call sub10(ians=iii,jans=jjj)
      if (iii.ne.10) write(6,*) "NG" 
      if (jjj.ne.10) write(6,*) "NG" 
      call sub11(ians=iii,jans=jjj)
      if (iii.ne.11) write(6,*) "NG" 
      if (jjj.ne.11) write(6,*) "NG" 
      call sub12(ians=iii,jans=jjj)
      if (iii.ne.12) write(6,*) "NG" 
      if (jjj.ne.12) write(6,*) "NG" 
      call sub13(ians=iii,jans=jjj)
      if (iii.ne.13) write(6,*) "NG" 
      if (jjj.ne.13) write(6,*) "NG" 
      call sub14(ians=iii,jans=jjj)
      if (iii.ne.14) write(6,*) "NG" 
      if (jjj.ne.14) write(6,*) "NG" 
      call sub01(jans=jjj)
      if (jjj.ne.1 ) write(6,*) "NG" 
      call sub02(jans=jjj)
      if (jjj.ne.2 ) write(6,*) "NG" 
      call sub03(jans=jjj)
      if (jjj.ne.3 ) write(6,*) "NG" 
      call sub04(jans=jjj)
      if (jjj.ne.4 ) write(6,*) "NG" 
      call sub05(jans=jjj)
      if (jjj.ne.5 ) write(6,*) "NG" 
      call sub06(jans=jjj)
      if (jjj.ne.6 ) write(6,*) "NG" 
      call sub07(jans=jjj)
      if (jjj.ne.7 ) write(6,*) "NG" 
      call sub08(jans=jjj)
      if (jjj.ne.8 ) write(6,*) "NG" 
      call sub09(jans=jjj)
      if (jjj.ne.9 ) write(6,*) "NG" 
      call sub10(jans=jjj)
      if (jjj.ne.10) write(6,*) "NG" 
      call sub11(jans=jjj)
      if (jjj.ne.11) write(6,*) "NG" 
      call sub12(jans=jjj)
      if (jjj.ne.12) write(6,*) "NG" 
      call sub13(jans=jjj)
      if (jjj.ne.13) write(6,*) "NG" 
      call sub14(jans=jjj)
      if (jjj.ne.14) write(6,*) "NG" 
      end
