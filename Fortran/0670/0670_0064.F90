#define abc ijk
      implicit integer(a-z)
      ab&
     &c=400
      if (abc/=400)print *,'error-4'
      ab&
     &c=500
      if (abc/=500)print *,'error-1'
      ab&
c=400
      if (abc/=400)print *,'error-2'
      ab&
c=500
      if (abc/=500)print *,'error-3'
      print *,'pass'
      end
