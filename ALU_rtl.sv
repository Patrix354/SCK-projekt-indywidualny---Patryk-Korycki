/* Generated by Yosys 0.21 (git sha1 e6d2a900a97, gcc 12.2.0 -march=x86-64 -mtune=generic -O2 -fno-plt -fexceptions -fstack-clash-protection -fcf-protection -fPIC -Os) */

module \$paramod\comparator\N=s32'00000000000000000000000000001000 (i_a, i_b, o_out);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  input [7:0] i_a;
  wire [7:0] i_a;
  input [7:0] i_b;
  wire [7:0] i_b;
  output o_out;
  wire o_out;
  assign _000_ = ~i_b[7];
  assign _001_ = ~i_b[6];
  assign _002_ = ~i_b[5];
  assign _003_ = ~i_b[4];
  assign _004_ = ~i_a[4];
  assign _005_ = ~i_b[3];
  assign _006_ = ~i_b[2];
  assign _007_ = ~i_b[1];
  assign _008_ = ~i_b[0];
  assign _009_ = i_a[7] | _000_;
  assign _010_ = i_a[6] | _001_;
  assign _011_ = i_a[5] & _002_;
  assign _012_ = i_a[7] & _000_;
  assign _013_ = i_a[6] ^ i_b[6];
  assign _014_ = i_a[7] ^ i_b[7];
  assign _015_ = _013_ | _014_;
  assign _016_ = _011_ | _015_;
  assign _017_ = ~_016_;
  assign _018_ = i_a[5] | _002_;
  assign _019_ = _003_ | i_a[4];
  assign _020_ = _018_ & _019_;
  assign _021_ = ~_020_;
  assign _022_ = _003_ & i_a[4];
  assign _023_ = i_b[4] | _004_;
  assign _024_ = _020_ & _023_;
  assign _025_ = _021_ | _022_;
  assign _026_ = _017_ & _024_;
  assign _027_ = _016_ | _025_;
  assign _028_ = i_a[3] & _005_;
  assign _029_ = i_a[3] | _005_;
  assign _030_ = i_a[3] ^ i_b[3];
  assign _031_ = i_a[2] | _006_;
  assign _032_ = i_a[2] ^ i_b[2];
  assign _033_ = _030_ | _032_;
  assign _034_ = i_a[1] | _007_;
  assign _035_ = _008_ & i_a[0];
  assign _036_ = i_a[1] ^ i_b[1];
  assign _037_ = _035_ | _036_;
  assign _038_ = _034_ & _037_;
  assign _039_ = _033_ | _038_;
  assign _040_ = _028_ | _031_;
  assign _041_ = _029_ & _040_;
  assign _042_ = _039_ & _041_;
  assign _043_ = _027_ | _042_;
  assign _044_ = _016_ | _020_;
  assign _045_ = _010_ | _012_;
  assign _046_ = _009_ & _045_;
  assign _047_ = _044_ & _046_;
  assign _048_ = _043_ & _047_;
  assign _049_ = _008_ | i_a[0];
  assign _050_ = _026_ & _049_;
  assign _051_ = _033_ | _037_;
  assign _052_ = ~_051_;
  assign _053_ = _050_ & _052_;
  assign o_out = _048_ | _053_;
endmodule

