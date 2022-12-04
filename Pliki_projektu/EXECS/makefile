PROJ_NAME     = exe_unit_w6

rtl: 
    # Uruchomienie syntezy yosys
	yosys -s run.ys | tee ../LOGS/synth.log

sim: compile
    # Wykonanie skompilowanego programu symulacji
	vvp ${PROJ_NAME}.vvp

compile: clear
    # Kompilacja modulow verilog do programu wykonywalnego
	iverilog -g2005-sv                               \
	 ../MODEL/*.sv ../RTL/*.sv ../TESTBENCH/testbench.sv   \
	 -I ../INCLUDE 		\
		-o ${PROJ_NAME}.vvp                  \
		    | tee ../LOGS/compile.log

waves:
    # Uruchomienie przegladarki przebiegow GTKWave
	gtkwave signals.vcd &
	
clear:
    # Usuwanie wyniku kompilacji Icarus Verilog
	if [ -f ${PROJ_NAME}.vvp ] ; \
	    then rm ${PROJ_NAME}.vvp ; fi
