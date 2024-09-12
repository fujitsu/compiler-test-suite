call test01()
call test02()
call test03()
call test04()
print *,'pass'
end

subroutine test01()
i=ifun()
if (i.ne.1) print *,'ng'
contains
function ifun()
          common /com/ i1,i2,i3,i4,i5,i6,i7
          integer a(7),kk(7)
          equivalence (jj  ,i5)
          equivalence (a(1),kk(1))
          equivalence (kk(5),jj)
          do 10 i=1,7
            kk(i)=i
10        continue
          do 20 i=1,7
             if (a(i).ne.i) print *,'pad05 err'
20        continue
          call sub()
ifun=1
end function
          subroutine sub()
          common /com/ i1,i2,i3,i4,i5,i6,i7
          if (i1.ne.1) print *,'pad05 ng'
          if (i2.ne.2) print *,'pad05 ng'
          if (i3.ne.3) print *,'pad05 ng'
          if (i4.ne.4) print *,'pad05 ng'
          if (i5.ne.5) print *,'pad05 ng'
          if (i6.ne.6) print *,'pad05 ng'
          if (i7.ne.7) print *,'pad05 ng'
          end subroutine
end subroutine

subroutine test02()
integer a(100)
a=0
i=10
i=ifun()
if (any(a(1:10).ne.(/(i,i=1,10)/))) print *,'ng'
if (i.ne.1) print *,'ng'
contains
function ifun()
a(1:i)=(/(i,i=1,i)/)
ifun=1
end function
end

subroutine test03()
j=1
call isub01(ii)
call sub01(jj)
if (ii.ne.7) print *,'ng'
if (jj.ne.8) print *,'ng'
if (j.ne.1) print *,'ng'
contains
subroutine  isub01(ia)
integer a(10),b(10)
equivalence (i,jj)
equivalence (i,a(1))
equivalence (b(3),a(2))
i=7
ia=b(2)
end subroutine
end
subroutine  sub01(ia)
integer a(10),b(10)
equivalence (i,j)
equivalence (i,a(1))
equivalence (b(3),a(2))
i=8
ia=b(2)
end subroutine

subroutine test04()
j=1
call isub01(ii)
call ssub01(jj)
if (ii.ne.7) print *,'ng'
if (jj.ne.8) print *,'ng'
if (j.ne.1) print *,'ng'
contains
subroutine  isub01(ia)
integer a(10),b(10)
equivalence (i,kk)
equivalence (i,a(1))
equivalence (b(3),a(2))
data kk/1/
i=7
ia=b(2)
end subroutine
end
subroutine  ssub01(ia)
integer a(10),b(10)
equivalence (i,j)
equivalence (i,a(1))
equivalence (b(3),a(2))
data j/1/
i=8
ia=b(2)
end subroutine
