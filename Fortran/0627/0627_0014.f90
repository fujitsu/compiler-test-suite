module m1
 type x
   integer::x1
 end type
 interface assignment(=)
    subroutine  snx1(nx1,K)
     import
     intent(in)::K
     type(x),intent(out)::nx1
    end subroutine 
 end interface
 interface assignment(=)
    subroutine  snx2(nx2,r)
     import
     intent(in)::r
     type(x),intent(out)::nx2
    end subroutine 
 end interface
 interface assignment(=)
    subroutine  snx3(nx3,c)
     import
     intent(in)::c
     character(*):: c
     type(x),intent(out)::nx3
    end subroutine 
 end interface
contains
subroutine s1

 type (x)::v
 v=1
 if (v%x1/=1)print *,101,v%x1
 v=2.
 if (v%x1/=20)print *,102,v%x1
v='3'
 if (v%x1/=30)print *,103,v%x1
end subroutine
end 

print *,'pass'
end

    subroutine  snx1(nx1,K)
    use m1
     intent(in)::K
     type(x),intent(out)::nx1
     nx1%x1=1
    end subroutine 
    subroutine  snx2(nx2,r)
    use m1
     intent(in)::r
     type(x),intent(out)::nx2
     nx2%x1=20
    end subroutine 
    subroutine  snx3(nx3,c)
    use m1
     intent(in)::c
     character(*):: c
     type(x),intent(out)::nx3
     nx3%x1=30
    end subroutine 
