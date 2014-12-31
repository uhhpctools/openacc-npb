SHELL=/bin/sh
BENCHMARK=mg
BENCHMARKU=MG

include ../config/make.def

include ../sys/make.common

OBJS = mg.o \
       ${COMMON}/print_results.o  \
       ${COMMON}/c_timers.o \
       ${COMMON}/wtime.o


${PROGRAM}: config ${OBJS}
	${CLINK} ${CLINKFLAGS} -o ${PROGRAM} ${OBJS} ${C_LIB}

.c.o:
	${CCOMPILE} $<

mg.o:		mg.c globals.h npbparams.h

clean:
	- rm -f *.o *~ ../common/*.o *.w2c.c *.w2c.h *.i *.B *.t *.w2c.cu *.w2c.ptx *.spin *.s *.x
	- rm -f npbparams.h core



