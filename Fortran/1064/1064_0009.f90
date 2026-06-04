      call sub1()
      call sub2()
      call sub3()
      print *,'pass'
      end
      subroutine sub3()
      integer a(10,10),ans(2)
      integer ab(0,0),ansb(2)
  logical::f=.false.
      ansb=maxloc(ab,ab.eq.1,back=f) 
      do i=1,10
       do j=1,10
         a(i,j)=i*j
       end do
      end do
      ans=maxloc(a,a.lt.10,back=f)
      if (ans(1).ne.9) print *,'fail'
      if (ans(2).ne.1) print *,'fail'
      ans=maxloc(a,a.eq.80,back=f)
      if (ans(1).ne.10) print *,'fail'
      if (ans(2).ne.8) print *,'fail'
      ans=maxloc(a,a.ne.80,back=f)
      if (ans(1).ne.10) print *,'fail'
      if (ans(2).ne.10) print *,'fail'
      end
      subroutine sub2()
      integer  a(10),ans(10)
      data a /100,2,3,4,5,6,7,8,9,10/
  logical::f=.false.
      ans(1:1)=maxloc((/(i,i=1,10)/),back=f)
      if (ans(1).ne.10) print *,'fail'
      ans(1:1)=maxloc(a,back=f)
      if (ans(1).ne.1) print *,'fail'
      a=(/(i,i=1,10)/)
      do i=1,10
      ans(1:1)=maxloc(a(1:i),back=f)
      if (ans(1).ne.i) print *,'fail'
      end do
      ans(1:1)=maxloc(a(a),back=f)
      if (ans(1).ne.10) print *,'fail'
      ans(1:1)=maxloc(a(a)+90,back=f)
      if (ans(1).ne.10) print *,'fail'
      ans(1:1)=maxloc(a,(/(.true.,i=1,10)/),back=f)
      if (ans(1).ne.10) print *,'fail'
      ans(1:1)=maxloc(a,(/(.false.,i=1,10)/),back=f)
      ans(1:1)=maxloc(a,(/(.true.,.false.,i=1,5)/),back=f)
      if (ans(1).ne.9) print *,'fail'
      ans(1:1)=maxloc(a,a.lt.6,back=f)
      if (ans(1).ne.5) print *,'fail'
      ans(1:1)=maxloc(a,a.gt.100,back=f)
      end
      subroutine sub1()
      real*4      ra4(2) 
      real*8      ra8(2)
      real*16     ra16(2)
      integer*1   ia1(2)
      integer*2   ia2(2)
      integer*4   ia4(2)
      integer*8   ia8(2)
      logical*1   la1(2)
      logical*4   la4(2)
      integer a(2)
       type ty1
         integer a(2)
       end type
       type (ty1) ::str,str2(2)
      logical::f=.false.
      str%a=1
      str2(1)%a=1
      str2(2)%a=1
      a=(/(i,i=1,2)/)
      ra4=1;ra8=1;ra16=1;la1=.true.;la4=.true.
      ia1=1;ia2=1;ia4=1;ia8=1
