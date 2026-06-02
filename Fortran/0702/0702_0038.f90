 call s1
 print *,'pass'
 end
 subroutine s1
     character*2 a(2,3,4)
  call sx(a,2,3,4,5)
end
subroutine sx(a,i2,i3,i4,i5)
     character*(*) a(i2,i3,i4)
     character*2,parameter::a1="01,1",a2="02,2",a3="03,3",a4="04,4",a5="05,5",&
       a6="06,6",a7="07,7",a8="08,8",a9="09,9",a10="10,10",a11="11,11",&
       a12="12,12",a13="13,13",a14="14,14",a15="15,15",a16="16,16",&
       a17="17,17",a18="18,18",a19="19,19",a20="20,20",a21="21,21",&
       a22="22,22",a23="23,23",a24="24,24"
     a=reshape((/(cmp(i),i=1,2*3*4)/),(/2,3,4/))
     call sx1(spread(a,dim=1,ncopies=i5))
     call sx2(spread(a,dim=2,ncopies=i5))
     call sx3(spread(a,dim=3,ncopies=i5))
     call sx4(spread(a,dim=4,ncopies=i5))
     contains
      function cmp(i)
      character*(2) cmp
      write(cmp,'(i2.2)') i
      end function
      subroutine sx1(x)
      character*2::x(:,:,:,:)
      if (any(shape(x)/=(/5,2,3,4/)))print *,'fail'
      if (any((/x/)/=(/(cmp(i),cmp(i),cmp(i),cmp(i),cmp(i),i=1,2*3*4)/)))print *,'fail'
      end subroutine
      subroutine sx2(x)
      character*(*)::x(:,:,:,:)
      if (any(shape(x)/=(/2,5,3,4/)))print *,'fail'
      if (any((/x/)/=(/&
a1,a2,a1,a2,a1,a2,a1,a2,a1,a2,a3,a4,a3,a4,a3,a4,a3,a4,a3,a4,a5,a6,a5,a6,a5,a6,a5,a6,a5,a6,a7,a8,a7,a8,a7,a8,a7,a8,a7,a8,a9,a10,a9,a10,a9,a10,a9,a10,a9,a10,a11,a12,a11,a12,a11,a12,a11,a12,a11,a12,&
a13,a14,a13,a14,a13,a14,a13,a14,a13,a14,a15,a16,a15,a16,a15,a16,a15,a16,a15,a16,a17,a18,a17,a18,a17,a18,a17,a18,a17,a18,a19,a20,a19,a20,a19,a20,a19,a20,a19,a20,a21,a22,a21,a22,a21,a22,a21,a22,a21,a22,a23,a24,a23,a24,a23,a24,a23,a24,a23,a24&
/)))print *,'fail'
      end subroutine
      subroutine sx3(x)
      character*(*)::x(:,:,:,:)
      if (any(shape(x)/=(/2,3,5,4/)))print *,'fail'
      if (any((/x/)/=(/&
a1,a2,a3,a4,a5,a6,a1,a2,a3,a4,a5,a6,a1,a2,a3,a4,a5,a6,a1,a2,a3,a4,a5,a6,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a7,a8,a9,a10,a11,a12,a7,a8,a9,a10,a11,a12,a7,a8,a9,a10,a11,a12,a7,&
a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a13,a14,a15,a16,a17,a18,a13,a14,a15,a16,a17,a18,a13,a14,a15,a16,a17,a18,a13,a14,a15,&
a16,a17,a18,a19,a20,a21,a22,a23,a24,a19,a20,a21,a22,a23,a24,a19,a20,a21,a22,a23,a24,a19,a20,a21,a22,a23,a24,a19,a20,a21,a22,a23,a24&
/)))print *,'fail'
      end subroutine
      subroutine sx4(x)
      character*(*)::x(:,:,:,:)
      if (any(shape(x)/=(/2,3,4,5/)))print *,'fail'
      if (any((/x/)/=(/&
a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,&
a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,&
a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24&
/)))print *,'fail'
      end subroutine
     end
