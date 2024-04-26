subroutine s1
   interface
   function tt()
   end function
   end interface

    procedure(tt),pointer::pp
    pp=>null()
     
    call  s12(0 )
    call  s12(0,null() )
    call  s12(0,pp)
    pp=> tt
    
    call  s12(1,pp)
    
    contains
    subroutine s12(k,ss)
      optional :: ss
      interface
      function ss()
      end function
      end interface

      if (k==0) then
        if (present(ss)) print *,102
      else
        if (.not.present(ss)) print *,103
        if (ss()/=0) print *,104
      endif
    end subroutine
end

call s1
print *,' pass'
end
       
function tt()
tt=0
end function

