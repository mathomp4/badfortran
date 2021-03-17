module submodule
   implicit none
   integer :: complex = 1
   interface
      module subroutine function(integer,real)
         integer, intent(in) :: integer
         integer, intent(out) :: real
      end subroutine function
   end interface
   contains
end module submodule

submodule (submodule) module
   contains
      module procedure function
         real = 2*integer
      end procedure function
end submodule module

program program

   use submodule
   implicit none

   integer :: integer, real
   integer = complex
   associate: associate (integer=>complex)
      call function(integer,real)
      print*, (real)
   end associate associate

end program program
