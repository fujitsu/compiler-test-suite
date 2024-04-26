  SUBROUTINE x(k,c)
    type zz
       sequence
       real(8)::x1
    end type
    type(zz),INTENT(OUT):: c(k)
  entry      y(k,c)
     c(1)%x1 = 1
     c(2) = c(1)
  END
    type zz
       sequence
       real(8)::x1
    end type
    type(zz):: c(2)
c=zz(1)
call x(2,c)
if (c(1)%x1/=1) print *,101
if (c(2)%x1/=1) print *,102
c=zz(1)
call y(2,c)
if (c(1)%x1/=1) print *,101
if (c(2)%x1/=1) print *,102
print *,'pass'
end
