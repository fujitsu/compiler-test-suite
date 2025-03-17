      program main
       logical(1)::m1(10)=.true.
       logical(2)::m2(10)=.false.
       logical(4)::m4(10)=.true.
       logical(8)::m8(10)=.false.
        m1(1:10)=.true.
        m2(1:)=.false.
        m4(:10)=.true.
        m8(:)=.false.
        i=1
        j=10
        call s0(m1,m2,m4,m8,i,j)
        print *,'pass'
      end program main

      subroutine s0(mm1,mm2,mm4,mm8,i,j) 
       logical(1)::ll1(10),mm1(10)
       logical(2)::ll2(10),mm2(10)
       logical(4)::ll4(10),mm4(10)
       logical(8)::ll8(10),mm8(10)
        ll1=.true.
        ll2=.false.
        ll4=.true.
        ll8=.false.
        call s1()
        call s2()
       contains
        subroutine s1()
          ll1=ll1(i:j).and.mm1(1:j)
          ll2=ll2(i:j).or.mm2(i:10)
          ll4=ll4(i:j).and.mm4(1:j)
          ll8=ll8(i:j).or.mm8(i:10)
        end subroutine s1
        subroutine s2()
          if (any(.not.ll1)) print *,'error 1' 
          if (any(ll2)) print *,'error 2' 
          if (.not.all(ll4)) print *,'error 3' 
          if (any(ll8.or.ll2)) print *,'error 4' 
        end subroutine s2
      end subroutine s0
