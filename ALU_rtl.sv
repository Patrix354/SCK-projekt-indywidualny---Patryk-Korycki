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
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  input [7:0] i_a;
  wire [7:0] i_a;
  input [7:0] i_b;
  wire [7:0] i_b;
  output o_out;
  wire o_out;
  assign _065_ = _062_ & _064_;
  assign _066_ = _061_ | _063_;
  assign _067_ = _060_ & _065_;
  assign _068_ = _059_ | _066_;
  assign _069_ = _016_ & _068_;
  assign _070_ = _015_ | _067_;
  assign _071_ = _007_ | i_a[0];
  assign _072_ = _027_ & _062_;
  assign _073_ = _049_ & _072_;
  assign _074_ = _016_ & _071_;
  assign _075_ = _073_ & _074_;
  assign _076_ = _041_ & _075_;
  assign _077_ = _070_ | _076_;
  assign _078_ = _000_ & _077_;
  assign _079_ = i_b[7] & _069_;
  assign o_out = _078_ | _079_;
  assign _000_ = ~i_a[7];
  assign _001_ = ~i_b[3];
  assign _002_ = ~i_a[3];
  assign _003_ = ~i_b[2];
  assign _004_ = ~i_a[2];
  assign _005_ = ~i_b[1];
  assign _006_ = ~i_a[1];
  assign _007_ = ~i_b[0];
  assign _008_ = ~i_a[0];
  assign _009_ = ~i_b[6];
  assign _010_ = ~i_a[6];
  assign _011_ = ~i_b[5];
  assign _012_ = ~i_a[5];
  assign _013_ = ~i_b[4];
  assign _014_ = ~i_a[4];
  assign _015_ = _009_ & i_a[6];
  assign _016_ = i_b[6] | _010_;
  assign _017_ = i_b[4] & _014_;
  assign _018_ = _013_ | i_a[4];
  assign _019_ = i_b[5] & _012_;
  assign _020_ = _011_ | i_a[5];
  assign _021_ = _018_ & _020_;
  assign _022_ = _017_ | _019_;
  assign _023_ = i_b[4] | _014_;
  assign _024_ = _011_ & i_a[5];
  assign _025_ = i_b[5] | _012_;
  assign _026_ = _023_ & _025_;
  assign _027_ = _021_ & _026_;
  assign _028_ = ~_027_;
  assign _029_ = i_b[3] & _002_;
  assign _030_ = _001_ | i_a[3];
  assign _031_ = i_b[2] & _004_;
  assign _032_ = _003_ | i_a[2];
  assign _033_ = _030_ & _032_;
  assign _034_ = _029_ | _031_;
  assign _035_ = _003_ & i_a[2];
  assign _036_ = i_b[2] | _004_;
  assign _037_ = _001_ & i_a[3];
  assign _038_ = i_b[3] | _002_;
  assign _039_ = _036_ & _038_;
  assign _040_ = _035_ | _037_;
  assign _041_ = _033_ & _039_;
  assign _042_ = _034_ | _040_;
  assign _043_ = i_b[1] & _006_;
  assign _044_ = _005_ | i_a[1];
  assign _045_ = _007_ & i_a[0];
  assign _046_ = i_b[0] | _008_;
  assign _047_ = _005_ ^ i_a[1];
  assign _048_ = i_b[1] ^ i_a[1];
  assign _049_ = _046_ & _047_;
  assign _050_ = _045_ | _048_;
  assign _051_ = _044_ & _050_;
  assign _052_ = _043_ | _049_;
  assign _053_ = _041_ & _052_;
  assign _054_ = _042_ | _051_;
  assign _055_ = _034_ & _038_;
  assign _056_ = _033_ | _037_;
  assign _057_ = _054_ & _056_;
  assign _058_ = _053_ | _055_;
  assign _059_ = _027_ & _058_;
  assign _060_ = _028_ | _057_;
  assign _061_ = i_b[6] & _010_;
  assign _062_ = _009_ | i_a[6];
  assign _063_ = _022_ & _025_;
  assign _064_ = _021_ | _024_;
endmodule

