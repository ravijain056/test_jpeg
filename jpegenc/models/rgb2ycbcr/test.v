// File: test.v
// Generated by MyHDL 1.0dev
// Date: Thu May 26 18:27:40 2016


`timescale 1ns/10ps

module test (

);



reg [7:0] rgb_blue;
reg reset;
reg [7:0] ycbcr_cb;
reg enable_out;
reg clk;
reg [7:0] output_cr_s;
reg [7:0] rgb_green;
reg enable_in;
reg [7:0] output_cb_s;
reg [7:0] ycbcr_cr;
reg [7:0] rgb_red;
reg [7:0] ycbcr_y;
reg [7:0] output_y_s;
wire [14:0] rgb2ycbcr_1_Y2_s;
wire [14:0] rgb2ycbcr_1_Y3_s;
wire [14:0] rgb2ycbcr_1_Y1_s;
wire [14:0] rgb2ycbcr_1_Cr1_s;
wire signed [8:0] rgb2ycbcr_1_G_s;
reg signed [23:0] rgb2ycbcr_1_Cr_sum;
wire [14:0] rgb2ycbcr_1_Cr2_s;
wire [23:0] rgb2ycbcr_1_offset_y;
wire [14:0] rgb2ycbcr_1_Cr3_s;
reg signed [23:0] rgb2ycbcr_1_Cb_sum;
wire signed [8:0] rgb2ycbcr_1_R_s;
wire [23:0] rgb2ycbcr_1_offset_cr;
wire [14:0] rgb2ycbcr_1_Cb1_s;
reg signed [23:0] rgb2ycbcr_1_Y_sum;
wire [14:0] rgb2ycbcr_1_Cb2_s;
wire [23:0] rgb2ycbcr_1_offset_cb;
wire [14:0] rgb2ycbcr_1_Cb3_s;
wire signed [8:0] rgb2ycbcr_1_B_s;

reg signed [23:0] rgb2ycbcr_1_Cb_reg [0:3-1];
reg rgb2ycbcr_1_enable_out_reg [0:2-1];
reg signed [23:0] rgb2ycbcr_1_Cr_reg [0:3-1];
reg signed [23:0] rgb2ycbcr_1_Y_reg [0:3-1];

assign rgb2ycbcr_1_Y2_s = 15'd9617;
assign rgb2ycbcr_1_Y3_s = 15'd1868;
assign rgb2ycbcr_1_Y1_s = 15'd4914;
assign rgb2ycbcr_1_Cr1_s = 15'd8192;
assign rgb2ycbcr_1_Cr2_s = 15'd6860;
assign rgb2ycbcr_1_offset_y = 24'd0;
assign rgb2ycbcr_1_Cr3_s = 15'd1332;
assign rgb2ycbcr_1_offset_cr = 24'd2097152;
assign rgb2ycbcr_1_Cb1_s = 15'd2764;
assign rgb2ycbcr_1_Cb2_s = 15'd5428;
assign rgb2ycbcr_1_offset_cb = 24'd2097152;
assign rgb2ycbcr_1_Cb3_s = 15'd8192;



initial begin: TEST_STIMULUS

    integer i;
    @(negedge clk);
    case (0)
        0: rgb_red <= 43;
        1: rgb_red <= 176;
        2: rgb_red <= 34;
        3: rgb_red <= 185;
        4: rgb_red <= 164;
        5: rgb_red <= 180;
        6: rgb_red <= 235;
        7: rgb_red <= 234;
        8: rgb_red <= 198;
        9: rgb_red <= 245;
        10: rgb_red <= 173;
        11: rgb_red <= 52;
        12: rgb_red <= 104;
        13: rgb_red <= 60;
        14: rgb_red <= 1;
        15: rgb_red <= 6;
        16: rgb_red <= 24;
        17: rgb_red <= 17;
        18: rgb_red <= 28;
        19: rgb_red <= 153;
        20: rgb_red <= 223;
        21: rgb_red <= 99;
        22: rgb_red <= 166;
        23: rgb_red <= 142;
        24: rgb_red <= 219;
        25: rgb_red <= 253;
        26: rgb_red <= 42;
        27: rgb_red <= 128;
        28: rgb_red <= 226;
        29: rgb_red <= 141;
        30: rgb_red <= 251;
        31: rgb_red <= 98;
        32: rgb_red <= 86;
        33: rgb_red <= 235;
        34: rgb_red <= 161;
        35: rgb_red <= 43;
        36: rgb_red <= 36;
        37: rgb_red <= 254;
        38: rgb_red <= 200;
        39: rgb_red <= 60;
        40: rgb_red <= 228;
        41: rgb_red <= 57;
        42: rgb_red <= 180;
        43: rgb_red <= 84;
        44: rgb_red <= 154;
        45: rgb_red <= 16;
        46: rgb_red <= 21;
        47: rgb_red <= 178;
        48: rgb_red <= 240;
        default: rgb_red <= 127;
    endcase
    case (0)
        0: rgb_green <= 112;
        1: rgb_green <= 213;
        2: rgb_green <= 150;
        3: rgb_green <= 246;
        4: rgb_green <= 85;
        5: rgb_green <= 92;
        6: rgb_green <= 235;
        7: rgb_green <= 120;
        8: rgb_green <= 42;
        9: rgb_green <= 52;
        10: rgb_green <= 143;
        11: rgb_green <= 46;
        12: rgb_green <= 44;
        13: rgb_green <= 57;
        14: rgb_green <= 112;
        15: rgb_green <= 52;
        16: rgb_green <= 244;
        17: rgb_green <= 133;
        18: rgb_green <= 28;
        19: rgb_green <= 9;
        20: rgb_green <= 230;
        21: rgb_green <= 180;
        22: rgb_green <= 28;
        23: rgb_green <= 123;
        24: rgb_green <= 160;
        25: rgb_green <= 149;
        26: rgb_green <= 121;
        27: rgb_green <= 211;
        28: rgb_green <= 109;
        29: rgb_green <= 35;
        30: rgb_green <= 223;
        31: rgb_green <= 52;
        32: rgb_green <= 88;
        33: rgb_green <= 11;
        34: rgb_green <= 216;
        35: rgb_green <= 59;
        36: rgb_green <= 167;
        37: rgb_green <= 109;
        38: rgb_green <= 144;
        39: rgb_green <= 75;
        40: rgb_green <= 226;
        41: rgb_green <= 93;
        42: rgb_green <= 72;
        43: rgb_green <= 127;
        44: rgb_green <= 39;
        45: rgb_green <= 220;
        46: rgb_green <= 23;
        47: rgb_green <= 97;
        48: rgb_green <= 182;
        default: rgb_green <= 47;
    endcase
    case (0)
        0: rgb_blue <= 143;
        1: rgb_blue <= 185;
        2: rgb_blue <= 249;
        3: rgb_blue <= 81;
        4: rgb_blue <= 8;
        5: rgb_blue <= 143;
        6: rgb_blue <= 180;
        7: rgb_blue <= 252;
        8: rgb_blue <= 6;
        9: rgb_blue <= 81;
        10: rgb_blue <= 171;
        11: rgb_blue <= 38;
        12: rgb_blue <= 81;
        13: rgb_blue <= 61;
        14: rgb_blue <= 221;
        15: rgb_blue <= 90;
        16: rgb_blue <= 141;
        17: rgb_blue <= 90;
        18: rgb_blue <= 98;
        19: rgb_blue <= 26;
        20: rgb_blue <= 48;
        21: rgb_blue <= 217;
        22: rgb_blue <= 150;
        23: rgb_blue <= 53;
        24: rgb_blue <= 60;
        25: rgb_blue <= 244;
        26: rgb_blue <= 0;
        27: rgb_blue <= 204;
        28: rgb_blue <= 64;
        29: rgb_blue <= 27;
        30: rgb_blue <= 121;
        31: rgb_blue <= 181;
        32: rgb_blue <= 249;
        33: rgb_blue <= 42;
        34: rgb_blue <= 114;
        35: rgb_blue <= 148;
        36: rgb_blue <= 3;
        37: rgb_blue <= 5;
        38: rgb_blue <= 175;
        39: rgb_blue <= 182;
        40: rgb_blue <= 179;
        41: rgb_blue <= 250;
        42: rgb_blue <= 231;
        43: rgb_blue <= 194;
        44: rgb_blue <= 198;
        45: rgb_blue <= 166;
        46: rgb_blue <= 141;
        47: rgb_blue <= 158;
        48: rgb_blue <= 125;
        default: rgb_blue <= 78;
    endcase
    enable_in <= 1'b1;
    for (i=1; i<50; i=i+1) begin
        @(negedge clk);
        @(negedge clk);
        case (i)
            0: rgb_red <= 43;
            1: rgb_red <= 176;
            2: rgb_red <= 34;
            3: rgb_red <= 185;
            4: rgb_red <= 164;
            5: rgb_red <= 180;
            6: rgb_red <= 235;
            7: rgb_red <= 234;
            8: rgb_red <= 198;
            9: rgb_red <= 245;
            10: rgb_red <= 173;
            11: rgb_red <= 52;
            12: rgb_red <= 104;
            13: rgb_red <= 60;
            14: rgb_red <= 1;
            15: rgb_red <= 6;
            16: rgb_red <= 24;
            17: rgb_red <= 17;
            18: rgb_red <= 28;
            19: rgb_red <= 153;
            20: rgb_red <= 223;
            21: rgb_red <= 99;
            22: rgb_red <= 166;
            23: rgb_red <= 142;
            24: rgb_red <= 219;
            25: rgb_red <= 253;
            26: rgb_red <= 42;
            27: rgb_red <= 128;
            28: rgb_red <= 226;
            29: rgb_red <= 141;
            30: rgb_red <= 251;
            31: rgb_red <= 98;
            32: rgb_red <= 86;
            33: rgb_red <= 235;
            34: rgb_red <= 161;
            35: rgb_red <= 43;
            36: rgb_red <= 36;
            37: rgb_red <= 254;
            38: rgb_red <= 200;
            39: rgb_red <= 60;
            40: rgb_red <= 228;
            41: rgb_red <= 57;
            42: rgb_red <= 180;
            43: rgb_red <= 84;
            44: rgb_red <= 154;
            45: rgb_red <= 16;
            46: rgb_red <= 21;
            47: rgb_red <= 178;
            48: rgb_red <= 240;
            default: rgb_red <= 127;
        endcase
        case (i)
            0: rgb_green <= 112;
            1: rgb_green <= 213;
            2: rgb_green <= 150;
            3: rgb_green <= 246;
            4: rgb_green <= 85;
            5: rgb_green <= 92;
            6: rgb_green <= 235;
            7: rgb_green <= 120;
            8: rgb_green <= 42;
            9: rgb_green <= 52;
            10: rgb_green <= 143;
            11: rgb_green <= 46;
            12: rgb_green <= 44;
            13: rgb_green <= 57;
            14: rgb_green <= 112;
            15: rgb_green <= 52;
            16: rgb_green <= 244;
            17: rgb_green <= 133;
            18: rgb_green <= 28;
            19: rgb_green <= 9;
            20: rgb_green <= 230;
            21: rgb_green <= 180;
            22: rgb_green <= 28;
            23: rgb_green <= 123;
            24: rgb_green <= 160;
            25: rgb_green <= 149;
            26: rgb_green <= 121;
            27: rgb_green <= 211;
            28: rgb_green <= 109;
            29: rgb_green <= 35;
            30: rgb_green <= 223;
            31: rgb_green <= 52;
            32: rgb_green <= 88;
            33: rgb_green <= 11;
            34: rgb_green <= 216;
            35: rgb_green <= 59;
            36: rgb_green <= 167;
            37: rgb_green <= 109;
            38: rgb_green <= 144;
            39: rgb_green <= 75;
            40: rgb_green <= 226;
            41: rgb_green <= 93;
            42: rgb_green <= 72;
            43: rgb_green <= 127;
            44: rgb_green <= 39;
            45: rgb_green <= 220;
            46: rgb_green <= 23;
            47: rgb_green <= 97;
            48: rgb_green <= 182;
            default: rgb_green <= 47;
        endcase
        case (i)
            0: rgb_blue <= 143;
            1: rgb_blue <= 185;
            2: rgb_blue <= 249;
            3: rgb_blue <= 81;
            4: rgb_blue <= 8;
            5: rgb_blue <= 143;
            6: rgb_blue <= 180;
            7: rgb_blue <= 252;
            8: rgb_blue <= 6;
            9: rgb_blue <= 81;
            10: rgb_blue <= 171;
            11: rgb_blue <= 38;
            12: rgb_blue <= 81;
            13: rgb_blue <= 61;
            14: rgb_blue <= 221;
            15: rgb_blue <= 90;
            16: rgb_blue <= 141;
            17: rgb_blue <= 90;
            18: rgb_blue <= 98;
            19: rgb_blue <= 26;
            20: rgb_blue <= 48;
            21: rgb_blue <= 217;
            22: rgb_blue <= 150;
            23: rgb_blue <= 53;
            24: rgb_blue <= 60;
            25: rgb_blue <= 244;
            26: rgb_blue <= 0;
            27: rgb_blue <= 204;
            28: rgb_blue <= 64;
            29: rgb_blue <= 27;
            30: rgb_blue <= 121;
            31: rgb_blue <= 181;
            32: rgb_blue <= 249;
            33: rgb_blue <= 42;
            34: rgb_blue <= 114;
            35: rgb_blue <= 148;
            36: rgb_blue <= 3;
            37: rgb_blue <= 5;
            38: rgb_blue <= 175;
            39: rgb_blue <= 182;
            40: rgb_blue <= 179;
            41: rgb_blue <= 250;
            42: rgb_blue <= 231;
            43: rgb_blue <= 194;
            44: rgb_blue <= 198;
            45: rgb_blue <= 166;
            46: rgb_blue <= 141;
            47: rgb_blue <= 158;
            48: rgb_blue <= 125;
            default: rgb_blue <= 78;
        endcase
        @(negedge clk);
        case ((i - 1))
            0: output_y_s <= 95;
            1: output_y_s <= 199;
            2: output_y_s <= 127;
            3: output_y_s <= 209;
            4: output_y_s <= 100;
            5: output_y_s <= 124;
            6: output_y_s <= 229;
            7: output_y_s <= 169;
            8: output_y_s <= 85;
            9: output_y_s <= 113;
            10: output_y_s <= 155;
            11: output_y_s <= 47;
            12: output_y_s <= 66;
            13: output_y_s <= 58;
            14: output_y_s <= 91;
            15: output_y_s <= 43;
            16: output_y_s <= 166;
            17: output_y_s <= 93;
            18: output_y_s <= 36;
            19: output_y_s <= 54;
            20: output_y_s <= 207;
            21: output_y_s <= 160;
            22: output_y_s <= 83;
            23: output_y_s <= 121;
            24: output_y_s <= 166;
            25: output_y_s <= 191;
            26: output_y_s <= 84;
            27: output_y_s <= 186;
            28: output_y_s <= 139;
            29: output_y_s <= 66;
            30: output_y_s <= 220;
            31: output_y_s <= 81;
            32: output_y_s <= 106;
            33: output_y_s <= 82;
            34: output_y_s <= 188;
            35: output_y_s <= 64;
            36: output_y_s <= 109;
            37: output_y_s <= 141;
            38: output_y_s <= 164;
            39: output_y_s <= 83;
            40: output_y_s <= 221;
            41: output_y_s <= 100;
            42: output_y_s <= 123;
            43: output_y_s <= 122;
            44: output_y_s <= 92;
            45: output_y_s <= 153;
            46: output_y_s <= 36;
            47: output_y_s <= 128;
            48: output_y_s <= 193;
            default: output_y_s <= 75;
        endcase
        case ((i - 1))
            0: output_cb_s <= 155;
            1: output_cb_s <= 120;
            2: output_cb_s <= 197;
            3: output_cb_s <= 56;
            4: output_cb_s <= 76;
            5: output_cb_s <= 139;
            6: output_cb_s <= 101;
            7: output_cb_s <= 175;
            8: output_cb_s <= 84;
            9: output_cb_s <= 110;
            10: output_cb_s <= 137;
            11: output_cb_s <= 123;
            12: output_cb_s <= 136;
            13: output_cb_s <= 129;
            14: output_cb_s <= 201;
            15: output_cb_s <= 155;
            16: output_cb_s <= 114;
            17: output_cb_s <= 126;
            18: output_cb_s <= 163;
            19: output_cb_s <= 112;
            20: output_cb_s <= 38;
            21: output_cb_s <= 160;
            22: output_cb_s <= 166;
            23: output_cb_s <= 90;
            24: output_cb_s <= 68;
            25: output_cb_s <= 158;
            26: output_cb_s <= 81;
            27: output_cb_s <= 139;
            28: output_cb_s <= 86;
            29: output_cb_s <= 106;
            30: output_cb_s <= 72;
            31: output_cb_s <= 185;
            32: output_cb_s <= 209;
            33: output_cb_s <= 106;
            34: output_cb_s <= 86;
            35: output_cb_s <= 175;
            36: output_cb_s <= 68;
            37: output_cb_s <= 52;
            38: output_cb_s <= 134;
            39: output_cb_s <= 184;
            40: output_cb_s <= 104;
            41: output_cb_s <= 213;
            42: output_cb_s <= 189;
            43: output_cb_s <= 169;
            44: output_cb_s <= 188;
            45: output_cb_s <= 135;
            46: output_cb_s <= 187;
            47: output_cb_s <= 145;
            48: output_cb_s <= 90;
            default: output_cb_s <= 130;
        endcase
        case ((i - 1))

            0: output_cr_s <= 91;
            1: output_cr_s <= 112;
            2: output_cr_s <= 62;
            3: output_cr_s <= 111;
            4: output_cr_s <= 174;
            5: output_cr_s <= 168;
            6: output_cr_s <= 132;
            7: output_cr_s <= 174;
            8: output_cr_s <= 209;
            9: output_cr_s <= 222;
            10: output_cr_s <= 141;
            11: output_cr_s <= 132;
            12: output_cr_s <= 155;
            13: output_cr_s <= 129;
            14: output_cr_s <= 64;
            15: output_cr_s <= 102;
            16: output_cr_s <= 26;
            17: output_cr_s <= 73;
            18: output_cr_s <= 122;
            19: output_cr_s <= 199;
            20: output_cr_s <= 139;
            21: output_cr_s <= 84;
            22: output_cr_s <= 187;
            23: output_cr_s <= 143;
            24: output_cr_s <= 166;
            25: output_cr_s <= 172;
            26: output_cr_s <= 98;
            27: output_cr_s <= 87;
            28: output_cr_s <= 190;
            29: output_cr_s <= 182;
            30: output_cr_s <= 150;
            31: output_cr_s <= 141;
            32: output_cr_s <= 114;
            33: output_cr_s <= 237;
            34: output_cr_s <= 109;
            35: output_cr_s <= 113;
            36: output_cr_s <= 76;
            37: output_cr_s <= 209;
            38: output_cr_s <= 153;
            39: output_cr_s <= 112;
            40: output_cr_s <= 133;
            41: output_cr_s <= 97;
            42: output_cr_s <= 169;
            43: output_cr_s <= 101;
            44: output_cr_s <= 173;
            45: output_cr_s <= 30;
            46: output_cr_s <= 117;
            47: output_cr_s <= 164;
            48: output_cr_s <= 162;
            default: output_cr_s <= 165;
        endcase
        # 1;
        $write("Output should be: ");
        $write("%d", output_y_s);
        $write(" ");
        $write("%d", output_cb_s);
        $write(" ");
        $write("%d", output_cr_s);
        $write("---Real output is: ");
        $write("%d", ycbcr_y);
        $write(" ");
        $write("%d", ycbcr_cb);
        $write(" ");
        $write("%d", ycbcr_cr);
        $write("\n");

        if ((output_y_s == ycbcr_y) !== 1) begin
            $display("*** AssertionError ***");
        end
        if ((output_cb_s == ycbcr_cb) !== 1) begin
            $display("*** AssertionError ***");
        end
        if ((output_cr_s == ycbcr_cr) !== 1) begin
            $display("*** AssertionError ***");
        end
    end
    $finish;
end


initial begin: TEST_RESETONSTART
    reset <= 1'b0;
    @(negedge clk);
    reset <= 1'b1;
end


initial begin: TEST_CLKGEN
    clk <= 0;
    while (1'b1) begin
        # 10;
        clk <= (!clk);
    end
end


always @(posedge clk, negedge reset) begin: TEST_RGB2YCBCR_1_LOGIC
    integer a;
    integer b;
    if (reset == 0) begin
        rgb2ycbcr_1_Y_sum <= 000000;
        rgb2ycbcr_1_Cb_sum <= 000000;
        ycbcr_cb <= 00;
        enable_out <= 0;
        rgb2ycbcr_1_Cr_reg[0] <= 000000;
        rgb2ycbcr_1_Cr_reg[1] <= 000000;
        rgb2ycbcr_1_Cr_reg[2] <= 000000;
        rgb2ycbcr_1_enable_out_reg[0] <= 0;
        rgb2ycbcr_1_enable_out_reg[1] <= 0;
        rgb2ycbcr_1_Y_reg[0] <= 000000;
        rgb2ycbcr_1_Y_reg[1] <= 000000;
        rgb2ycbcr_1_Y_reg[2] <= 000000;
        rgb2ycbcr_1_Cr_sum <= 000000;
        ycbcr_cr <= 00;
        rgb2ycbcr_1_Cb_reg[0] <= 000000;
        rgb2ycbcr_1_Cb_reg[1] <= 000000;
        rgb2ycbcr_1_Cb_reg[2] <= 000000;
        ycbcr_y <= 00;
    end
    else begin
        if ((enable_in == 1'b1)) begin
            rgb2ycbcr_1_Y_reg[0] <= (rgb2ycbcr_1_R_s * rgb2ycbcr_1_Y1_s);
            

            rgb2ycbcr_1_Y_reg[1] <= (rgb2ycbcr_1_G_s * rgb2ycbcr_1_Y2_s);
            rgb2ycbcr_1_Y_reg[2] <= (rgb2ycbcr_1_B_s * rgb2ycbcr_1_Y3_s);
            rgb2ycbcr_1_Cb_reg[0] <= -(rgb2ycbcr_1_R_s * rgb2ycbcr_1_Cb1_s);
            rgb2ycbcr_1_Cb_reg[1] <= -(rgb2ycbcr_1_G_s * rgb2ycbcr_1_Cb2_s);
            rgb2ycbcr_1_Cb_reg[2] <= (rgb2ycbcr_1_B_s * rgb2ycbcr_1_Cb3_s);
            rgb2ycbcr_1_Cr_reg[0] <= (rgb2ycbcr_1_R_s * rgb2ycbcr_1_Cr1_s);
            rgb2ycbcr_1_Cr_reg[1] <= -(rgb2ycbcr_1_G_s * rgb2ycbcr_1_Cr2_s);
           
            /*
            $write("\n");
            $write("%d", rgb2ycbcr_1_R_s);
            $write("\n");
            $write("%d", rgb2ycbcr_1_Cb1_s);
            $write("\n");
            $write("%d", rgb2ycbcr_1_Cb_reg[0]);
            $write("\n");
            */

            rgb2ycbcr_1_Cr_reg[2] <= -(rgb2ycbcr_1_B_s * rgb2ycbcr_1_Cr3_s);
            rgb2ycbcr_1_Y_sum <= (((rgb2ycbcr_1_Y_reg[0] + rgb2ycbcr_1_Y_reg[1]) + rgb2ycbcr_1_Y_reg[2]) + rgb2ycbcr_1_offset_y);
            rgb2ycbcr_1_Cb_sum <= (((rgb2ycbcr_1_Cb_reg[0] + rgb2ycbcr_1_Cb_reg[1]) + rgb2ycbcr_1_Cb_reg[2]) + rgb2ycbcr_1_offset_cb);
            rgb2ycbcr_1_Cr_sum <= (((rgb2ycbcr_1_Cr_reg[0] + rgb2ycbcr_1_Cr_reg[1]) + rgb2ycbcr_1_Cr_reg[2]) + rgb2ycbcr_1_offset_cr);
            // the part which must be checked for rounding is the partm from signal[fract_bits + nbits:fract_bits]
            a = (14 + 8);
            b = 14;
            if (((rgb2ycbcr_1_Y_sum[13] == 1) && (rgb2ycbcr_1_Y_sum[22:14] != (2 ** 8)))) begin
                ycbcr_y <= (rgb2ycbcr_1_Y_sum[22:14] + 1);
            end
            else begin
                ycbcr_y <= rgb2ycbcr_1_Y_sum[22:14];
            end
            if (((rgb2ycbcr_1_Cb_sum[13] == 1) && (rgb2ycbcr_1_Cb_sum[22:14] != (2 ** 8)))) begin
                ycbcr_cb <= (rgb2ycbcr_1_Cb_sum[22:14] + 1);
            end
            else begin
                ycbcr_cb <= rgb2ycbcr_1_Cb_sum[22:14];
            end
            if (((rgb2ycbcr_1_Cr_sum[13] == 1) && (rgb2ycbcr_1_Cr_sum[22:14] != (2 ** 8)))) begin
                ycbcr_cr <= (rgb2ycbcr_1_Cr_sum[22:14] + 1);
            end
            else begin
                ycbcr_cr <= rgb2ycbcr_1_Cr_sum[22:14];
            end
            rgb2ycbcr_1_enable_out_reg[0] <= enable_in;
            rgb2ycbcr_1_enable_out_reg[1] <= rgb2ycbcr_1_enable_out_reg[0];
            enable_out <= rgb2ycbcr_1_enable_out_reg[1];
        end
        else begin
            enable_out <= 1'b0;
        end
    end
end



assign rgb2ycbcr_1_R_s = rgb_red;
assign rgb2ycbcr_1_G_s = rgb_green;
assign rgb2ycbcr_1_B_s = rgb_blue;

endmodule
