//############################################################################
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//   (C) Copyright Laboratory System Integration and Silicon Implementation
//   All Right Reserved
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   2023 ICLAB Fall Course
//   Lab03      : BRIDGE
//   Author     : Ting-Yu Chang
//                
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//
//   File Name   : pseudo_SD.v
//   Module Name : pseudo_SD
//   Release version : v1.0 (Release Date: Sep-2023)
//
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
//############################################################################

module pseudo_SD (
    clk,
    MOSI,
    MISO
);

input clk;
input MOSI;
output reg MISO;


parameter SD_p_r = "../00_TESTBED/SD_init.dat";

reg [63:0] SD [0:65535];
reg [47:0] command_queue;
reg [87:0] output_queue, input_queue;
reg [31:0] addr;


initial $readmemh(SD_p_r, SD);


`protected
FBD03Ad?BF]0)5;QCTfW^OKJ[)b@./[Qd)9N-dVHdGea?JfgTB(a))bab.M_&]5A
X=56d^X\[KWOOZ#L2J.;c=G8P:CT<bK))#\fEc0M5[HI?&+(56Pb87BeQ9^/J>)=
DA)abXPH/cKH.3H]baW<:#cafLCB)L(WD9F\SGVC69I.-DH3-QQU@4W4ZLd-/9G0
3=HR[e-RIe/[,Ha?2B[X2H:?WZ,Q&:B7FF=@8FVKT/C>[//D//;5(g,JN\#1&M_[
=-&X.UNVXC7YJ\=>HQVM.a5:]O9BN,>XTKQ;QI(9aBT#F)]W^U\=?U9Vg^-U.1c)
;V\SeZb<?EKEYBC/]&79B/N,BTYQX@8+N0_KEO-3<\-T[aG-,B4SHedb0NP<:5e2
2+;)N-;TL;QTC+^B1O)+=Q^#cF2fF#,5SD/-2]2L0>I>8Qa2>52.g]P6,S_Id=N@
NZ)#ag7;VP#aN=72\/.[eU/\3@fRG_eIEg\H?[e^US4/Z0<BO\I)453ca(eGA8KY
L3V4C?+<.L<\O5_Q.=OW?J>0HOJ@JVPB6NPNf&WK5<+eTW<BaTCaV.83E#WH9-&S
,..;ccY/YRUNB:QC(^;-KWY_N/8(8b72ebIWVa1@HQX<De01]+^;@.eZOP(Oc9>^
M84=04R81KQI_NQcP[a\Ac:W+ba35S5eUC1R6RXB11d:8-/<+R8Y:,AV,#[d.)(8
E,H..#C+KF2;_<]BO4EYJTJ9QQXdT)_2Kfb;X8;93>U]4J(W<VQ]7XHgA;S7-E1E
G>dT[G(9.3fM,_eb_M.AHFO+V,I],&^MA<\C0Eed1bUXgfQGf5VJP:)6\[?#cg5;
<CH2A3@.bQJL/YKDAU,T5Y&a3Vebe(P.O30H&\=IPPZSOL^f1=@74?^[[4U7BR0N
QBM0CXX3]RADE51)N1S98XRX)4+U(BgbCf8Jd015R_VQ,NfJB2VaBc5Y>?ZC]&H]
VY)(:1],7aNU_,Eae3(M[Wb-7P;USH?c8E]]@C<4-Z7;(2eB.TBU2#)3a4J:X:8C
WQ.gHF5MEB,4X_e25?<AO&E0.X\3Y88H1>]Fa.^8F;#4Oc75-fd_5QBQA8)=X->D
CDPAbECVCHSE5Dd[8Q^;OF_#gG8G2):=[.2e@WM/gDQF[IWbeL>_M][-/#SK)C/W
]=66gQY6BZW>VD0ZI+<fB^H<g4L#]+P>PO#VLa355c,MFVJB;c.HZ^./c6/UB^DK
NEfJUaBO<R<>T?3EWZR+L7\;T\S(Qc+O+,cT)2P8,+RGGH8C<A/fF#[04M/6^@5#
_MMLbJKWG-DF^g?g:ZNY)KXD2_RD@NJ\N^D9B[M4QREeGGYRC<?CfTMDU>Y_^==1
<#a__Z3&1-:QEd1,\8VbHK^IU6O\=Y8?96,U6V^D[)(R,7NOL[ZH)g/]LfVF2.)=
IbH4ZDb?NCI:Wg7C4f-I[Je<^=LQ78\,fIOYUOG4RXV5JQ43]ZbW_.5LSO>:,?Jb
,6#MbRaSaWdJ\38SWN/S]E)c#?=Q0/G.VTC/5ffId4FF2f\Q=<F720,Dg<[2YZU;
.DU-\U&U7=2I);#=UV#@A&7g[UG4.ZJc1UJ.E3/M5g<ZBTVO+Ba3[HN--\(3+=//
X?^CPZ3HER@\64<Lg3/:IUNbU[G4MH,AFIOg1ggAJH].1a.N/=0?]UF[c_B9J_Mb
b#H]PO?:8):RU-LJ?G_f?;END5Qg18B8]/;G@CGZZ]RYf>TRZF1TC_#\7XF&:9[2
&XL2QgN8JV_;L4N_T]CFRGe)@gQ&f&7@>SQJb]A.:E4A^;QW.VcFD#;,\R@3]G]W
Y^X\C&N2#4;AFTgE28Q8a>LdXIb8F>3.9^/c4/PE8#=K?#>)0Hc5<<;8.dXUf483
LKK0OEJ<:OM47)HgdI=B::6dL(_e]&MEUJ=B^#3)3XPBeO-)VMXW76(&OBPcR[D2
<?;C/Bd^9?6IRRD0(BU+_.gTDecTU0KJ[=[T65,8K1aI^W(DCDbS7+)T^a-HPLTO
8=B#D9Zb@OW6#e6Z#/+_g]6.#M4DaJTc;.B94;dbO7.>4KTQ[TCg(JT&(8RdH2CR
UaXZe2adJ^b/\IPbOVJV8FWY&M@D83BE^>&X\+YOL)<J0f#41fE-KSQ#+]IR<VC)
d(=)?W<3?,e\62E:WEAE&@A=gT\^]JFR30Jg:)04S4FW52d8M\fE4-@FeDCH[UI3
O3U]XBI(H]T1<JICG0)0&=JI^7^8CXCHG0?aDAeEdZeNCJPgL;.>11bH:@B\D)_7
@4eXfa:-4;I,4c/=^FF@:XNQPGa+=fKI(MQJe8=?W(=?faKBZ?2F_^M33b?])gEC
MfCI?bU):EaeALKaJJR+Z3)UWa#GSM^\_.\2)Yc+?R?c&@2KdWZPJHQ[:L@0L<W.
EcAK+b(PE<<X+^GHO\9_?L0QZe90P:Q(]E27D/5VBI&26)MF^V&eQZPG@VOG6\dP
[bcWJ#_IbZ^]?/FPVa^PcGQ_>E#eD4>CQcT1:FY40;0DJ74;4bR9UEdcfJ>8)V/^
c9+T-RVT5N(cT\&QV6L]HL+JQNg(dgd@\))SeM<@Gf^),&=HR3S9<a+.:3_J>6U^
R8UCCXPU\S0Q_42;WSAH?+VaCDI;2.Qe.K^a,]T;J<1;,ULD_c4dgE]aV/DCRCY2
0bSC8B_YTS/UYU.a3@9dcfC1dELO\I3=]D<FDHJ0.b4GOV/a@8-b@JN80)AJ-@S5
)#gg(3T4-JZ/M?PMB7PTe_gNVE(D^@?)K7>[B=7\,#3EFO8I)+0Eb69T:&@9cR)4
MNN08G+JAU:dc.VV-T1_;;5\D<:B\29Tc(AC[<+MB[87FbPAA76NZ.M,\-[Z1^T-
E?NQd0c]:/[=]dJbH3N<GJI.,TQ+d6U@UHY#@YLJDK=HXJCM:_Q7)/S3/dgPNXZ;
8XU]W442#L/@3FJN@6WM?@X^d@FOc:F#&+/9/,d<PfEUd8/;R]e]HFQH;[O]=89U
QP1>##Bg/J;H?W7cPH8HG[-6DUFJ-ZU[Ug57[U6Q]K)0+U<YU1+8YZNf;PC#:X9U
4Ca4R&ae]6_>_G+1Y)Q75E31;1:G_YgCX7\^=.OFYXZ[+-J&b:G>+MD91+TQ5+X4
3;#@<8I+g4632M73&CHA4cg7a85[JO+S<41PHD2-)O7RcH:XdODU^?d2IPAX0OeM
LO[+&OE#.FW?V??e2a8[CM=@;e;5ebE;J94#/M/-^0]OV@Od/EXRY18EU(4c:R^+
2bHRa1Y#6O.=OJ+&OEE=H6N9/\;DIJS-)8F^e@8[3=W+aK\[PHWKe8:.:25)&LJN
X1MDQ<;9ZKg=f:gK970>V8+ECFTdQT;H<@-NGB__e@C^68<.6R<;67)7&#T0&SZ9
=FL?eUcdB^HQL/4)Uf<#I=AXN\8ObZ2,]8,Z1R1a-UeaD:G-b/(H.LZ6W(;7V:_4
-7.c-OL)M:K-MPV2.FBM5:ea9_\H-b#?B6C_;]>@deV48W?>6B#a1/Q2R82HU:M.
7L(Vb5+-b5LRVR;=cTLP,X&@)Z313Z212=Z4-XGc]VK#+TL?XEPY;N_>f;a(UC<O
HgN4WL)+D>0\JU?L.8WWKa#H^4HB=I;7<8E&IeaP[73LPS.7/Y\gg3_JNBY&@HgL
W;fE+fRffATTLGY,<R4-+S0HW.1PD]Q?A=8:P/)7C-1]OH2ZD>TB-OH3N@eA>6:-
QDW9(c8DcRM_I/WPPU\NJ.I+A8?;1UQS,+/?Nf7/6<SE^C+(2KfLeY.G]V(<1>0-
GC-NHGHX.T?^-A22GU(dL@N2G.a\EA_H,71F;f/^gH7Y_Rc5BecKVH=A\e+FM5Hb
;De=-HY71#cF2D4<S0(;<f/I2JCZ_0)<2Y6GXM_-&7dYaJKa4DfC+/7KS)V&.eB@
@(7P.[<OgB(,d>1IGbHSF6X8;V1g4@1PeM#7-?L16S]U1a[VXc^:\WeBS&OW_L?E
4=?<dB04KE41C,NGd8NA9J4A<C,9X?.KU=P9I9TPgYE2]ReV3B-/S0AEU:(f6[_O
d[&3B+:Tf](5C6SE4IRSX_1dg]FQGa[Z>c+T\fTaTRCP]\=KBbW9NX:ZFTF&I@c@
O3\EW\A8KHeS_QR2XGL:E[X8&;B^)P2Y98#GR05?LZCBaTc8=[L\Aa[/;WL9Y8.A
)8=b<^B.;BN1MIMH:/KbW]8VTJ+H/J7b/IJH3B.A0\1VD9c5HWC.VV:VZ&+#]b_>
C);,3/Q-B5P>_<[-,?Z.Z7a?ad/85NEV;0AG(AUQWHf/d0+KVY@I=S7@c&]BJ_W1
COI-#?31e@)g61?O@B&_Z>ZY)2=.Fd#LO9E5ZGb/3&I]EM50HT>@8UNSO=)\\=d;
OJYM)M+<4d^;geBH<(7KT5]RM;fcTSgU\6-7Md6630(Y3SO(39QgEH?[?@BGQJN1
+M#WM_#Q5gg<?0baNKX49<68>(?0gG2F1=Aa)\H[3\Z:Q^e+0c2fMD5;@^_cC\5<
2VBL4+1?5PDGQ+>9Tf/_I7P^]4K+SI7V(TNM]a1X(V?6GSC,@-]VTN&H4g-\Z5VC
]&N)\>&:9BF#W>;Wa\YLc>I>2RVLVcTZXMQ0-:BS+</><:Ie8X)gC4A26VUYf4;D
\I\)+(OR&W>VKYPE>Bc4efZ6]:;9CY6,PT?B67E+3_,E<gO1+TOD4\#SLBW4\PQb
MX<)U+gXYY&:A=#&SdNb1^OJ/_G6UE=#4=A^eaXPbMH#>Sf)?5c^2XMHT/QU<7UK
/;.2[8bb2NI^20cK:J9&^BBPLB,0+cfYFJ;d/ED7fF_P^F^;2CG78.g;#Z\7#I85
eQfCJ\(A&A3@ac,#S/UFEaL]<(c)Ib^ZSN]eNEIT<G(4OO_0\CbE6=.-\/@2DY;f
Ra7^/.aOE5I#\;<2^D5Z;2Z]a+96K7;g;U7JgH5dK@77RXN;R\3deS6eA71MXR[J
&P;3D00aTb&0V(1&Pdg[/@f?NRcBPWM(/S\9eUE5:;)bcG)?8^b5g\B-?Y1BDLcV
<aA24F2La&2))1>R?0be;E0^<T6@+0TF^N&7cT<#7KC)BF:N,_@1?GI>DG?M_3^8
)I:X_a>N#\&,V1IYFHCSJU@JJTb(N9QYJ_/_<ZHXNdSE01g0YV0A0+H2):(1^R/W
69/=/81]?LXE[P)4&Mf:U?Y)gN28dKd=1LPZPb19]&)N\32&[&HU::S@;.&-76_:
gW0GdJ=4S0_#E9B\)MAb?G<(d]#+gZ.N/Y0X=PZ9SY?Q(<(]?Z\YW^2W>F_11[N^
JR>V8H18#OB/Xdb^N_AbPO?;W?=(AU_)gN=a4^\UX0AG3=FY.e,JOCC7Ff/F1130
QHZSJ]#P&FGF47aKd@R&J:@S8P8N\8JMLZK[VfJ8[AC00Q<DaVFUa[4)&@.&JeB_
[IP24X5(]3+I+agJeeXHbCBJYJ-)+NW?#?d604^0ENMX&D-=0<A8?L,#_UAXdM(C
2T058NDQO\FMG5af4Oa41.W_/ZbI-3e39Xd=UY&QMf>,d&fd+JTFNe2:D<CD/>F2
A,gIK#([I,6P3T;^<1/+@L/gQdUFX,+ZKH=18>,SN;@bY3A=D_VbG/0<&6g;YZbe
M3L\.4@0VR/9>+O78:eMI[D26^YbYg7E1?BddR[eJ3[^O)&_LW64),,0c5GJD-+,
:O-),C)feQV)8X=&?T]L]Xa=?=9IdNXO#SA\K_S@1L/V8?SdPRM[;^GL+3AY4GEY
F70HIdbg3MI,#,(5)Q1A\2@Z91NY6@9XBJdOd@S&:[9/8&<#9a@TUY,3I4BRe4&S
X^@>TL3\ffW74I1WQL;e]fLKb9X;S_D^9E@E/5f&1AYBOSgQ\D\APSCc,Z6Q=8#Y
_6>)<UdWI0f6R[KJ[^b0?<dId;=.AKV1f,D#[a5P2X[<&1M5FdT3#Tg;_66]LGad
VRQ>H3^01:E9J)&V9=e:107R@6Zfc+C61F8>S-bV2a)PXVG-[#f1V//<3=?P\M:U
fOdKAN(L7g<,5_CW&/gL[8Bg7Ue2(QEL/+F[9E//A^6Z::a\CMg.bZf+?;[=RNHA
-\5<Tc:-dVV8U\.R6#O0\;6.cWS2UQgL7gSDZc0?Y3W[Ja^(Xb7B.N,b/9X@TOb@
TRCd;g82/b+9]:&T#VP17\)SZ<W=]G)VKR1;OCF?ISN7P;HC]#2/(Bd=K)^2[34a
_7,Q6K#)3F+=(Z6AUK&LOAG?&30YU7&e+0BK<FfBJB_HY?NbY6YB^Z),\2/3-bHQ
O=L]9dCPF(bNNEPba24L#Z4X@S=@_F^P3<e<7Z,Z^25/KFeF4;X<C40+d5^BW]aL
N/d\)\Oa@_V&\/5[88&Y\QPE7>[#UIXD[<0Z<_2b>c36gY[.J5T8AQL9GQH]?C7)
D&171Ac&AJ?D^U;WQ][,<<HfP+O/Y/E3Ta.5]Y]aDb@>+-g_&;3^_>ZPgc@0UUG]
QM;.aPZ.#1UNBTF>-133K0?cSb?E<VN6S5=b_,#7#R3O,d\?40.UFAJ)O7cKOL75
AHfb]MGX(NOD<YNdRHEUAGAe9_41.eQZBQ(bA/1Xd__A3>ZC.J5CTJ@)g5CJ9&d<
dT;=&V?Q7FNRK8I1H+AKS[SR)Z[8[@Y0eO=#3@?(5N<#7\42]/_fRU\#WFRY6[TZ
7&caLUDMXP4MADGAPQd=3&+JGPT\dNO[O?(0XY1&CF[X5gLX2KXQ(=Gb;=5&[fR@
@ZY-6>B&a/cQ#MaQ<DcM-I74E->U9-eANe.:YP&/d+EBOeRJR53/9@MC4feR<XT<
:<;Q=AE^eHCdfZbSX/cg)(g\W@]5N9eW,P-A=G[\=WOL/&:H;YMN<FA=bO@^FU:e
+dLPCL9NSPbXO:5Zc]CE:(Q/<(GOaSc5U<P1E\196g_NT+WI5ZX\gG498>LPOL).
:KS^S84IW-,HOG(3_1X6]CY3JS=CVcO@>MD;XcJ]-(d2L9AZ&XLL,P&7XL[AWTVK
HCAPbLYdGVA6.P_2bPTS(K@(.Vc.NVb6&K\:>HHNW&=3&;(L#+@c/[60H6IO9RbV
XX^SZa/_2C:O+4F2=gO<1cJJ4IA+@G947@e0/JGEXNG&PJG)C>fL[_C>a/8#IF[.
Ze7V9SWaM)#bE=M\Jbd5#ZO&;TJ6_3C1Pc<;cg(g@+6dbJWD>SV:^HUA)C#,CVKc
YW&FgM/dO5Dc[G19eQZg2?Q992KdWfAXY_]I:VgI/Q;ZNCd^KC=4.gCgJ.O.V>X2
eQVKQe>NDXNHAE?/QR^-cS9P,>D[AARgb\2T]_fc=J@38bZB-[c&^^=K95IZ6XF@
?Ab#aL4U<SR(([NNJY\9Y,;\MgBV;;_,VBCUad[8[M_d.M<Tb\QN\[8>#(U\R91c
L2Y?1Ae[<.,XM7\OJH&&SbPbf3d/@dcDFM<F-@4\IT\Y)R7]BcHM2-6]EDN1U0cA
RgJ^<1Y?.V-+2c2QgELPOW<;,cgB0X#>aOG<M#5NgS_g^VGeDG_)DFMN[+WX5:D_
(Qb7@>^14d=gd^13BGFFC@f-?HU<Q2<@cD/D0JGa,LT1=4a;c^28\eN\_H^]5ce5
ILCD/O=JV#6(M&N<=;#>=&gd:;6+1V.O?#U+?YJ\7PP0]1-K7LV-]D:g]X,?HO9M
GRXR@BJC;EZ>da.FUPO?#S-U<(aW]D?4<)5<eK.2A7&6_de5=Hc0=\BZ)[dJPbXR
&E1?/Sc-QS)=L?;EQdI78U&PL7X4?8TWU@;6^,UTN)/8#C+@Q5&2SVf1-d:9S+&E
W1aM]2=[-;)MV2bbV>2>fH0&/a6:^e]aIQ-7EBSB2KKTF7W55FZ1=)W2_9SgfLHS
(=Z1UM?_Of-_N02]HF[?f47M\_,F4#MNQ_ZSI(e>(WCU(<[A6.&gQZ\RTJODgO1^
G.YI&_^]:YCBM4aIQe@QHJeSbOE#40093Vaec=0R8Dg4,HYB]KQ1?_C[G-&?Oc#L
33E\=,T4b]M=AO.6dc+A&Zc#EO.L)300?ARY9C)cfA:1/:U8VS#Ha=N=TK6OeU@)
<M7Kb2):1YN,B:O-8[O,8O,Kcf+>Y\B[QbccZRM>_??SgH/X^FOH@b@;b3La6]4,
.gZV(ALJJ.3\J+7&U26=VA1C\ScIW/G6U,=g0VBOf5d4MFQ_>)^4OE5U:(-6#+87
bHE(@Ya3J-&T7@W4M\ff(M_g6F4WE0Td8DF_<AP21&a&?ERa49PN&Z,JFI-5)b8Z
aJJR4]@G.2>Y-:HB62(RV3B^g6FJ0HE>LR#69YNL]HLFFc&I619DGL#AeU4SH@2O
;9M8c[2bPU<11McT@FN4UUeA:LA)HT6ZVJ[e:)43dLMQ/CKRUMFb-LWM;,UF\2JX
)RLW#UdR^YR(6/#.CX9/NYN0=5.@3YCB-FeZf+dPGU#IIXF#B[#[>2/<_X<8>IPT
,59YGGM0@e.JJcd]U2:cgZWMQ2DdSW+_DfPCC/=LFLS4BXQAUWEA@]g7&;F)/bQ8
2SR]1U>](H593)9FeZHY-)2>=>++F.e\ZA?MD1#W?S6H;-;SPAg@d64W9)6f]Xfd
g,/,[<FQ)]1][[adF[SP5A^fW_U0SA>?)H._f\\CP]TKOdMQdDJ1>A7^dceAb:Ae
LJZ>RV8;6b-T2^0fU#298#b_ZJEKM)4O;C/=XG@GY]]CL@1OAF:QUH)UQCTd+3LG
52A\.eCXQ61#=71cX6S_]77B&Leg74XAPFRaU5X#-_D3F:eH?D+:@97+(._MTB_#
dZVI7K3WLI]/3bY+65cCZ\1K7c#3+5-/:4aX9F_HIJ-[5^Z.6f.X6=Z&\C^J^2TD
V]c>63AS[[QeXH_SVg5WLFbB@UIW5L_Z_FKNc;S5=)9Ca/f]RE4[T9[9Ne9^OQT:
W46g4DA(:#(BN]=(,BM]G,-T\_1K89RQ;c9\WE:G^f@DVSR:?ebc4?deY/LN@b_;
A,2LVF8()5<1@E<ZY1cHNV/)9>eB5^.[XX-2C/(?^R]B9H(C1+)_A,=^IQdT]+58
;bc27^>5UfRc9GEa^XaRO65^(_YgVI+S[BF^<RdZR#Y:G>L_TJ#gF<JFcJ5HW4>D
efF4WE]e)9S096>]:)ORBNd33\IKO4QSS8XOg77[N&E/[KKK?5SH)Z(JGD.d:B>;
TdDX]/,G<V:1_]b>e^a\[HYD/C@+&1O5O^5LGZN-1PgLQ)PU>R9@OX]H2,.8HMTR
,H4(DSC^3g-NM_a0.15&R2/O+[SV&O/1?Y;Ec)C,KGMTB:>;d;MX;9LBCS[gE.\0
Fd8>SH5X)8,XT=)WEV_D<10aQ>NN@)S4-e(W4O@@=edZf5>DFX6LaLb++L3=?<.>
F>NSN4TO8I+;/\=DYe<G:HTWS^bGKO\Se6>_?5d35F8<-3ZVJfcA[2Bb\V&c8]Q_
BWS.QgJH+O+^(PM=M,e]d8dWdQ,RdKIf3:34?_Pb+U321+c?T>XcG5X]#]E>:4TE
605aM2U(=SK/OQ:P-CZg7H88HMNRAc@JQ^[eFILaU#5;O+dLdL2.YDD_=Z]5@5I(
bOJ?V?L]fUO_,2(/4GWY@;7X6L?^4G)BcTcG/dK(\:&U\S6gdQg0dR<S+c7+6gD\
81DE=ZFF>G5E]L,U.[Q8bPLg<Aa]1D_fD?Yg&2QU8J/:].d9Z+)U^D&W_,.cBH7d
GHPVY&?_3Hf34ND@J^](UfAOc@W8-a[^DB/eP/Q[g\JeEU(-LS1KW@;R,RL(4+,E
04f\MW&W+(c>:F74FS(0A@1aHA]#U-=Q)C^#Rb&FR&g]FWg[8SO<^Q^d?fX1&bP(
:RE[D@O,>V6.7VfX(]1/OY5WJcU_1<16\JLAc;?V1I8Z-TeV@MPP5#(dP&S:W3Fa
._NRMFGQ.[LMPLDYKD),/(4Y8,eDLF67&-V,@JB?d:/,V(4J1.dYeY7+KEUKb1KC
4&2OUKC.F]VYEe^BAL-cLY,.aKKReO4fA5VSf#/Y[2@)NY^d9&ddF:Bb&IRU@A>J
f-bQb(32J2>gEV2E)@e7E-CfF[CHZS.UI17]beS41J#.HB\GA8N[c..f[8Z8OR0U
aECHW[:C4e#U6fM=;3.W13EXbU69KB.<Q0I&W,=5MZ,Qa&cO-,(/(T<Q_8]@dRYc
7gM,?D3?W@[0#F\>4(CB0C1=JSK1>G3a[0:[0IDgV@]]&aIXW)X1]E[TV_H./=d1
/,\Z)aT&@81P,U#U@c.S)@Q?gY6\Z9@044T+R>GI.fcVS<KC]E>(eA4b>M([3<Re
>/6T6MO7:.1I?d:?g23=>(#\@I5[P#W2RgQc.ZLSI?YWOMBK]^FZ5>#0eW6M1S^e
:68E55Vc9>(<IR3S?=<[+&HZUE\a,/UfW<)ZO[fXA?BeS+N>?f9d@U>2.ZMC1gdd
eZ2\\BIR-8YY0dfVGM36ME/baQEI2[?(LQ@[LN.XD4S64V0<P6Gf_LcS9([U4E=;
ESgUL2G&Pe_<@CM#@Zc43ae0\?+-\V7BWRG7QHG(^\_8MHg(4-#1>(?C601YN?3[
;B;bZb/V;)<\RCE<XL^V=d]NZML[([ScJF[\5[N#a5f,5=-IWc)gJOgaV3@@JBC4
C1WS;>(<^E,SfJSY,gSA(9ZI6B)XeEAAcYUO9e243GfEK3Y8Wbd>(Q6c;+A1@b5;
]:M9ACaU@Y(U#6]I.R7L+4RS(<60+OA_+GA(XQQHNS-?0&5ZS^9#.I(;7<4:N>Q8
G9X86\D(PWOI\+MM4.bFJdg&X(b(>GNV:4IG4J/KYA^W(>-@N,OgJ:76OM&f2cfX
FV9<N=30_;]X>YT+[)YYb^30MR.>:b2E0Z9NfK(<D\DD3.H_7]P80M3S^1EH4O84
&3d[RYWJUZ^cS)S-;;AXNV;g\b(5U2Q.,..BUe-g+J(//Mfa9/>B5V:FHM6;DB<\
7a<&cVC@B>DH(8.2E1fHBEa+HQTR[O<C:R@AA9YH/JPaAXW;;76C+gW[X9J4P24.
8^VKZ7Y=0B7C=XF;Hf1NOFK5Md5U.6:gM1AUTJ+f43)#;9A\Y5)<0V@@V4<;GHYV
AaVP&@GT_XA++,+SR#HWM.82_QGBZ^,8O-IT1a.0GS?OEO073=]DAIRaC8QAY=JZ
[GJ6K0#W@gf-e4/7(+DQ4Fc\TICJ7@<3C>@Ud]MRGXR,Qg,P2+24/\ZYA:WG@L2H
?C-4&5d=;M+cVDR)IR?CUeKcOY(W^.K-;J#7ecT],;3=/>)6^G/1fMS>[>K]9.;V
F,U9A+<MNKW7#3bX82M5Tb7H<Q7Rd:7>T2G2S6daH4gM=L?98>/XI_8,2GWa]3JE
eN>aWK8^?W#5XI/2eIBX3CPf<>7J-8[Gb];&3Q/P@H6>SP7d>_4HK,b)QVGZ[a6?
\4_C/LRdaWZfg,.6b3Y[-XaPbHR,=62VO#fY-C9@GRHACW2^?0c3bI#[U?)9B\^-
OOZeWNC##^-LL3O+R&S-:dW5VZOXCISKcH-J&PSbOB]f=(K[A]dYb^P.Df4I;7MH
I32b5UPCP)N-6X#EYAGGI[PB.>b)ENH#^TdU:E6OW#O^CbRe]c?d/EJ#)D(I[R#F
=WP;K\dWc&0]&TP(E;ESP>I72?d]125+.\gfMI?D+^01[cBX?.(a6++beS6Rc3\6
dg-KgYTNA(3Ef^CIN8-O=0;c/-AfHJ351K&ZF+adQFSX<Hc>_76:L5_]Efb;_3d-
cO.R_)16[[dAAO^PUI+g>e2b8/I.^-5GE1AZIR\dFc3N-6N+GG7Be;Gfg1HGD:D2
KA&P/1+M<]#UXL[UfE,F=RDV18G):;4L\:dGdPI>V:N0JT5A1O#F.;NNX,cAT(/P
<R6bFf->&,T+JeMc0O,7/<USNZ@c9YPFge@KG2/Y??2SXCMET7^A2+=)63APFJLZ
+E&<g,V47dJU\Z=?<?VJ/5&W]QH2N4I7ON3/e6AQDV)@+,GY[2E7Q;dP6?5RcJ3:
_WE3T2AE^/2D0R[.X?<V72Idd^ZDcAS(a>OBHYG+=#5f&Y]g&WG(X[-R7-9#KaVR
^LXfHN,(=4B2cWX:bgVW<>>=V;caBd/3R_=YO;)#?]X&5(&G(?Zbd8IZPUIT#>6A
?0(f^;]AL2V/3;g[S&g-(<d.g)\5N(110d2UCHC8])K/PU\Hb&eaN<Q.aZBU3LcX
W44CeAa/=2374,913I0Q=^:9G#(:+XM6eQ2?5Kf:2g2OQ^1;F&@cN#<.e/(&-U#3
<K3,7cBH:30A#<M1E]F8XD,VZ_8Ed#.dC^)Z8P=BE+Y;ag?dUXMXS)+O@DB#e)GS
:E^_5C/-L@YMH1Y?+E8,MSWY:]R<_NS.cKWT./V:D:UH=:5R]>KJAUP+0S1H<C+d
Z,;(BI+a&H2aXMFceQ.bQO@MLLM7Y\c;BP<V[16(Ve4g1Z&35G/=[QATJQ:3.?-J
ZE.aIDPE@4Q&-<D8IW7T6&?V]6dg):feZ+48QXZB&<T<:[AfOU6\U+aS<C^Va(3\
KJV+[3gbC41+.g3T>U\b.CU3]1(cZUDHJA<CcYId>:GK3TX.E4Se[RH&FXTT/D6@
Q-b7)#B.4G=dXF3Yg1Y.C7_&S0^XS9PI0>GU0XaED_/[Xae,C^2:COJACFe+H<K-
dQ[G(8S20W_ET-MQ2S@)_CM<bf3A<+6WVefdYFTbT\-=L=1M115+SfF]0\>,#c;3
;1WPJ,<OTMAg8c;\MQKL&K=dd[&0M6=.=?59fMe41[5/2Tc1,N7gf0>a2cd9F>P#
gCT3@F+A_8S9D\c>X92@LNX8+P^W.OeJaZWQ7Y<<-Ca+FDR8UKICVM9gNHE;BcYg
K11##36Y:]W^Z-ODVBeC?+ICYI,^NMJLaaA>+/-5S[7TcR6F?:7[D@W#9=0B9g/:
0QF\=Me?NO#SB>MF?YQaR@&M+6.Mb^]5?2Q;eR[cM]Sge\&BXOZZ4.&\0.ZbOEDT
;IS[9T)_716:P6^)Z(f^#bAL]Ef<XD+R5Kb4>?c,)E#C1MJNN<OI,c3gL9eb8Y;P
)1L_;>)1JaI:.&L7AZ(M4@U_\IQ9#g<5C.Tfg.>fDM?BGVV.\4^,^#=UV>Q3^4]Q
4GO5HKE:TL<BCY)6gMcS9)[MYYb_)PT8G6P6UU0>Y@BYD]._?_>-?<-ACOP4N_ER
VffMg+)gO:6K7,QXFfVgd46MQUSa7,?5gA/?6.,#1F_CQeHMd&)IGL7,N]gb5TB3
Rc[2P6.;DR6C[<YB&8?XIF^X6EQJ/@:418[RKbg<#;]?7PIB#dK^g)/[LC7<0fYN
)PWQN3@<3WKL;WM;QKWb<&3,f&BO^F]dVU-d0Q@;+VV@YRXKRA)YSXB:?Y.HaR_E
cfUe;82c\QI,G(eH/cJ5Z23,fX)=cJVKggUAWH1#?4):QDDfY_b+1d244NY7TEI@
,<c)eXFg6[QcB@N&LDBOL-#.NKB.UOeW6OJ^3Mc<_WU97-8f:a#B3>9T6,17\&-3
GbEa]D5PEC2@EM<R?7g=7&1(8<cJI)0XN&2[bM\U34BV@P/#/M;RRC=2SNL4#F9E
CXCd)Yg1J:#@A/_FY5B_e=M0RC4L]@.dCgIVTa;PHcHf>/UHEY:+.U\PFJB0dY1X
;6H.?(f:MI?CW\17E<X<(>[eM(cK7bCg0,@&97-0/bS4>)8M&INJW?^JPL0ZXFb_
NeQ.^W?=-fE0,a>g?FE>-V;@N1]0<b+Q9SH+WJ,V403QaU#[APO/?>ND/5<IEK&(
<9Q&#;dN@1P04f2V1O[f?V,e\P3=ND[WV&2W5B701dJ[I::[OLeJ5(f,HTJ;LH<S
d^8&0WIQ1P_Q654UM-CRDW9]4R/6&Id;@6EUZ.NSbf6J7.E7g9^B@)IN;8^/_Q3V
4b+IO0Afe2^@Y,LEf\#B>g7E0_)1XK0A1R;Z>&(-#V]ESdL8CI:PZ-T90Q:3(E,X
I0Q>eP_GL8W<2\[;;3gV\A5MgPVI>4WD9$
`endprotected
endmodule