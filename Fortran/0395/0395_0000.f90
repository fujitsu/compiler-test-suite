interface 
 subroutine sub
 end subroutine 
end interface
 procedure(sub),pointer :: pp
 type wt
   integer v1
   procedure(sub),pointer,nopass :: pp
 end type
 type(wt)::wv
wv=wt(1,sub)
print *,"pass"
end
 subroutine sub
 end subroutine 
