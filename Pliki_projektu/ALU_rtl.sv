/* Generated by Yosys 0.22 (git sha1 f109fa3d4c5, gcc 12.2.0 -march=x86-64 -mtune=generic -O2 -fno-plt -fexceptions -fstack-clash-protection -fcf-protection -fPIC -Os) */

module \$paramod\changer\N=s32'00000000000000000000000000001000 (i_a, i_b, i_clk, i_rst, o_out, o_ERR);
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
  input [7:0] i_a;
  wire [7:0] i_a;
  input [7:0] i_b;
  wire [7:0] i_b;
  input i_clk;
  wire i_clk;
  input i_rst;
  wire i_rst;
  output o_ERR;
  wire o_ERR;
  output [7:0] o_out;
  wire [7:0] o_out;
  assign _008_ = ~i_b[3];
  assign _009_ = ~i_b[2];
  assign _010_ = ~i_b[1];
  assign _011_ = ~i_b[0];
  assign _012_ = ~i_a[0];
  assign _013_ = ~i_a[1];
  assign _014_ = ~i_a[2];
  assign _015_ = ~i_a[3];
  assign _016_ = ~i_a[4];
  assign _017_ = ~i_a[5];
  assign _018_ = ~i_a[6];
  assign _019_ = ~i_a[7];
  assign _020_ = i_b[5] | i_b[4];
  assign _021_ = ~_020_;
  assign _022_ = i_b[6] | i_b[7];
  assign _023_ = ~_022_;
  assign _024_ = _021_ & _023_;
  assign _025_ = _020_ | _022_;
  assign _026_ = _008_ & _024_;
  assign o_ERR = ~_026_;
  assign _027_ = _011_ & _024_;
  assign _028_ = i_b[0] | _025_;
  assign _029_ = i_b[1] | _028_;
  assign _030_ = ~_029_;
  assign _031_ = _008_ & _009_;
  assign _032_ = i_b[3] | i_b[2];
  assign _033_ = _029_ | _032_;
  assign _034_ = ~_033_;
  assign _035_ = i_a[0] | _034_;
  assign _036_ = _012_ | _033_;
  assign _037_ = _026_ & _036_;
  assign o_out[0] = _035_ & _037_;
  assign _038_ = i_b[0] & _024_;
  assign _039_ = _011_ | _025_;
  assign _040_ = _010_ & _038_;
  assign _041_ = i_b[1] | _039_;
  assign _042_ = _032_ | _041_;
  assign _043_ = ~_042_;
  assign _044_ = i_a[1] | _043_;
  assign _045_ = _013_ | _042_;
  assign _046_ = _026_ & _045_;
  assign o_out[1] = _044_ & _046_;
  assign _047_ = i_b[1] & _027_;
  assign _048_ = _010_ | _028_;
  assign _049_ = _031_ & _047_;
  assign _050_ = _032_ | _048_;
  assign _051_ = i_a[2] | _049_;
  assign _052_ = _014_ | _050_;
  assign _053_ = _026_ & _052_;
  assign o_out[2] = _051_ & _053_;
  assign _054_ = i_b[1] & _038_;
  assign _055_ = _010_ | _039_;
  assign _056_ = _031_ & _054_;
  assign _057_ = _032_ | _055_;
  assign _058_ = i_a[3] | _056_;
  assign _059_ = _015_ | _057_;
  assign _060_ = _026_ & _059_;
  assign o_out[3] = _058_ & _060_;
  assign _061_ = _008_ & i_b[2];
  assign _062_ = i_b[3] | _009_;
  assign _063_ = _030_ & _061_;
  assign _064_ = _029_ | _062_;
  assign _065_ = i_a[4] | _063_;
  assign _066_ = _016_ | _064_;
  assign _067_ = _026_ & _066_;
  assign o_out[4] = _065_ & _067_;
  assign _068_ = _040_ & _061_;
  assign _069_ = _041_ | _062_;
  assign _070_ = i_a[5] | _068_;
  assign _071_ = _017_ | _069_;
  assign _072_ = _026_ & _071_;
  assign o_out[5] = _070_ & _072_;
  assign _073_ = _047_ & _061_;
  assign _074_ = _048_ | _062_;
  assign _000_ = i_a[6] | _073_;
  assign _001_ = _018_ | _074_;
  assign _002_ = _026_ & _001_;
  assign o_out[6] = _000_ & _002_;
  assign _003_ = _054_ & _061_;
  assign _004_ = _055_ | _062_;
  assign _005_ = i_a[7] | _003_;
  assign _006_ = _019_ | _004_;
  assign _007_ = _026_ & _006_;
  assign o_out[7] = _005_ & _007_;
