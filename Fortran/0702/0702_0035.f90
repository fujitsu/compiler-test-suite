         call s1
         print *,'pass'
         end
         module   m1
          common /cc/ j1(3)
          contains
          subroutine ss1
          common /cc/ j2(3)
          j1=(/1,2,3/)
          j2(2:3)=j1(1:2)
          if (any(j2/=(/1,1,2/)))print *,'fail'
          j1=(/1,2,3/)
          call sss1
          contains
          subroutine sss1
          j2(2:3)=j1(1:2)
          if (any(j2/=(/1,1,2/)))print *,'fail'
          end subroutine
         end subroutine
         end
         module   mm2
          common /dd/ j1(3)
         end
         module   mmm2
          common /dd/ j6(2)
         end
         module   m2
          use mm2
          use mmm2
          common /dd/ j2(3)
          contains
          subroutine ss2
          common /dd/ j3(3)
          j1=(/1,2,3/)
          j2(2:3)=j1(1:2)
          if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
          j1(2:3)=j2(1:2)
          if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
          j3(2:3)=j1(1:2)
          if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
          j2(2:3)=j3(1:2)
          if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
          j1(2:3)=j3(1:2)
          if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
          j3(2:3)=j2(1:2)
          if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
           call sss2
          contains
  subroutine sss2
   common /dd/ j4(3)
   integer     ::k1(2)=(/1,2/)
   integer     ::j5(2)=(/1,2/)
   equivalence (j5(2),jz)
   j1=(/1,2,3/)
   j1(2:3)=k1; if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
   j2(2:3)=k1; if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
   j3(2:3)=k1; if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
   j4(2:3)=k1; if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
   j1(2:3)=j5; if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
   j2(2:3)=j5; if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
   j3(2:3)=j5; if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
   j4(2:3)=j5; if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
   j1(2:3)=j6; if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
   j2(2:3)=j6; if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
   j3(2:3)=j6; if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
   j4(2:3)=j6; if (any(j2/=(/1,1,2/)))print *,'fail'; j1=(/1,2,3/)
  end subroutine
 end subroutine
         end
 subroutine s1
         use m1
         use m2
         call ss1
         call ss2
         end
