ghdl -a -fsynopsys --std=08 octonions.vhd tb.vhd
ghdl -e -fsynopsys --std=08 tb
ghdl -r -fsynopsys --std=08 tb --vcd=tb.vcd --stop-time=120ns
