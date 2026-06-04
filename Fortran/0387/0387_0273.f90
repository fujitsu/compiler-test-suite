print *,'pass'

contains
 subroutine csub01(dsub01, dsub02)
  interface
   subroutine dsub01()
   end subroutine
   pure subroutine dsub02()
   end subroutine
  end interface
 end subroutine
end

pure subroutine sub01()
 entry ent01()
end subroutine

elemental subroutine sub02()
 entry ent02()
end subroutine
