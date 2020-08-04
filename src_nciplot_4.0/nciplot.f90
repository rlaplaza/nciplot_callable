! This is a subroutined version of nciplot for development purposes
! fixes due to R.Laplaza

program nciplot
   use param
   use tools_io
   use tools_math
   use reader
   use props
   use nciplot_subroutine
   implicit none
   ! keywords points to an input file
   character :: input, output

   call runci(input, output)

end program nciplot
