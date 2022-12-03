PROJ_NAME     = exe_unit_w6

rtl: 
    # Uruchomienie syntezy yosys
	yosys -s run.ys | tee synth.log

sim: compile
    # Wykonanie skompilowanego programu symulacji
	./${PROJ_NAME}.iveri.run

compile: clear
    # Kompilacja modulow verilog do programu wykonywalnego
	iverilog -g2005-sv                               \
	 *.sv    \
		-o ${PROJ_NAME}.iveri.run                  \
		    | tee ${PROJ_NAME}.iveri.log

waves:
    # Uruchomienie przegladarki przebiegow GTKWave
	gtkwave signals.vcd &
	
clear:
    # Usuwanie wyniku kompilacji Icarus Verilog
	if [ -f ${PROJ_NAME}.iveri.run ] ; \
	    then rm ${PROJ_NAME}.iveri.run ; fi
