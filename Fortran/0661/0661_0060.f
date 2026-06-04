      call aaa
      call bbb
      call ccc
      print *,'pass'
      stop
      end
      subroutine aaa
      type ty1
        integer*4 as
      endtype
      type(ty1)::typ1
        character*255 a
      parameter(     a ='01234567890123456789012345678901234567890123456
     1789000000000000000000000000000000000000000000000000000000000000000
     1000000000000000000000000000000000000000000000000000000000000000000
     1000000000000000000000000000000000000000000000000000000000000000000
     1000000  ')
  100 read(5,*,iostat=typ1%as,err=200)iii
  130 write(6,*,iostat=typ1%as)iii
  150 write(6,*,err=200,iostat=typ1%as) a,iii
  200 end
      subroutine bbb
      type ty1
        integer*2 i
        integer*4 k,j,da/100/,l
        character*7 cha1/'unknown'/
        character*6 cha2/'direct'/
      endtype
      type(ty1)::typ1
      parameter(i=1)
      parameter(k=1)
      l=1
      j=1
      open(unit=i+k+j+2,iostat=typ1%da,err=200,
     1status=typ1%cha1,access=typ1%cha2,recl=typ1%da+i*j)
  200 end
      subroutine ccc
      call sub1
      call sub2
      end
      subroutine sub1
      type ty1
         integer*4     a,i4/1*999/,b,c/4/
         integer*4     k/5/
      endtype
      type(ty1)::typ1
      read(5,1,iostat=typ1%a,err=19,end=99 )typ1%i4
   99 if(typ1%a.ne.0.and.typ1%b.ne.1.and.typ1%c.ne.4) print *,'fail'
   19 read(typ1%k,1,iostat=typ1%a,err=20,end= 3 )typ1%i4
    3 if(typ1%a.ne.0.and.typ1%b.ne.1.and.typ1%c.ne.4) print *,'fail'
   20 typ1%k=6
      if(typ1%a.ne.0.and.typ1%b.ne.1.and.typ1%c.ne.4) print *,'fail'
      if(typ1%a.ne.0.and.typ1%b.ne.1.and.typ1%c.ne.4) print *,'fail'
      if(typ1%a.ne.0.and.typ1%b.ne.1.and.typ1%c.ne.4) print *,'fail'
      if(typ1%a.ne.0.and.typ1%b.ne.1.and.typ1%c.ne.4) print *,'fail'
   1  format(i4)
  10  return
      end
      subroutine sub2
      type ty1
         integer*4     a/0/,i4/4/,b/1/,c/4/
      endtype
      type(ty1)::typ1
      if(typ1%a.ne.0.and.typ1%b.ne.1.and.typ1%c.ne.4) print *,'fail'
      if(typ1%a.ne.0.and.typ1%c.ne.4) print *,'fail'
  10  return
      end
      subroutine z
      type ty1
        integer*4 i,j,k,aa,ab
      endtype
      type(ty1)::typ1
      typ1%aa=200
      typ1%i=1
      typ1%j=2
      typ1%k=2
      read(unit=typ1%i+typ1%k+typ1%j+1,
     1iostat=typ1%aa,err=200,end=300) typ1%ab
      if(typ1%ab.ne.1) print *,'fail'
      if(typ1%ab.ne.2) print *,'fail'
      if(typ1%ab.ne.3) print *,'fail'
  200 write(6,*) typ1%ab
  300 end
