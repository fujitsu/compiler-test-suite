subroutine s1
 type x
   integer::x1
   integer::x3=2
 end type
 type (x),pointer    ::v5,v51,v52
 type (x),pointer    ::w5,w51,w52
character*10 msg
  allocate(v5)
 if (v5%x1/=0)print *,501,v5%x1
 if (v5%x3/=2)print *,503
  allocate(v51)
 if (v51%x1/=0)print *,511,v51%x1
 if (v51%x3/=2)print *,513
  allocate(v52)
 if (v52%x1/=0)print *,521,v52%x1
 if (v52%x3/=2)print *,523
  allocate(w5,errmsg=msg)
 if (w5%x1/=0)print *,601,w5%x1
 if (w5%x3/=2)print *,603
  allocate(w51,errmsg=msg)
 if (w51%x1/=0)print *,611,w51%x1
 if (w51%x3/=2)print *,613
  allocate(w52,errmsg=msg)
 if (w52%x1/=0)print *,621,w52%x1
 if (w52%x3/=2)print *,623
end
call s1
call s1
call s1
call s1
print *,'pass'
end
