call test01()
call test02()
call test03()
print *,'pass'
end

subroutine test01()
CALL SUB(2.1_4,2.1_8,2.1_16)
CONTAINS

SUBROUTINE SUB(m1,m2,m3)
REAL(4), OPTIONAL :: M1
REAL(8), OPTIONAL :: M2
REAL(16),OPTIONAL :: M3
      if (aint(m1  ,kind= 4) .ne. (2.0_4)) print *,'fail'
      if (aint(m1  ,kind= 8) .ne. (2.0_8)) print *,'fail'
      if (aint(m1  ,kind= 16) .ne. (2.0_16)) print *,'fail'
      if (aint(m2  ,kind= 4) .ne. (2.0_4)) print *,'fail'
      if (aint(m2  ,kind= 8) .ne. (2.0_8)) print *,'fail'
      if (aint(m2  ,kind= 16) .ne. (2.0_16)) print *,'fail'
      if (aint(m3  ,kind= 4) .ne. (2.0_4)) print *,'fail'
      if (aint(m3  ,kind= 8) .ne. (2.0_8)) print *,'fail'
      if (aint(m3  ,kind= 16) .ne. (2.0_16)) print *,'fail'
end subroutine 
end

subroutine test02()
CALL SUB(2.6_4,2.6_8,2.6_16)
CONTAINS

SUBROUTINE SUB(m1,m2,m3)
REAL(4), OPTIONAL :: M1
REAL(8), OPTIONAL :: M2
REAL(16),OPTIONAL :: M3
      if (anint(m1  ,kind= 4) .ne.  (3.0_4)) print *,'fail'
      if (anint(m1  ,kind= 8) .ne.  (3.0_8)) print *,'fail'
      if (anint(m1  ,kind= 16) .ne. (3.0_16)) print *,'fail'
      if (anint(m2  ,kind= 4) .ne.  (3.0_4)) print *,'fail'
      if (anint(m2  ,kind= 8) .ne.  (3.0_8)) print *,'fail'
      if (anint(m2  ,kind= 16) .ne. (3.0_16)) print *,'fail'
      if (anint(m3  ,kind= 4) .ne.  (3.0_4)) print *,'fail'
      if (anint(m3  ,kind= 8) .ne.  (3.0_8)) print *,'fail'
      if (anint(m3  ,kind= 16) .ne. (3.0_16)) print *,'fail'
end subroutine 
end

subroutine test03()
CALL SUB(100_1,100_2,100_4,100_8)
CONTAINS

SUBROUTINE SUB(m1,m2,m3,m4)
integer(1), OPTIONAL :: M1
integer(2), OPTIONAL :: M2
integer(4), OPTIONAL :: M3
integer(8), OPTIONAL :: M4
      if (char(m1   ,kind= 1) .ne.  'd'    ) print *,'fail'
      if (char(m2   ,kind= 1) .ne.  'd'    ) print *,'fail'
      if (char(m3   ,kind= 1) .ne.  'd'    ) print *,'fail'
      if (char(m4   ,kind= 1) .ne.  'd'    ) print *,'fail'
end subroutine 
end

