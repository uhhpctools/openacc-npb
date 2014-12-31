This is an OpenACC benchmark suite that includes EP, CG, FT, MG, LU, SP and BT from 
NAS Parallel Benchmarks version 3.3 (NPB3.3). The IS benchmark is not included since
it requires prefix-sum (scan) operation that is not supported by OpenACC standard yet.

If you use OpenACC version of NPB3.3 (NPB-ACC) in your work, please cite our LCPC 2014 paper:
Rengan Xu, Xiaonan Tian, Sunita Chandrasekaran, Yonghong Yan and Barbara Chapman. NAS Parallel 
Benchmarks on GPGPUs using a Directive-based Programming Model, in the 27th International Workshop 
on Languages and Compilers for Parallel Computing (LCPC 2014), September, 2014 (under publication)

The building system for each benchmark is standalone, so you cannot compile all benchmarks at one time.

How to compile the benchmark?
=============================
The Makefile supports different types of compilers.
To compile a benchmark, enter the deepest directory with the name of that benchmark. e.g. cd SP/SP
then to compile the benchmark with OpenUH compiler
> make CC=uhcc CLASS=A
The CLASS here means the dataset size, the ranges are S, W, A, B, C, D and possibly E
S and W are small size which should only be used in tests
A, B and C are standard size. The largest problem size that can be run depends on 
the limit of the accelerator memory.
EP can be run with all problem sizes including the largest E as it is rewritten using blocking algorithm.
On Kepler 20 GPU, FT benchmark is out of memory in class C. Other benchmarks can be run successfully in class C.

To use OpenUH compiler, you need a CUDA compiler installed. The default CUDA path for all benchmarks 
in this suite is /opt/cuda/5.5/bin. If your CUDA path is different, then you need to change the path
in -nvpath flag which is in file config/make.config inside each benchmark directory.

For more details about OpenUH compiler, please refer to
http://web.cs.uh.edu/~openuh/
or
https://github.com/uhhpctools

To compile with PGI compiler
> make CC=pgcc CLASS=A

To compile with CRAY compiler
> make CC=cc CLASS=A

To compile with GCC compiler (no OpenACC support yet, will ignore all OpenACC directives)
> make CC=gcc CLASS=A

To compile with Intel compiler (no OpenACC support yet, will ignore all OpenACC directives)
> make CC=icc CLASS=A

Different OpenACC compilers or different versions of the same compiler could have bugs,
so try to use different compilers or different versions for the same compiler.
So far we found PGI 14.7 failed FT and LU benchmarks (result verification unsuccessful).
Many versions of PGI compiler (not only 14.7) fail FT and LU. You need to try yourself.


How to execute the benchmark?
==============================
The SP and BT benchmarks need larger than default stack size. So please use the command
> ulimit -s unlimited
before running the program, or you will get "Segmentation Fault" error.

Note that the generated binary is in the current directory not in "bin" directory.
to execute the benchmark, just use the command (e.g. SP benchmark with CLASS A)
> ./sp.A.x