endmodule

module \$paramod\comparator\N=s32'00000000000000000000000000001000 (i_a, i_b, i_clk, i_rst, o_out);
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
  input i_clk;
  wire i_clk;
  input i_rst;
  wire i_rst;
  output o_out;
  wire o_out;
  assign _000_ = ~i_a[7];
  assign _001_ = ~i_b[0];
  assign _002_ = ~i_a[0];
  assign _003_ = ~i_b[1];
  assign _004_ = ~i_a[1];
  assign _005_ = ~i_b[3];
  assign _006_ = ~i_a[3];
  assign _007_ = ~i_b[2];
  assign _008_ = ~i_a[2];
  assign _009_ = ~i_b[5];
  assign _010_ = ~i_a[5];
  assign _011_ = ~i_b[4];
  assign _012_ = ~i_a[4];
  assign _013_ = ~i_b[6];
  assign _014_ = ~i_a[6];
  assign _015_ = _013_ & i_a[6];
  assign _016_ = i_b[6] | _014_;
  assign _017_ = i_b[4] & _012_;
  assign _018_ = _011_ | i_a[4];
  assign _019_ = i_b[5] & _010_;
  assign _020_ = _009_ | i_a[5];
  assign _021_ = _018_ & _020_;
  assign _022_ = _017_ | _019_;
  assign _023_ = i_b[4] | _012_;
  assign _024_ = _009_ & i_a[5];
  assign _025_ = i_b[5] | _010_;
  assign _026_ = _023_ & _025_;
  assign _027_ = _021_ & _026_;
  assign _028_ = ~_027_;
  assign _029_ = i_b[3] & _006_;
  assign _030_ = _005_ | i_a[3];
  assign _031_ = i_b[2] & _008_;
  assign _032_ = _007_ | i_a[2];
  assign _033_ = _030_ & _032_;
  assign _034_ = _029_ | _031_;
  assign _035_ = _007_ & i_a[2];
  assign _036_ = i_b[2] | _008_;
  assign _037_ = _005_ & i_a[3];
  assign _038_ = i_b[3] | _006_;
  assign _039_ = _036_ & _038_;
  assign _040_ = _035_ | _037_;
  assign _041_ = _033_ & _039_;
  assign _042_ = _034_ | _040_;
  assign _043_ = i_b[1] & _004_;
  assign _044_ = _003_ | i_a[1];
  assign _045_ = _001_ & i_a[0];
  assign _046_ = i_b[0] | _002_;
  assign _047_ = _003_ ^ i_a[1];
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
  assign _061_ = i_b[6] & _014_;
  assign _062_ = _013_ | i_a[6];
  assign _063_ = _022_ & _025_;
  assign _064_ = _021_ | _024_;
  assign _065_ = _062_ & _064_;
  assign _066_ = _061_ | _063_;
  assign _067_ = _060_ & _065_;
  assign _068_ = _059_ | _066_;
  assign _069_ = _016_ & _068_;
  assign _070_ = _015_ | _067_;
  assign _071_ = _001_ | i_a[0];
  assign _072_ = _027_ & _062_;
  assign _073_ = _049_ & _072_;
  assign _074_ = _016_ & _071_;
  assign _075_ = _073_ & _074_;
  assign _076_ = _041_ & _075_;
  assign _077_ = _070_ | _076_;
  assign _078_ = _000_ & _077_;
  assign _079_ = i_b[7] & _069_;
  assign o_out = _078_ | _079_;
endmodule

