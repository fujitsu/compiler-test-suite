      program ppp
      dimension wvfn(100)
      real evns,res
      complex wvfn,
     *           s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,
     *           s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26

      call sub(s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,
     * s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26)

      evns = 0e0

      do 30 i = 1,100
         wvfn(i)=cmplx(i,101-i)
 30   continue

      do 40 i = 1,100

      s1 = s1 + wvfn(i)
      s2 = s2 + wvfn(i)
      s3 = s3 + wvfn(i)
      s4 = s4 + wvfn(i)
      s5 = s5 + wvfn(i)
      s6 = s6 + wvfn(i)
      s7 = s7 + wvfn(i)
      s8 = s8 + wvfn(i)
      s9 = s9 + wvfn(i)
      s10 = s10 + wvfn(i)
      s11 = s11 + wvfn(i)
      s12 = s12 + wvfn(i)
      s13 = s13 + wvfn(i)
      s14 = s14 + wvfn(i)
      s15 = s15 + wvfn(i)
      s16 = s16 + wvfn(i)
      s17 = s17 + wvfn(i)
      s18 = s18 + wvfn(i)
      s19 = s19 + wvfn(i)
      s20 = s20 + wvfn(i)
      s21 = s21 + wvfn(i)
      s22 = s22 + wvfn(i)
      s23 = s23 + wvfn(i)
      s24 = s24 + wvfn(i)
      s25 = s25 + wvfn(i)
      s26 = s26 + wvfn(i)

 40   continue

      evns = evns
     *     + aimag(s1)**2+real(s1)**2+aimag(s2)**2
     *     + real(s2)**2+aimag(s3)**2+real(s3)**2
     *     + real(s4)**2+aimag(s4)**2
     *     + aimag(s5)**2+real(s5)**2+aimag(s6)**2
     *     + real(s6)**2+aimag(s7)**2+real(s7)**2
     *     + real(s8)**2+aimag(s8)**2
     *     + aimag(s9)**2+real(s9)**2+aimag(s10)**2
     *     + real(s10)**2+aimag(s11)**2+real(s11)**2
     *     + real(s12)**2+aimag(s12)**2
     *     + aimag(s13)**2+real(s13)**2+aimag(s14)**2
     *     + real(s14)**2+aimag(s15)**2+real(s15)**2
     *     + real(s16)**2+aimag(s16)**2
     *     + aimag(s17)**2+real(s17)**2+aimag(s18)**2
     *     + real(s18)**2+aimag(s19)**2+real(s19)**2
     *     + aimag(s20)**2+real(s20)**2+aimag(s21)**2
     *     + real(s21)**2+aimag(s22)**2+real(s22)**2
     *     + aimag(s23)**2+real(s23)**2+aimag(s24)**2
     *     + real(s24)**2+aimag(s25)**2+real(s25)**2
     *     + real(s26)**2+aimag(s26)**2

      do 50 i = 1,100

      s1 = s1 + wvfn(i)
      s2 = s2 + wvfn(i)
      s3 = s3 + wvfn(i)
      s4 = s4 + wvfn(i)
      s5 = s5 + wvfn(i)
      s6 = s6 + wvfn(i)
      s7 = s7 + wvfn(i)
      s8 = s8 + wvfn(i)
      s9 = s9 + wvfn(i)
      s10 = s10 + wvfn(i)
      s11 = s11 + wvfn(i)
      s12 = s12 + wvfn(i)
      s13 = s13 + wvfn(i)
      s14 = s14 + wvfn(i)
      s15 = s15 + wvfn(i)
      s16 = s16 + wvfn(i)
      s17 = s17 + wvfn(i)
      s18 = s18 + wvfn(i)
      s19 = s19 + wvfn(i)
      s20 = s20 + wvfn(i)
      s21 = s21 + wvfn(i)
      s22 = s22 + wvfn(i)
      s23 = s23 + wvfn(i)
      s24 = s24 + wvfn(i)
      s25 = s25 + wvfn(i)
      s26 = s26 + wvfn(i)

 50   continue

      evns = evns
     *+ aimag(s1)**2+real(s1)**2+aimag(s2)**2
     *+ real(s2)**2+aimag(s3)**2+real(s3)**2
     *+ real(s4)**2+aimag(s4)**2
     *+ aimag(s5)**2+real(s5)**2+aimag(s6)**2
     *+ real(s6)**2+aimag(s7)**2+real(s7)**2
     *+ real(s8)**2+aimag(s8)**2
     *+ aimag(s9)**2+real(s9)**2+aimag(s10)**2
     *+ real(s10)**2+aimag(s11)**2+real(s11)**2
     *+ real(s12)**2+aimag(s12)**2
     *+ aimag(s13)**2+real(s13)**2+aimag(s14)**2
     *+ real(s14)**2+aimag(s15)**2+real(s15)**2
     *+ real(s16)**2+aimag(s16)**2
     *+ aimag(s17)**2+real(s17)**2+aimag(s18)**2
     *+ real(s18)**2+aimag(s19)**2+real(s19)**2
     *+ aimag(s20)**2+real(s20)**2+aimag(s21)**2
     *+ real(s21)**2+aimag(s22)**2+real(s22)**2
     *+ aimag(s23)**2+real(s23)**2+aimag(s24)**2
     *+ real(s24)**2+aimag(s25)**2+real(s25)**2
     *+ real(s26)**2+aimag(s26)**2

      res = evns/1E9 - 6.6306493
      if ( (res .GT. -0.1) .AND. (res .LT. 0.1) ) then
         write(6,*) 'OK'
      else
         write(6,*) 'NG'
         write(6,*) 'evns = ',evns
         write(6,*) 'res = ',res
      endif
      end

      subroutine sub(s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,
     * s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26)
      complex s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,
     * s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26
      s1=(1.0,30.0)
      s2=(2.0,29.0)
      s3=(3.0,28.0)
      s4=(4.0,27.0)
      s5=(5.0,26.0)
      s6=(6.0,25.0)
      s7=(7.0,24.0)
      s8=(8.0,23.0)
      s9=(9.0,22.0)
      s10=(10.0,21.0)
      s11=(11.0,20.0)
      s12=(12.0,19.0)
      s13=(13.0,18.0)
      s14=(14.0,17.0)
      s15=(15.0,16.0)
      s16=(16.0,15.0)
      s17=(17.0,14.0)
      s18=(18.0,13.0)
      s19=(19.0,12.0)
      s20=(20.0,11.0)
      s21=(21.0,10.0)
      s22=(22.0,9.0)
      s23=(23.0,8.0)
      s24=(24.0,7.0)
      s25=(25.0,6.0)
      s26=(26.0,5.0)
      return
      end
