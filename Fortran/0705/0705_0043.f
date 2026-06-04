      call s1
      print *,'pass'
      end
      subroutine s1
      parameter (i=1,j=3)
      character*(1) sa1,aa1(i:j),aa2(1:3)
      character*(1) sf1,af1(i:j),af2(1:3)
      structure /xx/
       character*(1) sa1,af2(1:3)
      end structure
      record /xx/ rs1,ra1(i:j),ra2(1:3)
      call       t1(sa1,aa1,aa2,sf1,af1,af2,rs1,ra1,ra2,i,j)
      end
      subroutine err(i,j)
      print *,'fail'
      print *,'error code: ',i,j
      end
      subroutine xcs(cs,m)
      character*(*) cs
      mm=m
      m=m+1
      goto 2
      entry      tcs(cs,i)
      mm=i
2     if (len(cs).ne.2) call err(mm,101)
      if ((cs).ne.'aa') call err(mm,102)
      end
      subroutine xca(cs,m)
      character*(*) cs(*)
      mm=m
      m=m+1
      goto 2
      entry      tca(cs,i)
      mm=i
2     continue
      if (len(cs).ne.2) call err(mm,201)
      if ((cs(1)).ne.'aa') call err(mm,202)
      if ((cs(2)).ne.'aa') call err(mm,203)
      if ((cs(3)).ne.'aa') call err(mm,204)
      end
      subroutine t1(sa1,aa1,aa2,sf1,af1,af2,rs1,ra1,ra2,i,j)
      character*(1) sa1,aa1(i:j),aa2(1:3)
      character*(*) sf1,af1(i:j),af2(1:3)
      character*(1)     ak1( : )
      structure /xx/
       character*(1) sa1,af2(1:3)
      end structure
      record /xx/ rs1,ra1(i:j),ra2(1:3),rk1(:)
      allocatable ak1,rk1
      allocate (ak1(i:j))
      allocate (rk1(i:j))
      sa1='a'
      aa1='a'
      aa2='a'
      sf1='a'
      af1='a'
      af2='a'
      ak1='a'
      rs1.sa1='a'
      rs1.af2='a'
      ra1.sa1='a'
      ra2.sa1='a'
      rk1.sa1='a'
      do  k=i,j
        ra1(k).af2='a'
        ra2(k).af2='a'
        rk1(k).af2='a'
      end do
      call tcs(sa1//sa1                 ,001)
      call tcs(sa1//aa1(j)              ,002)
      call tcs(sa1//aa2(j)              ,003)
      call tcs(sa1//sf1                 ,004)
      call tcs(sa1//af1(j)              ,005)
      call tcs(sa1//af2(j)              ,006)
      call tcs(sa1//rs1.sa1             ,007)
      call tcs(sa1//rs1.af2(j)          ,008)
      call tcs(sa1//ra1(j).sa1          ,009)
      call tcs(sa1//ra1(j).af2(j)       ,010)
      call tcs(sa1//ra2(j).sa1          ,011)
      call tcs(sa1//ra2(j).af2(j)       ,012)
      call tcs(sa1//ak1(j)              ,013)
      call tcs(sa1//rk1(j).sa1          ,014)
      call tcs(sa1//rk1(j).af2(j)       ,015)
      call tca(sa1//aa1                 ,016)
      call tca(sa1//aa2                 ,017)
      call tca(sa1//af1                 ,018)
      call tca(sa1//af2                 ,019)
      call tca(sa1//rs1.af2             ,020)
      call tca(sa1//ra1.sa1             ,021)
      call tca(sa1//ra1(j).af2          ,022)
      call tca(sa1//ra1   .af2(j)       ,023)
      call tca(sa1//ra2   .sa1          ,024)
      call tca(sa1//ra2   .af2(j)       ,025)
      call tca(sa1//ra2(j).af2          ,026)
      call tca(sa1//ak1                 ,027)
      call tca(sa1//rk1   .sa1          ,029)
      call tca(sa1//rk1   .af2(j)       ,030)
      call tca(sa1//rk1(j).af2          ,031)
      call tca(aa1//sa1                 ,101)
      call tca(aa1//aa1(j)              ,102)
      call tca(aa1//aa2(j)              ,103)
      call tca(aa1//sf1                 ,104)
      call tca(aa1//af1(j)              ,105)
      call tca(aa1//af2(j)              ,106)
      call tca(aa1//rs1.sa1             ,107)
      call tca(aa1//rs1.af2(j)          ,108)
      call tca(aa1//ra1(j).sa1          ,109)
      call tca(aa1//ra1(j).af2(j)       ,110)
      call tca(aa1//ra2(j).sa1          ,111)
      call tca(aa1//ra2(j).af2(j)       ,112)
      call tca(aa1//ak1(j)              ,113)
      call tca(aa1//rk1(j).sa1          ,114)
      call tca(aa1//rk1(j).af2(j)       ,115)
      call tca(aa1//aa1                 ,116)
      call tca(aa1//aa2                 ,117)
      call tca(aa1//af1                 ,118)
      call tca(aa1//af2                 ,119)
      call tca(aa1//rs1.af2             ,120)
      call tca(aa1//ra1.sa1             ,121)
      call tca(aa1//ra1(j).af2          ,122)
      call tca(aa1//ra1   .af2(j)       ,123)
      call tca(aa1//ra2   .sa1          ,124)
      call tca(aa1//ra2   .af2(j)       ,125)
      call tca(aa1//ra2(j).af2          ,126)
      call tca(aa1//ak1                 ,127)
      call tca(aa1//rk1   .sa1          ,129)
      call tca(aa1//rk1   .af2(j)       ,130)
      call tca(aa1//rk1(j).af2          ,131)
      call tcs(aa1(j)//sa1                 ,132)
      call tcs(aa1(j)//aa1(j)              ,133)
      call tcs(aa1(j)//aa2(j)              ,134)
      call tcs(aa1(j)//sf1                 ,135)
      call tcs(aa1(j)//af1(j)              ,136)
      call tcs(aa1(j)//af2(j)              ,137)
      call tcs(aa1(j)//rs1.sa1             ,138)
      call tcs(aa1(j)//rs1.af2(j)          ,139)
      call tcs(aa1(j)//ra1(j).sa1          ,140)
      call tcs(aa1(j)//ra1(j).af2(j)       ,141)
      call tcs(aa1(j)//ra2(j).sa1          ,142)
      call tcs(aa1(j)//ra2(j).af2(j)       ,143)
      call tcs(aa1(j)//ak1(j)              ,144)
      call tcs(aa1(j)//rk1(j).sa1          ,145)
      call tcs(aa1(j)//rk1(j).af2(j)       ,146)
      call tca(aa1(j)//aa1                 ,147)
      call tca(aa1(j)//aa2                 ,148)
      call tca(aa1(j)//af1                 ,149)
      call tca(aa1(j)//af2                 ,150)
      call tca(aa1(j)//rs1.af2             ,151)
      call tca(aa1(j)//ra1.sa1             ,152)
      call tca(aa1(j)//ra1(j).af2          ,153)
      call tca(aa1(j)//ra1   .af2(j)       ,154)
      call tca(aa1(j)//ra2   .sa1          ,155)
      call tca(aa1(j)//ra2   .af2(j)       ,156)
      call tca(aa1(j)//ra2(j).af2          ,157)
      call tca(aa1(j)//ak1                 ,158)
      call tca(aa1(j)//rk1   .sa1          ,159)
      call tca(aa1(j)//rk1   .af2(j)       ,160)
      call tca(aa1(j)//rk1(j).af2          ,161)
      call tca(aa2//sa1                 ,201)
      call tca(aa2//aa1(j)              ,202)
      call tca(aa2//aa2(j)              ,203)
      call tca(aa2//sf1                 ,204)
      call tca(aa2//af1(j)              ,205)
      call tca(aa2//af2(j)              ,206)
      call tca(aa2//rs1.sa1             ,207)
      call tca(aa2//rs1.af2(j)          ,208)
      call tca(aa2//ra1(j).sa1          ,209)
      call tca(aa2//ra1(j).af2(j)       ,210)
      call tca(aa2//ra2(j).sa1          ,211)
      call tca(aa2//ra2(j).af2(j)       ,212)
      call tca(aa2//ak1(j)              ,213)
      call tca(aa2//rk1(j).sa1          ,214)
      call tca(aa2//rk1(j).af2(j)       ,215)
      call tca(aa2//aa1                 ,216)
      call tca(aa2//aa2                 ,217)
      call tca(aa2//af1                 ,218)
      call tca(aa2//af2                 ,219)
      call tca(aa2//rs1.af2             ,220)
      call tca(aa2//ra1.sa1             ,221)
      call tca(aa2//ra1(j).af2          ,222)
      call tca(aa2//ra1   .af2(j)       ,223)
      call tca(aa2//ra2   .sa1          ,224)
      call tca(aa2//ra2   .af2(j)       ,225)
      call tca(aa2//ra2(j).af2          ,226)
      call tca(aa2//ak1                 ,227)
      call tca(aa2//rk1   .sa1          ,229)
      call tca(aa2//rk1   .af2(j)       ,230)
      call tca(aa2//rk1(j).af2          ,231)
      call tcs(aa2(j)//sa1                 ,232)
      call tcs(aa2(j)//aa1(j)              ,233)
      call tcs(aa2(j)//aa2(j)              ,234)
      call tcs(aa2(j)//sf1                 ,235)
      call tcs(aa2(j)//af1(j)              ,236)
      call tcs(aa2(j)//af2(j)              ,237)
      call tcs(aa2(j)//rs1.sa1             ,238)
      call tcs(aa2(j)//rs1.af2(j)          ,239)
      call tcs(aa2(j)//ra1(j).sa1          ,240)
      call tcs(aa2(j)//ra1(j).af2(j)       ,241)
      call tcs(aa2(j)//ra2(j).sa1          ,242)
      call tcs(aa2(j)//ra2(j).af2(j)       ,243)
      call tcs(aa2(j)//ak1(j)              ,244)
      call tcs(aa2(j)//rk1(j).sa1          ,245)
      call tcs(aa2(j)//rk1(j).af2(j)       ,246)
      call tca(aa2(j)//aa1                 ,247)
      call tca(aa2(j)//aa2                 ,248)
      call tca(aa2(j)//af1                 ,249)
      call tca(aa2(j)//af2                 ,250)
      call tca(aa2(j)//rs1.af2             ,251)
      call tca(aa2(j)//ra1.sa1             ,252)
      call tca(aa2(j)//ra1(j).af2          ,253)
      call tca(aa2(j)//ra1   .af2(j)       ,254)
      call tca(aa2(j)//ra2   .sa1          ,255)
      call tca(aa2(j)//ra2   .af2(j)       ,256)
      call tca(aa2(j)//ra2(j).af2          ,257)
      call tca(aa2(j)//ak1                 ,258)
      call tca(aa2(j)//rk1   .sa1          ,259)
      call tca(aa2(j)//rk1   .af2(j)       ,260)
      call tca(aa2(j)//rk1(j).af2          ,261)
      end