module \$paramod\shifter\N=s32'00000000000000000000000000001000 (i_a, i_b, i_clk, i_rst, o_out, o_ERR, o_ovf);
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
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  input [7:0] i_a;
  wire [7:0] i_a;
  input [7:0] i_b;
  wire [7:0] i_b;
  input i_clk;
  wire i_clk;
  input i_rst;
  wire i_rst;
  output o_ERR;
  wire o_ERR;
  output [7:0] o_out;
  wire [7:0] o_out;
  output o_ovf;
  wire o_ovf;
  assign _024_ = ~i_b[7];
  assign _025_ = ~i_b[6];
  assign _026_ = ~i_b[5];
  assign _027_ = ~i_b[0];
  assign _028_ = ~i_b[1];
  assign _029_ = ~i_b[2];
  assign _030_ = ~i_b[3];
  assign _031_ = ~i_b[4];
  assign _032_ = _025_ & _026_;
  assign _033_ = i_a[0] & _032_;
  assign _034_ = _027_ & _033_;
  assign _035_ = _028_ & _034_;
  assign _036_ = _024_ & _031_;
  assign _037_ = _030_ & _036_;
  assign _038_ = _029_ & _037_;
  assign o_out[0] = _035_ & _038_;
  assign _039_ = i_a[1] & _032_;
  assign _040_ = i_b[0] | _039_;
  assign _041_ = _027_ | _033_;
  assign _042_ = _040_ & _041_;
  assign _043_ = _028_ & _042_;
  assign o_out[1] = _038_ & _043_;
  assign _044_ = i_b[1] & _034_;
  assign _045_ = i_a[2] & _032_;
  assign _046_ = i_b[0] | _045_;
  assign _047_ = _027_ | _039_;
  assign _048_ = _046_ & _047_;
  assign _049_ = _028_ & _048_;
  assign _050_ = _044_ | _049_;
  assign o_out[2] = _038_ & _050_;
  assign _051_ = i_a[3] & _032_;
  assign _052_ = i_b[0] | _051_;
  assign _053_ = _027_ | _045_;
  assign _054_ = _052_ & _053_;
  assign _055_ = i_b[1] | _054_;
  assign _056_ = _028_ | _042_;
  assign _057_ = _055_ & _056_;
  assign o_out[3] = _038_ & _057_;
  assign _058_ = i_a[4] & _032_;
  assign _059_ = i_b[0] | _058_;
  assign _060_ = _027_ | _051_;
  assign _061_ = _059_ & _060_;
  assign _062_ = i_b[1] | _061_;
  assign _063_ = _028_ | _048_;
  assign _064_ = _062_ & _063_;
  assign _065_ = i_b[2] | _064_;
  assign _066_ = _029_ | _035_;
  assign _067_ = _065_ & _066_;
  assign o_out[4] = _037_ & _067_;
  assign _068_ = i_a[5] & _032_;
  assign _069_ = i_b[0] | _068_;
  assign _070_ = _027_ | _058_;
  assign _071_ = _069_ & _070_;
  assign _072_ = i_b[1] | _071_;
  assign _073_ = _028_ | _054_;
  assign _074_ = _072_ & _073_;
  assign _075_ = i_b[2] | _074_;
  assign _076_ = _029_ | _043_;
  assign _077_ = _075_ & _076_;
  assign o_out[5] = _037_ & _077_;
  assign _078_ = i_b[0] & _068_;
  assign _079_ = i_a[6] & _032_;
  assign _080_ = _027_ & _079_;
  assign _081_ = _078_ | _080_;
  assign _082_ = _028_ & _081_;
  assign _083_ = i_b[1] & _061_;
  assign _084_ = _082_ | _083_;
  assign _085_ = i_b[2] | _084_;
  assign _086_ = _029_ | _050_;
  assign _087_ = _085_ & _086_;
  assign o_out[6] = _037_ & _087_;
  assign _088_ = _024_ & i_a[7];
  assign _089_ = i_b[0] & _079_;
  assign _090_ = i_b[1] | _089_;
  assign _000_ = _028_ | _071_;
  assign _001_ = _090_ & _000_;
  assign _002_ = i_b[2] | _001_;
  assign _003_ = _029_ | _057_;
  assign _004_ = _002_ & _003_;
  assign _005_ = _037_ & _004_;
  assign o_out[7] = _088_ | _005_;
  assign _006_ = _034_ | _043_;
  assign _007_ = _049_ | _006_;
  assign _008_ = _057_ | _007_;
  assign _009_ = _029_ & _008_;
  assign _010_ = _067_ | _077_;
  assign _011_ = _087_ | _010_;
  assign _012_ = _009_ | _011_;
  assign _013_ = i_b[3] & _012_;
  assign _014_ = _078_ | _079_;
  assign _015_ = i_b[1] & _014_;
  assign _016_ = _064_ | _074_;
  assign _017_ = _084_ | _001_;
  assign _018_ = _016_ | _017_;
  assign _019_ = i_b[2] & _018_;
  assign _020_ = _015_ | _019_;
  assign _021_ = _030_ & _020_;
  assign _022_ = _004_ | _021_;
  assign _023_ = _013_ | _022_;
  assign o_ovf = _036_ & _023_;
  assign o_ERR = i_b[7];
