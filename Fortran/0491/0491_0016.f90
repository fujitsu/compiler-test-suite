           interface
              subroutine aaaaa
              end subroutine 
              subroutine sssss
                import ::aaaaa
              end subroutine
          end interface
print *,'pass'
        end