call ss01(maxloc(str%a,back=f))
call ss01(maxloc(str2%a(1),back=f))
call ss01(maxloc(str%a(a),back=f))
call ss01(maxloc(str2(a)%a(1),back=f))
call ss01(maxloc(str%a(1:2),back=f))
call ss01(maxloc(str2(1:2)%a(1),back=f))
call ss01(maxloc(ra4,back=f))
call ss01(maxloc(ra8,back=f))
call ss01(maxloc(ra16,back=f))
call ss01(maxloc(ia1,back=f))
call ss01(maxloc(ia2,back=f))
call ss01(maxloc(ia4,back=f))
call ss01(maxloc(ia8,back=f))
call ss01(maxloc(-(/ra4/),back=f))
call ss01(maxloc(-(/ra8/),back=f))
call ss01(maxloc(-(/ra16/),back=f))
call ss01(maxloc(-(/ia1/),back=f))
call ss01(maxloc(-(/ia2/),back=f))
call ss01(maxloc(-(/ia4/),back=f))
call ss01(maxloc(-(/ia8/),back=f))
call ss01(maxloc(ra4+ra4,back=f))
call ss01(maxloc(-ra4,back=f))
call ss01(maxloc(-ra8,back=f))
call ss01(maxloc(-ra16,back=f))
call ss01(maxloc(-ia1,back=f))
call ss01(maxloc(-ia2,back=f))
call ss01(maxloc(-ia4,back=f))
call ss01(maxloc(-ia8,back=f))
call ss01(maxloc(ra4+ra4,back=f))
call ss01(maxloc(ra8+ra8,back=f))
call ss01(maxloc(ra16+ra16,back=f))
call ss01(maxloc(ia1+ia1,back=f))
call ss01(maxloc(ia2+ia2,back=f))
call ss01(maxloc(ia4+ia4,back=f))
call ss01(maxloc(ia8+ia8,back=f))
call ss01(maxloc(ra4,.not.(/(la1,i=1,1)/),back=f))
call ss01(maxloc(ra8,.not.(/(la1,i=1,1)/),back=f))
call ss01(maxloc(ra16,.not.(/(la1,i=1,1)/),back=f))
call ss01(maxloc(ia1,.not.(/(la1,i=1,1)/),back=f))
call ss01(maxloc(ia2,.not.(/(la1,i=1,1)/),back=f))
call ss01(maxloc(ia4,.not.(/(la1,i=1,1)/),back=f))
call ss01(maxloc(ia8,.not.(/(la1,i=1,1)/),back=f))
call ss01(maxloc(ra4,(/(la1,i=1,1)/),back=f))
call ss01(maxloc(ra8,(/(la1,i=1,1)/),back=f))
call ss01(maxloc(ra16,(/(la1,i=1,1)/),back=f))
call ss01(maxloc(ia1,(/(la1,i=1,1)/),back=f))
call ss01(maxloc(ia2,(/(la1,i=1,1)/),back=f))
call ss01(maxloc(ia4,(/(la1,i=1,1)/),back=f))
call ss01(maxloc(ia8,(/(la1,i=1,1)/),back=f))
call ss01(maxloc(ra4,(/la1/),back=f))
call ss01(maxloc(ra8,(/la1/),back=f))
call ss01(maxloc(ra16,(/la1/),back=f))
call ss01(maxloc(ia1,(/la1/),back=f))
call ss01(maxloc(ia2,(/la1/),back=f))
call ss01(maxloc(ia4,(/la1/),back=f))
call ss01(maxloc(ia8,(/la1/),back=f))
call ss01(maxloc(ra4,(/la1/),back=f))
call ss01(maxloc(ra8,(/la1/),back=f))
call ss01(maxloc(ra16,la1,back=f))
call ss01(maxloc(ia1,la1,back=f))
call ss01(maxloc(ia2,la1,back=f))
call ss01(maxloc(ia4,la1,back=f))
call ss01(maxloc(ia8,la1,back=f))
call ss01(maxloc(ra4(1:2),la4(a),back=f))
call ss01(maxloc(ra8(1:2),la4(a),back=f))
call ss01(maxloc(ra16(1:2),la4(a),back=f))
call ss01(maxloc(ia1(1:2),la4(a),back=f))
call ss01(maxloc(ia2(1:2),la4(a),back=f))
call ss01(maxloc(ia4(1:2),la4(a),back=f))
call ss01(maxloc(ia8(1:2),la4(a),back=f))
call ss01(maxloc(ra4(a),la4(a),back=f))
call ss01(maxloc(ra8(a),la4(a),back=f))
call ss01(maxloc(ra16(a),la4(a),back=f))
call ss01(maxloc(ia1(a),la4(a),back=f))
call ss01(maxloc(ia2(a),la4(a),back=f))
call ss01(maxloc(ia4(a),la4(a),back=f))
call ss01(maxloc(ia8(a),la4(a),back=f))
call ss01(maxloc(ra4(a),la4,back=f))
call ss01(maxloc(ra8(a),la4,back=f))
call ss01(maxloc(ra16(a),la4,back=f))
call ss01(maxloc(ia1(a),la4,back=f))
call ss01(maxloc(ia2(a),la4,back=f))
call ss01(maxloc(ia4(a),la4,back=f))
call ss01(maxloc(ia8(a),la4,back=f))
call ss01(maxloc(ra4,la4,back=f))
call ss01(maxloc(ra8,la4,back=f))
call ss01(maxloc(ra16,la4,back=f))
call ss01(maxloc(ia1,la4,back=f))
call ss01(maxloc(ia2,la4,back=f))
call ss01(maxloc(ia4,la4,back=f))
call ss01(maxloc(ia8,la4,back=f))
      contains
       subroutine ss01(i)
       integer*4  i(:),j
       j=i(1)
       end subroutine
      end
