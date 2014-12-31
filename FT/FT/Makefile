SHELL=/bin/sh
BENCHMARK=ft
BENCHMARKU=FT

include ../config/make.def

include ../sys/make.common

OBJS = ft.o ${RAND}.o print_results.o \
       c_timers.o wtime.o

${PROGRAM}: config ${OBJS}
	${CLINK} ${CLINKFLAGS} -o ${PROGRAM} ${OBJS} ${C_LIB}

.c.o:
	${CCOMPILE} $<

ft.o:             ft.c npbparams.h

clean:
	- rm -f *.x *.i *.B *.spin *.s *.t *.w2c.c *.w2c.h *.w2c.cu *.ptx *.o *~ mputil* ../common/*.o
	- rm -f ft npbparams.h core
	- if [ -d rii_files ]; then rm -r rii_files; fi
