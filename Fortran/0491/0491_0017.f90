           interface aaaaa
              subroutine sssss
              end 
          end interface
           interface bb
              subroutine xxxx
                import ::aaaaa
              end 
          end interface
print *,'pass'
        end
