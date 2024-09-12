subroutine s1
character(*),parameter::y00=max('12','11','13')
character(*),parameter::y01='12'
character(*),parameter::y02='11'
character(*),parameter::y03='13'
character*2::z01,z02,z03,z00
z01=y01
z02=y02
z03=y03
z00=max(z01,z02,z03)
if (z00/=y00)print *,101,z00,y00
if (len(y00)/=2)print *,102
end
call s1
print *,'pass'
end