module \$paramod\shifter\N=s32'00000000000000000000000000001000 (i_a, i_b, o_out, o_ERR);
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
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  input [7:0] i_a;
  wire [7:0] i_a;
  input [7:0] i_b;
  wire [7:0] i_b;
  output o_ERR;
  wire o_ERR;
  output [7:0] o_out;
  wire [7:0] o_out;
  assign _004_ = ~i_b[7];
  assign _005_ = ~i_b[0];
  assign _006_ = ~i_b[1];
  assign _007_ = ~i_b[2];
  assign _008_ = ~i_b[3];
  assign _009_ = i_b[7] | i_b[5];
  assign _010_ = ~_009_;
  assign _011_ = i_b[4] | i_b[6];
  assign _012_ = ~_011_;
  assign _013_ = _010_ & _012_;
  assign _014_ = i_a[0] & _013_;
  assign _015_ = _005_ & _014_;
  assign _016_ = _006_ & _015_;
  assign _017_ = _007_ & _008_;
  assign _018_ = _016_ & _017_;
  assign _019_ = i_a[7] | _018_;
  assign o_out[0] = _004_ & _019_;
  assign _020_ = i_a[1] & _013_;
  assign _021_ = i_b[0] | _020_;
  assign _022_ = _005_ | _014_;
  assign _023_ = _021_ & _022_;
  assign _024_ = _006_ & _023_;
  assign o_out[1] = _017_ & _024_;
  assign _025_ = i_a[2] & _013_;
  assign _026_ = i_b[0] | _025_;
  assign _027_ = _005_ | _020_;
  assign _028_ = _026_ & _027_;
  assign _029_ = i_b[1] | _028_;
  assign _030_ = _006_ | _015_;
  assign _031_ = _029_ & _030_;
  assign o_out[2] = _017_ & _031_;
  assign _032_ = i_a[3] & _013_;
  assign _033_ = i_b[0] | _032_;
  assign _034_ = _005_ | _025_;
  assign _035_ = _033_ & _034_;
  assign _036_ = i_b[1] | _035_;
  assign _037_ = _006_ | _023_;
  assign _038_ = _036_ & _037_;
  assign o_out[3] = _017_ & _038_;
  assign _039_ = i_b[2] & _008_;
  assign _040_ = _016_ & _039_;
  assign _041_ = _006_ | _028_;
  assign _042_ = _005_ & i_a[4];
  assign _043_ = i_b[0] & i_a[3];
  assign _044_ = _042_ | _043_;
  assign _045_ = _013_ & _044_;
  assign _046_ = i_b[1] | _045_;
  assign _047_ = _017_ & _046_;
  assign _048_ = _041_ & _047_;
  assign o_out[4] = _040_ | _048_;
  assign _049_ = _024_ & _039_;
  assign _050_ = _006_ | _035_;
  assign _051_ = _005_ & i_a[5];
  assign _052_ = i_b[0] & i_a[4];
  assign _053_ = _051_ | _052_;
  assign _054_ = _013_ & _053_;
  assign _055_ = i_b[1] | _054_;
  assign _056_ = _017_ & _055_;
  assign _057_ = _050_ & _056_;
  assign o_out[5] = _049_ | _057_;
  assign _058_ = _031_ & _039_;
  assign _059_ = _006_ | _045_;
  assign _060_ = _005_ | i_a[5];
  assign _061_ = i_b[0] | i_a[6];
  assign _062_ = _060_ & _061_;
  assign _063_ = _013_ & _062_;
  assign _064_ = i_b[1] | _063_;
  assign _065_ = _017_ & _064_;
  assign _066_ = _059_ & _065_;
  assign o_out[6] = _058_ | _066_;
  assign _067_ = _038_ & _039_;
  assign _068_ = _006_ | _054_;
  assign _069_ = _005_ | i_a[6];
  assign _070_ = i_a[7] | i_b[0];
  assign _071_ = _069_ & _070_;
  assign _000_ = _013_ & _071_;
  assign _001_ = i_b[1] | _000_;
  assign _002_ = _017_ & _001_;
  assign _003_ = _068_ & _002_;
  assign o_out[7] = _067_ | _003_;
  assign o_ERR = i_b[7];
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

module ALU_rtl(i_a, i_b, i_carry, o_carry, o_out, o_ERR, i_op);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  input [7:0] i_a;
  wire [7:0] i_a;
  input [7:0] i_b;
  wire [7:0] i_b;
  input i_carry;
  wire i_carry;
  input [1:0] i_op;
  wire [1:0] i_op;
  output o_ERR;
  wire o_ERR;
  output o_carry;
  wire o_carry;
  output [7:0] o_out;
  wire [7:0] o_out;
  wire s_out_comp;
  wire [7:0] s_out_shl;
  wire [7:0] s_out_sub;
  assign _00_ = ~i_op[0];
  assign _01_ = ~i_op[1];
  assign _02_ = _00_ & i_op[1];
  assign _03_ = s_out_shl[0] & _02_;
  assign _04_ = i_op[0] | s_out_sub[0];
  assign _05_ = _00_ | s_out_comp;
  assign _06_ = _04_ & _05_;
  assign _07_ = _01_ & _06_;
  assign o_out[0] = _03_ | _07_;
  assign _08_ = s_out_shl[1] & _02_;
  assign _09_ = _00_ & _01_;
  assign _10_ = s_out_sub[1] & _09_;
  assign o_out[1] = _08_ | _10_;
  assign _11_ = s_out_shl[2] & _02_;
  assign _12_ = s_out_sub[2] & _09_;
  assign o_out[2] = _11_ | _12_;
  assign _13_ = s_out_shl[3] & _02_;
  assign _14_ = s_out_sub[3] & _09_;
  assign o_out[3] = _13_ | _14_;
  assign _15_ = s_out_shl[4] & _02_;
  assign _16_ = s_out_sub[4] & _09_;
  assign o_out[4] = _15_ | _16_;
  assign _17_ = s_out_shl[5] & _02_;
  assign _18_ = s_out_sub[5] & _09_;
  assign o_out[5] = _17_ | _18_;
  assign _19_ = s_out_shl[6] & _02_;
  assign _20_ = s_out_sub[6] & _09_;
  assign o_out[6] = _19_ | _20_;
  assign _21_ = s_out_shl[7] & _02_;
  assign _22_ = s_out_sub[7] & _09_;
  assign o_out[7] = _21_ | _22_;
  \$paramod\comparator\N=s32'00000000000000000000000000001000  comp_model (
    .i_a(i_a),
    .i_b(i_b),
    .o_out(s_out_comp)
  );
  \$paramod\shifter\N=s32'00000000000000000000000000001000  shl_model (
    .i_a(i_a),
    .i_b(i_b),
    .o_ERR(o_ERR),
    .o_out(s_out_shl)
  );
  \$paramod\subtract\N=s32'00000000000000000000000000001000  sub_model (
    .i_a(i_a),
    .i_b(i_b),
    .i_carry(i_carry),
    .o_carry(o_carry),
    .o_out(s_out_sub)
  );
endmodule
