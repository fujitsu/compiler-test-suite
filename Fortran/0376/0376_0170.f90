subroutine s01
 LOGICAL(4):: l01,l02,l04,l08
 integer(1),parameter::i1=65
 integer(2),parameter::i2=16961
 integer(4),parameter::i4=1145258561
 integer(8),parameter::i8=5208208757389214273_8
 PARAMETER(l01=i1.EQ.z'41')
 PARAMETER(l02=i2.EQ.z'4241')
 PARAMETER(l04=i4.EQ.z'44434241')
 PARAMETER(l08=i8.EQ.5208208757389214273_8)
      if (.not.l01)print *,'error-01'
      if (.not.l02)print *,'error-02'
      if (.not.l04)print *,'error-03'
      if (.not.l08)print *,'error-04'
end
subroutine s02
 LOGICAL(4):: l01,l02,l04,l08
 integer(1)::i1=65
 integer(2)::i2=16961
 integer(4)::i4=1145258561
 integer(8)::i8=5208208757389214273_8
 l01=i1.EQ.z'41'
 l02=i2.EQ.z'4241'
 l04=i4.EQ.z'44434241'
 l08=i8.EQ.5208208757389214273_8
      if (.not.l01)print *,'error-01'
      if (.not.l02)print *,'error-02'
      if (.not.l04)print *,'error-03'
      if (.not.l08)print *,'error-04'
end
subroutine s03
 LOGICAL(4):: l01,l02,l04,l08
 integer(1)::i1
 integer(2)::i2
 integer(4)::i4
 integer(8)::i8
 i1=65
 i2=16961
 i4=1145258561
 i8=5208208757389214273_8
 l01=i1.EQ.z'41'
 l02=i2.EQ.z'4241'
 l04=i4.EQ.z'44434241'
 l08=i8.EQ.5208208757389214273_8
      if (.not.l01)print *,'error-01'
      if (.not.l02)print *,'error-02'
      if (.not.l04)print *,'error-03'
      if (.not.l08)print *,'error-04'
end
call s01
call s02
call s03
      print *,'pass'
      END
