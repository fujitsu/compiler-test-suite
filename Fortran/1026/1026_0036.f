        module data2
                real x2,y2,z2
        contains
        subroutine sub2()
        print *,'sub2'
        end subroutine
        end module
        subroutine func(x)
        print *,x,'func'
        end subroutine

        module data1
                real x1,y1,z1
        contains
        subroutine sub1()
        print *,'sub1'
        end subroutine
        end module
        module data
                real x,y,z
        end module

        subroutine sub()
        use data
        use data1
        x=10
        call func(x)
        call sub1()
        return
        end subroutine
        call sub()
        print *,'end'
        end
