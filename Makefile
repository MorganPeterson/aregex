all:
	gprclean aregx.gpr
	gprbuild aregx.gpr

clean:
	gprclean aregx.gpr

build:
	gprbuild aregx.gpr

