        module a
         contains
          subroutine sub()
            print *,'I''m mod''s sub.'
            call sss()
          end subroutine
        end module
        subroutine sss()
	  call pri
        end subroutine sss
        subroutine pri()
	  print *,'I''m sub'
        end subroutine pri
	use a
	print *,'I''m main.'
	call sub
	end
