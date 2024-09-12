module m1
   character(kind=4, len=4)::ch(5)

 contains
  subroutine s(arg1,arg2, i1,i2)
   integer :: i1,i2
   character(kind=4, len=*),value::arg1(:)
   character(kind=4, len=i2),value::arg2(:)

    if (size(arg1) /= 2) print*, 501
    if (len(arg1) /= i1) print *,201
    if (arg1(1) .ne. 4_"121") print *,202
    if (arg1(2) /= 4_'454') print *,203

    if (size(arg2) /= 3) print*, 502
    if (len(arg2) /= i2) print *,301
    if (arg2(1) /= 4_'5678') print *,202
    if (arg2(2) /= 4_'1470') print *,303
    if (arg2(3) /= 4_'2581') print *,304

    arg1(1) = "QRS"
    arg1(2) = "UVW"

    arg2(1) = "ABCD"
    arg2(2) = "EFGH"
    arg2(3) = "IJKL"
  end subroutine
 end

 subroutine s1
 use m1
 character(kind=4,len=:),allocatable :: cc(:)
 allocate(character(kind=4, len=3)::cc(2))

 ch(1) = "1234"
 ch(2) = '5678'
 ch(3) = '1470'
 ch(4) = '2581'
 ch(5) = '3692'
 cc(1) = "121"
 cc(2) = '454'
 call s(cc,ch(2:4), len(cc),len(ch))
 if (cc(1) /= 4_'121')  print *,101, cc
 if (cc(2) /= 4_'454')  print *,102, cc
 if (ch(1) /= 4_'1234') print *,103, ch
 if (ch(2) /= 4_'5678') print *,104, ch
 if (ch(3) /= 4_'1470') print *,105, ch
 if (ch(4) /= 4_'2581') print *,106, ch
 if (ch(5) /= 4_'3692') print *,107, ch
 end

 program pro

 call s1
 print *,"PASS"
 end