endmodule

module \$paramod\subtract\N=s32'00000000000000000000000000001000 (i_a, i_b, i_clk, i_rst, o_out, o_carry);
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
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  wire _134_;
  wire _135_;
  wire _136_;
  wire _137_;
  wire _138_;
  wire _139_;
  wire _140_;
  wire _141_;
  wire _142_;
  wire _143_;
  wire _144_;
  input [7:0] i_a;
  wire [7:0] i_a;
  input [7:0] i_b;
  wire [7:0] i_b;
  input i_clk;
  wire i_clk;
  input i_rst;
  wire i_rst;
  output o_carry;
  wire o_carry;
  output [7:0] o_out;
  wire [7:0] o_out;
  wire s_carry;
  wire [6:0] s_out;
  wire s_sign;
  assign _073_ = ~i_b[7];
  assign _074_ = ~i_a[6];
  assign _075_ = ~i_b[6];
  assign _076_ = ~i_b[5];
  assign _077_ = ~i_a[4];
  assign _078_ = ~i_b[4];
  assign _079_ = ~i_a[3];
  assign _080_ = ~i_a[2];
  assign _081_ = ~i_a[1];
  assign _082_ = ~i_b[1];
  assign _083_ = ~i_a[0];
  assign _084_ = ~i_b[0];
  assign _085_ = i_a[6] | _075_;
  assign _086_ = ~_085_;
  assign _087_ = _074_ | i_b[6];
  assign _088_ = ~_087_;
  assign _089_ = i_a[5] | _076_;
  assign _090_ = ~_089_;
  assign _091_ = _077_ & i_b[4];
  assign _092_ = i_a[4] | _078_;
  assign _093_ = _079_ | i_b[3];
  assign _094_ = ~_093_;
  assign _095_ = _079_ & i_b[3];
  assign _096_ = ~_095_;
  assign _097_ = _080_ | i_b[2];
  assign _098_ = ~_097_;
  assign _099_ = _080_ & i_b[2];
  assign _100_ = ~_099_;
  assign _101_ = _081_ | i_b[1];
  assign _102_ = ~_101_;
  assign _103_ = _081_ & i_b[1];
  assign _104_ = i_a[1] | _082_;
  assign _105_ = i_a[0] & _084_;
  assign _106_ = _083_ | i_b[0];
  assign _107_ = _104_ & _105_;
  assign _108_ = _103_ | _106_;
  assign _109_ = _101_ & _108_;
  assign _110_ = _102_ | _107_;
  assign _111_ = _100_ & _110_;
  assign _112_ = _099_ | _109_;
  assign _113_ = _097_ & _112_;
  assign _114_ = _098_ | _111_;
  assign _115_ = _096_ & _114_;
  assign _116_ = _095_ | _113_;
  assign _117_ = _093_ & _116_;
  assign _118_ = _094_ | _115_;
  assign _119_ = _092_ & _118_;
  assign _120_ = _091_ | _117_;
  assign _121_ = i_a[5] & _076_;
  assign _122_ = i_a[4] & _078_;
  assign _123_ = ~_122_;
  assign _124_ = _121_ | _122_;
  assign _125_ = ~_124_;
  assign _126_ = _120_ & _125_;
  assign _127_ = _119_ | _124_;
  assign _128_ = _089_ & _127_;
  assign _129_ = _090_ | _126_;
  assign _130_ = _087_ & _129_;
  assign _131_ = _088_ | _128_;
  assign _132_ = _085_ & _131_;
  assign _133_ = _086_ | _130_;
  assign _134_ = i_a[7] & _132_;
  assign _135_ = _073_ & _133_;
  assign s_sign = _134_ | _135_;
  assign _136_ = _083_ & i_b[0];
  assign o_out[0] = _105_ | _136_;
  assign _137_ = i_a[1] | i_b[1];
  assign _138_ = i_a[1] & i_b[1];
  assign _139_ = i_a[1] ^ i_b[1];
  assign _140_ = i_a[0] & i_b[0];
  assign _141_ = _073_ ^ i_a[7];
  assign _142_ = i_b[7] ^ i_a[7];
  assign _143_ = _140_ | _141_;
  assign _144_ = _132_ & _136_;
  assign _000_ = _105_ & _133_;
  assign _001_ = _144_ | _000_;
  assign _002_ = _142_ | _001_;
  assign _003_ = _143_ & _002_;
  assign o_out[1] = _139_ ^ _003_;
  assign _004_ = _098_ | _099_;
  assign _005_ = _137_ & _140_;
  assign _006_ = _138_ | _005_;
  assign _007_ = _141_ | _006_;
  assign _008_ = _101_ & _136_;
  assign _009_ = _103_ | _008_;
  assign _010_ = _110_ | _132_;
  assign _011_ = _133_ | _009_;
  assign _012_ = _010_ & _011_;
  assign _013_ = _142_ | _012_;
  assign _014_ = _007_ & _013_;
  assign o_out[2] = _004_ ^ _014_;
  assign _015_ = _094_ | _095_;
  assign _016_ = _004_ & _006_;
  assign _017_ = i_a[2] & i_b[2];
  assign _018_ = _016_ | _017_;
  assign _019_ = _142_ & _018_;
  assign _020_ = _099_ | _009_;
  assign _021_ = _097_ & _020_;
  assign _022_ = _114_ & _133_;
  assign _023_ = _132_ & _021_;
  assign _024_ = _022_ | _023_;
  assign _025_ = _141_ & _024_;
  assign _026_ = _019_ | _025_;
  assign o_out[3] = _015_ ^ _026_;
  assign _027_ = _091_ | _122_;
  assign _028_ = _118_ | _132_;
  assign _029_ = _095_ | _021_;
  assign _030_ = _093_ & _029_;
  assign _031_ = _133_ | _030_;
  assign _032_ = _028_ & _031_;
  assign _033_ = _142_ | _032_;
  assign _034_ = i_a[3] | i_b[3];
  assign _035_ = i_a[3] & i_b[3];
  assign _036_ = _018_ & _034_;
  assign _037_ = _035_ | _036_;
  assign _038_ = _141_ | _037_;
  assign _039_ = _033_ & _038_;
  assign o_out[4] = _027_ ^ _039_;
  assign _040_ = i_a[5] | i_b[5];
  assign _041_ = i_a[5] & i_b[5];
  assign _042_ = i_a[5] ^ i_b[5];
  assign _043_ = _091_ | _030_;
  assign _044_ = _123_ & _043_;
  assign _045_ = _133_ | _044_;
  assign _046_ = _119_ | _122_;
  assign _047_ = _132_ | _046_;
  assign _048_ = _045_ & _047_;
  assign _049_ = _142_ | _048_;
  assign _050_ = _027_ & _037_;
  assign _051_ = i_a[4] & i_b[4];
  assign _052_ = _050_ | _051_;
  assign _053_ = _141_ | _052_;
  assign _054_ = _049_ & _053_;
  assign o_out[5] = _042_ ^ _054_;
  assign _055_ = _086_ | _088_;
  assign _056_ = _027_ | _030_;
  assign _057_ = ~_056_;
  assign _058_ = _124_ | _057_;
  assign _059_ = _089_ & _058_;
  assign _060_ = _087_ | _059_;
  assign _061_ = _086_ & _128_;
  assign _062_ = ~_061_;
  assign _063_ = _040_ & _052_;
  assign _064_ = _041_ | _063_;
  assign _065_ = _055_ & _064_;
  assign _066_ = _060_ & _062_;
  assign _067_ = _055_ & _066_;
  assign _068_ = _142_ | _067_;
  assign _069_ = _055_ ^ _064_;
  assign _070_ = _141_ | _069_;
  assign o_out[6] = _068_ & _070_;
  assign _071_ = i_a[6] & i_b[6];
  assign _072_ = _065_ | _071_;
  assign o_carry = _142_ & _072_;
  assign o_out[7] = s_sign;
  assign s_carry = o_carry;
  assign s_out = o_out[6:0];
