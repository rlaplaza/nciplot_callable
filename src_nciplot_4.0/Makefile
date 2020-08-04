include Makefile.inc

BINS=nciplot 
OBJS= param.o tools_io.o tools_math.o reader.o props.o nciplot_subroutine.o nciplot.o
LIBS=
INCLUDE=

%.o: %.f90
	$(FC) -c $(FCFLAGS) $(INCLUDE) -o $@ $<

%.o: %.f
	$(FC) -c $(FCFLAGS) $(INCLUDE) -o $@ $<

%.mod: %.o
	@if [ ! -f $@ ]; then rm $< ; $(MAKE) $< ; fi

# General targets

all: $(BINS) $(BINS_dbg)

debug: 
	DEBUG=1 $(MAKE) $(BINS_dbg)

clean:
	rm -f core *.mod *.o 

veryclean:
	rm -f core *.mod *.o

mrproper:
	rm -f core *.mod *.o $(BINS) $(BINS_dbg)

nciplot: $(OBJS) $(LIBS)
	$(FC) -o nciplot $(LDFLAGS) $(OBJS) $(LIBS)

nciplot_dbg: $(OBJS) $(LIBS)
	$(FC) -o nciplot_dbg $(LDFLAGS) $(OBJS) $(LIBS)

# Object dependencies
nciplot.o props.o reader.o tools_io.o nciplot_subroutine.o : param.mod
nciplot.o props.o reader.o nciplot_subroutine.o : tools_io.mod
nciplot.o props.o nciplot_subroutine.o : reader.mod
nciplot.o nciplot_subroutine.o : props.mod 
nciplot.o nciplot_subroutine.o : tools_math.mod
nciplot.o : nciplot_subroutine.mod

# dummy
dummy: 
	@true
