# octonions

The project contains the file **octonions.vhd**, which describes structure of the octonion multiplier presented in the paper. The file also contains a winding implementation based on the direct method of octonion multiplication. The repository also contains the file **tb.vhd**, which contains a common testbench for both of the above-mentioned systems.

## Requirements

Project was prepared and tested in **ghdl**, which is open source VHDL simulator. To run a simulation of the proposed implementation of octonions multiplier **ghdl** simulator is needed. To install **gdhl** in **Debian** copy and paste below command in Linux terminal.

```
sudo apt install ghdl -y
```

## Simulation

To run simulation run sim.sh in Linux terminal.

```
./sim.sh
```

Above script uses ghdl to simulation but testbench should work also with other simulators.