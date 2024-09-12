interface
 subroutine osub01()
 end subroutine
end interface

procedure(osub01), pointer :: psub01p

psub01p => osub01

print *,"pass"

contains
 subroutine csub01(dpsub01p)
  interface
   subroutine osub01()
   end subroutine
  end interface
  procedure(osub01), pointer :: dpsub01p
  call csub02(dpsub01p)
 end subroutine

 subroutine csub02(dsub01)
  interface
   subroutine dsub01()
   end subroutine
  end interface
 end subroutine
end

subroutine osub01()
end subroutine

subroutine dsub01()
end subroutine
