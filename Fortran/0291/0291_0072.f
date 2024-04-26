	module moda
	contains
	  subroutine sub1
	  print *,' SUB1 '
	  return
	  entry ent1
	  print *,' ENT1 '
	  end subroutine 
	  subroutine sub2
	  print *,' SUB2 '
	  call ent1
	  return
	  entry ent2
	  print *,' ENT2 '
	  call sub1
	  end subroutine 
	end
	program main
	use moda
	call sub2
	call ent2
	call test
	end
!
        module modb
	contains
          subroutine sub1
          print *,' SUB1 '
          return
          entry ent1
          print *,' ENT1 '
	  end subroutine
          subroutine sub2
          print *,' SUB2 '
          call ext(ent1)
          return
          entry ent2
          print *,' ENT2 '
	  call ext(sub1)
          end subroutine
	  subroutine ext(ex)
	  external ex
	  call ex
	  end subroutine
        end module
        subroutine test
        use modb
        call sub2
	call ent2
	end
