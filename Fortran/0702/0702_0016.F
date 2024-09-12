            call s1
            print *,'pass'
            end

            subroutine s1
            integer rename
            if (1/=2)return
#ifdef __unix
#ifdef __mips
#else
               print *,rename('a','b')
#endif
#endif
             end