endmodule

module ALU_rtl(i_a, i_b, i_op, i_clk, i_rst, o_out, o_status);
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
  wire [7:0] _062_;
  wire _063_;
  input [7:0] i_a;
  wire [7:0] i_a;
  input [7:0] i_b;
  wire [7:0] i_b;
  input i_clk;
  wire i_clk;
  input [1:0] i_op;
  wire [1:0] i_op;
  input i_rst;
  wire i_rst;
  output [7:0] o_out;
  reg [7:0] o_out;
  output [3:0] o_status;
  wire [3:0] o_status;
  wire s_ERR_chg;
  wire s_ERR_shl;
  wire s_carry_sub;
  wire [7:0] s_out_chg;
  wire s_out_comp;
  wire [7:0] s_out_shl;
  wire [7:0] s_out_sub;
  wire s_ovf_shl;
  assign _011_ = ~i_op[0];
  assign _012_ = ~i_op[1];
  assign _013_ = i_op[0] & s_out_comp;
  assign _014_ = _011_ & s_out_sub[0];
  assign _015_ = _013_ | _014_;
  assign _016_ = _012_ & _015_;
  assign _017_ = i_op[0] & i_op[1];
  assign _018_ = s_out_chg[0] & _017_;
  assign _019_ = _011_ & i_op[1];
  assign _020_ = i_op[0] | _012_;
  assign _021_ = s_out_shl[0] & _019_;
  assign _022_ = _018_ | _021_;
  assign _023_ = i_op[0] | i_op[1];
  assign _024_ = ~_023_;
  assign _062_[0] = _016_ | _022_;
  assign _025_ = s_out_shl[4] | _020_;
  assign _026_ = i_op[1] | s_out_sub[4];
  assign _027_ = _011_ & _026_;
  assign _028_ = i_op[1] & s_out_chg[4];
  assign _029_ = _027_ | _028_;
  assign _062_[4] = _025_ & _029_;
  assign _030_ = ~_062_[4];
  assign _031_ = s_out_shl[2] | _020_;
  assign _032_ = i_op[1] | s_out_sub[2];
  assign _033_ = _011_ & _032_;
  assign _034_ = i_op[1] & s_out_chg[2];
  assign _035_ = _033_ | _034_;
  assign _062_[2] = _031_ & _035_;
  assign _036_ = s_out_shl[6] | _020_;
  assign _037_ = i_op[1] | s_out_sub[6];
  assign _038_ = _011_ & _037_;
  assign _039_ = i_op[1] & s_out_chg[6];
  assign _040_ = _038_ | _039_;
  assign _062_[6] = _036_ & _040_;
  assign _041_ = _030_ ^ _062_[6];
  assign _042_ = _062_[0] ^ _062_[2];
  assign _043_ = _041_ ^ _042_;
  assign _044_ = s_out_shl[7] | _020_;
  assign _045_ = _011_ & s_out_sub[7];
  assign _046_ = _011_ | s_out_chg[7];
  assign _047_ = i_op[1] & _046_;
  assign _048_ = _045_ | _047_;
  assign _062_[7] = _044_ & _048_;
  assign _049_ = s_out_chg[1] & _017_;
  assign _050_ = _012_ | s_out_shl[1];
  assign _051_ = _011_ & _050_;
  assign _052_ = _049_ | _051_;
  assign _053_ = s_out_sub[1] | _023_;
  assign _062_[1] = _052_ & _053_;
  assign _054_ = _062_[7] ^ _062_[1];
  assign _055_ = s_out_shl[5] | _020_;
  assign _056_ = i_op[1] | s_out_sub[5];
  assign _057_ = _011_ & _056_;
  assign _058_ = i_op[1] & s_out_chg[5];
  assign _059_ = _057_ | _058_;
  assign _062_[5] = _055_ & _059_;
  assign _060_ = s_out_chg[3] & _017_;
  assign _001_ = _012_ | s_out_shl[3];
  assign _002_ = _011_ & _001_;
  assign _003_ = _060_ | _002_;
  assign _004_ = s_out_sub[3] | _023_;
  assign _062_[3] = _003_ & _004_;
  assign _005_ = _062_[5] ^ _062_[3];
  assign _006_ = _054_ ^ _005_;
  assign _000_ = _043_ ^ _006_;
  assign _007_ = s_ovf_shl & _019_;
  assign _008_ = s_carry_sub & _024_;
  assign _061_ = _007_ | _008_;
  assign _009_ = s_ERR_chg & _017_;
  assign _010_ = s_ERR_shl & _019_;
  assign _063_ = _009_ | _010_;
  reg \o_status_reg[0] ;
  always @(posedge i_clk)
    if (!i_rst) \o_status_reg[0]  <= 1'h0;
    else \o_status_reg[0]  <= _063_;
  assign o_status[0] = \o_status_reg[0] ;
  reg \o_status_reg[1] ;
  always @(posedge i_clk)
    if (!i_rst) \o_status_reg[1]  <= 1'h0;
    else \o_status_reg[1]  <= _000_;
  assign o_status[1] = \o_status_reg[1] ;
  reg \o_status_reg[2] ;
  always @(posedge i_clk)
    if (!i_rst) \o_status_reg[2]  <= 1'h0;
    else \o_status_reg[2]  <= _061_;
  assign o_status[2] = \o_status_reg[2] ;
  always @(posedge i_clk)
    if (!i_rst) o_out[0] <= 1'h0;
    else o_out[0] <= _062_[0];
  always @(posedge i_clk)
    if (!i_rst) o_out[1] <= 1'h0;
    else o_out[1] <= _062_[1];
  always @(posedge i_clk)
    if (!i_rst) o_out[2] <= 1'h0;
    else o_out[2] <= _062_[2];
  always @(posedge i_clk)
    if (!i_rst) o_out[3] <= 1'h0;
    else o_out[3] <= _062_[3];
  always @(posedge i_clk)
    if (!i_rst) o_out[4] <= 1'h0;
    else o_out[4] <= _062_[4];
  always @(posedge i_clk)
    if (!i_rst) o_out[5] <= 1'h0;
    else o_out[5] <= _062_[5];
  always @(posedge i_clk)
    if (!i_rst) o_out[6] <= 1'h0;
    else o_out[6] <= _062_[6];
  always @(posedge i_clk)
    if (!i_rst) o_out[7] <= 1'h0;
    else o_out[7] <= _062_[7];
  \$paramod\changer\N=s32'00000000000000000000000000001000  chg (
    .i_a(i_a),
    .i_b(i_b),
    .i_clk(i_clk),
    .i_rst(i_rst),
    .o_ERR(s_ERR_chg),
    .o_out(s_out_chg)
  );
  \$paramod\comparator\N=s32'00000000000000000000000000001000  comp (
    .i_a(i_a),
    .i_b(i_b),
    .i_clk(i_clk),
    .i_rst(i_rst),
    .o_out(s_out_comp)
  );
  \$paramod\shifter\N=s32'00000000000000000000000000001000  shl (
    .i_a(i_a),
    .i_b(i_b),
    .i_clk(i_clk),
    .i_rst(i_rst),
    .o_ERR(s_ERR_shl),
    .o_out(s_out_shl),
    .o_ovf(s_ovf_shl)
  );
  \$paramod\subtract\N=s32'00000000000000000000000000001000  sub (
    .i_a(i_a),
    .i_b(i_b),
    .i_clk(i_clk),
    .i_rst(i_rst),
    .o_carry(s_carry_sub),
    .o_out(s_out_sub)
  );
  assign o_status[3] = 1'h0;
endmodule
