interface
  subroutine sub01(p01)
    interface
      subroutine aaa()
      end subroutine
    end interface
    procedure (aaa), pointer :: p01
  end subroutine
end interface

  interface
    subroutine aaa()
    end subroutine
  end interface
  procedure (aaa), pointer :: p01
  call sub01(p01)

print *,'pass'

end

 subroutine sub01(p01)
   interface
     subroutine aaa()
     end subroutine
   end interface
   procedure (aaa), pointer :: p01
 end subroutine
