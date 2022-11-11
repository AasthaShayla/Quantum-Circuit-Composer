OPENQASM 2.0;
include "qelib1.inc";

qreg q[3];
creg crzz[3];
creg crxx[4];

h q[1];
cx q[1],q[2];
barrier q[0],q[1],q[2];
cx q[0],q[1];
h q[0];
barrier q[0],q[1],q[2];
measure q[0] -> crzz[0];
measure q[1] -> crxx[0];
barrier q[0],q[1],q[2];
if (crzz==1) z q[2];
if (crxx==1) x q[2];