module \$paramod\subtract\N=s32'00000000000000000000000000001000 (i_a, i_b, i_carry, o_out, o_carry);
  wire _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  input [7:0] i_a;
  wire [7:0] i_a;
  input [7:0] i_b;
  wire [7:0] i_b;
  input i_carry;
  wire i_carry;
  output o_carry;
  wire o_carry;
  output [7:0] o_out;
  wire [7:0] o_out;
  assign _000_ = ~i_a[0];
  assign _001_ = ~i_a[1];
  assign _002_ = ~i_a[2];
  assign _003_ = ~i_b[3];
  assign _004_ = ~i_b[4];
  assign _005_ = ~i_b[5];
  assign _006_ = ~i_a[6];
  assign _007_ = ~i_a[7];
  assign _008_ = _000_ | i_carry;
  assign _009_ = i_a[0] ^ i_carry;
  assign _010_ = i_b[0] | _009_;
  assign o_out[0] = i_b[0] ^ _009_;
  assign _011_ = _008_ & _010_;
  assign _012_ = _001_ | _011_;
  assign _013_ = i_a[1] ^ _011_;
  assign _014_ = i_b[1] | _013_;
  assign o_out[1] = i_b[1] ^ _013_;
  assign _015_ = _012_ & _014_;
  assign _016_ = i_b[2] | _002_;
  assign _017_ = i_b[2] & _002_;
  assign _018_ = i_b[2] ^ i_a[2];
  assign o_out[2] = _015_ ^ _018_;
  assign _019_ = _015_ | _017_;
  assign _020_ = _003_ | i_a[3];
  assign _021_ = i_b[3] ^ i_a[3];
  assign _022_ = ~_021_;
  assign _023_ = _016_ & _022_;
  assign _024_ = _019_ & _023_;
  assign _025_ = _016_ & _019_;
  assign o_out[3] = _021_ ^ _025_;
  assign _026_ = _004_ | i_a[4];
  assign _027_ = i_b[4] ^ i_a[4];
  assign _028_ = _020_ & _027_;
  assign _029_ = ~_028_;
  assign _030_ = _020_ ^ _027_;
  assign _031_ = ~_030_;
  assign _032_ = _024_ | _031_;
  assign o_out[4] = _024_ ^ _031_;
  assign _033_ = _029_ & _032_;
  assign _034_ = _005_ | i_a[5];
  assign _035_ = i_b[5] ^ i_a[5];
  assign _036_ = _026_ & _035_;
  assign _037_ = ~_036_;
  assign _038_ = _026_ ^ _035_;
  assign _039_ = ~_038_;
  assign _040_ = _033_ | _039_;
  assign o_out[5] = _033_ ^ _039_;
  assign _041_ = _037_ & _040_;
  assign _042_ = i_b[6] & _006_;
  assign _043_ = i_b[6] ^ i_a[6];
  assign _044_ = _034_ & _043_;
  assign _045_ = ~_044_;
  assign _046_ = _034_ ^ _043_;
  assign _047_ = ~_046_;
  assign _048_ = _041_ | _047_;
  assign o_out[6] = _041_ ^ _047_;
  assign _049_ = _045_ & _048_;
  assign _050_ = i_b[7] & _007_;
  assign _051_ = i_b[7] ^ _007_;
  assign _052_ = i_b[7] ^ i_a[7];
  assign _053_ = _042_ | _051_;
  assign _054_ = _042_ & _051_;
  assign _055_ = _042_ ^ _052_;
  assign _056_ = _049_ & _053_;
  assign o_out[7] = _049_ ^ _055_;
  assign _057_ = _050_ | _054_;
  assign o_carry = _056_ | _057_;
endmodule

module ALU_rtl(i_a, i_b, i_carry, o_out_sub, o_carry, o_out_comp);
  input [7:0] i_a;
  wire [7:0] i_a;
  input [7:0] i_b;
  wire [7:0] i_b;
  input i_carry;
  wire i_carry;
  output o_carry;
  wire o_carry;
  output o_out_comp;
  wire o_out_comp;
  output [7:0] o_out_sub;
  wire [7:0] o_out_sub;
  \$paramod\comparator\N=s32'00000000000000000000000000001000  comp_model (
    .i_a(i_a),
    .i_b(i_b),
    .o_out(o_out_comp)
  );
  \$paramod\subtract\N=s32'00000000000000000000000000001000  sub_model (
    .i_a(i_a),
    .i_b(i_b),
    .i_carry(i_carry),
    .o_carry(o_carry),
    .o_out(o_out_sub)
  );
endmodule
