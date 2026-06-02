subroutine s
!!!! implicit none
interface gen
  subroutine x1(ks)
  end
  subroutine x2(ka)
    dimension ka(*)
  end
end interface
      
  block
dimension::ia00014(10),ia00082(10)
call gen( ia00014 )
call gen( ia00082 )
end  block
end
call s
print *,'sngg339p : pass'
end

  subroutine x1(ks)
       print *,'error'
       ks=1
  end
  subroutine x2(ka)
    dimension ka(*)
    ka(1)=1
  end
