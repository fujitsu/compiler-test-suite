#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <limits.h>
#include"004.h"

struct cr_struct {
	int int_var;
	char char_var;
};

union cr_union{
	int int_var1;
	int int_var2;
};

void test001() {
	const volatile unsigned short short_var = 1;
	char char_var = -2;

	switch(short_var + char_var){
		case -1 ... 10 + 10:
			sichck(1, -1, short_var + char_var, "case range No.1 NG\n");
			break;
		default:
			confirm(1, "case range No.1 NG\n");
	}
}

void test002(){
	const unsigned long long int llint_var = -1;

	switch(llint_var + 1){
		case -10 + 1 ... -1:
			confirm(2, "case range No.2 NG\n");
		case 0:
			llichck(2, 0, llint_var + 1, "case range No.2 NG\n");
	}
}

void test003() {
	union cr_union union_var;
	union_var.int_var1 = -1;
	long long_var = 2;

	switch(union_var.int_var1 + long_var){
		case 0 ... 10 - 1:
			lichck(3, 1, union_var.int_var1 + long_var, "case range No.3 NG\n");
			break;
		case 10:
			confirm(3, "case range No.3 NG\n");
	}
}

void test004() {
	volatile unsigned long long_var = 1;

	switch(long_var){
		case 'a'/2 ... 'c'/2:
			confirm(4, "case range No.4 NG0\n");
			break;
		case 1 :
			lichck(4, 1, long_var, "case range No.4 NG1\n");
			break;
		case 2 :
			confirm(4, "case range No.4 NG2\n");
			break;
		case 3 :
			confirm(4, "case range No.4 NG3\n");
			break;
		case 4 :
			confirm(4, "case range No.4 NG4\n");
			break;
		case 5 :
			confirm(4, "case range No.4 NG5\n");
			break;
		case 6 :
			confirm(4, "case range No.4 NG6\n");
			break;
		case 7 :
			confirm(4, "case range No.4 NG7n");
			break;
		case 8 :
			confirm(4, "case range No.4 NG8\n");
			break;
		case 9 :
			confirm(4, "case range No.4 NG9\n");
			break;
		case 10 :
			confirm(4, "case range No.4 NG10\n");
			break;
		case 11 :
			confirm(4, "case range No.4 NG10\n");
			break;
		case 12 :
			confirm(4, "case range No.4 NG12\n");
			break;
		case 13 :
			confirm(4, "case range No.4 NG13\n");
			break;
		case 14 :
			confirm(4, "case range No.4 NG14\n");
			break;
		case 15 :
			confirm(4, "case range No.4 NG15\n");
			break;
		case 16 :
			confirm(4, "case range No.4 NG16\n");
			break;
		case 17 :
			confirm(4, "case range No.4 NG17n");
			break;
		case 18 :
			confirm(4, "case range No.4 NG18\n");
			break;
		case 19 :
			confirm(4, "case range No.4 NG19\n");
			break;
		case 20 :
			confirm(4, "case range No.4 NG20\n");
			break;
		case 21 :
			confirm(4, "case range No.4 NG21\n");
			break;
		case 22 :
			confirm(4, "case range No.4 NG22\n");
			break;
		case 23 :
			confirm(4, "case range No.4 NG23\n");
			break;
		case 24 :
			confirm(4, "case range No.4 NG24\n");
			break;
		case 25 :
			confirm(4, "case range No.4 NG25\n");
			break;
		case 26 :
			confirm(4, "case range No.4 NG26\n");
			break;
		case 27 :
			confirm(4, "case range No.4 NG27n");
			break;
		case 28 :
			confirm(4, "case range No.4 NG28\n");
			break;
		case 29 :
			confirm(4, "case range No.4 NG29\n");
			break;
		case 30 :
			confirm(4, "case range No.4 NG30\n");
			break;
		case 31 :
			confirm(4, "case range No.4 NG31\n");
			break;
		case 32 :
			confirm(4, "case range No.4 NG32\n");
			break;
		case 33 :
			confirm(4, "case range No.4 NG33\n");
			break;
		case 34 :
			confirm(4, "case range No.4 NG34\n");
			break;
		case 35 :
			confirm(4, "case range No.4 NG35\n");
			break;
		case 36 :
			confirm(4, "case range No.4 NG36\n");
			break;
		case 37 :
			confirm(4, "case range No.4 NG37n");
			break;
		case 38 :
			confirm(4, "case range No.4 NG38\n");
			break;
		case 39 :
			confirm(4, "case range No.4 NG39\n");
			break;
		case 40 :
			confirm(4, "case range No.4 NG40\n");
			break;
		case 41 :
			confirm(4, "case range No.4 NG41\n");
			break;
		case 42 :
			confirm(4, "case range No.4 NG42\n");
			break;
		case 43 :
			confirm(4, "case range No.4 NG43\n");
			break;
		case 44 :
			confirm(4, "case range No.4 NG44\n");
			break;
		case 45 :
			confirm(4, "case range No.4 NG45\n");
			break;
		case 46 :
			confirm(4, "case range No.4 NG46\n");
			break;
		case 47 :
			confirm(4, "case range No.4 NG47n");
			break;
		case 50 :
			confirm(4, "case range No.4 NG50\n");
			break;
		case 51 :
			confirm(4, "case range No.4 NG51\n");
			break;
		case 52 :
			confirm(4, "case range No.4 NG52\n");
			break;
		case 53 :
			confirm(4, "case range No.4 NG53\n");
			break;
		case 54 :
			confirm(4, "case range No.4 NG54\n");
			break;
		case 55 :
			confirm(4, "case range No.4 NG55\n");
			break;
		case 56 :
			confirm(4, "case range No.4 NG56\n");
			break;
		case 57 :
			confirm(4, "case range No.4 NG57\n");
			break;
		case 58 :
			confirm(4, "case range No.4 NG58\n");
			break;
		case 59 :
			confirm(4, "case range No.4 NG59\n");
			break;
		case 60 :
			confirm(4, "case range No.4 NG60\n");
			break;
		case 61 :
			confirm(4, "case range No.4 NG61\n");
			break;
		case 62 :
			confirm(4, "case range No.4 NG62\n");
			break;
		case 63 :
			confirm(4, "case range No.4 NG63\n");
			break;
		case 64 :
			confirm(4, "case range No.4 NG64\n");
			break;
		case 65 :
			confirm(4, "case range No.4 NG65\n");
			break;
		case 66 :
			confirm(4, "case range No.4 NG66\n");
			break;
		case 67 :
			confirm(4, "case range No.4 NG67\n");
			break;
		case 68 :
			confirm(4, "case range No.4 NG68\n");
			break;
		case 69 :
			confirm(4, "case range No.4 NG69\n");
			break;
		case 70 :
			confirm(4, "case range No.4 NG70\n");
			break;
		case 71 :
			confirm(4, "case range No.4 NG71\n");
			break;
		case 72 :
			confirm(4, "case range No.4 NG72\n");
			break;
		case 73 :
			confirm(4, "case range No.4 NG73\n");
			break;
		case 74 :
			confirm(4, "case range No.4 NG74\n");
			break;
		case 75 :
			confirm(4, "case range No.4 NG75\n");
			break;
		case 76 :
			confirm(4, "case range No.4 NG76\n");
			break;
		case 77 :
			confirm(4, "case range No.4 NG77\n");
			break;
		case 78 :
			confirm(4, "case range No.4 NG78\n");
			break;
		case 79 :
			confirm(4, "case range No.4 NG79\n");
			break;
		case 80 :
			confirm(4, "case range No.4 NG80\n");
			break;
		case 81 :
			confirm(4, "case range No.4 NG81\n");
			break;
		case 82 :
			confirm(4, "case range No.4 NG82\n");
			break;
		case 83 :
			confirm(4, "case range No.4 NG83\n");
			break;
		case 84 :
			confirm(4, "case range No.4 NG84\n");
			break;
		case 85 :
			confirm(4, "case range No.4 NG85\n");
			break;
		case 86 :
			confirm(4, "case range No.4 NG86\n");
			break;
		case 87 :
			confirm(4, "case range No.4 NG87\n");
			break;
		case 88 :
			confirm(4, "case range No.4 NG88\n");
			break;
		case 89 :
			confirm(4, "case range No.4 NG89\n");
			break;
		case 90 :
			confirm(4, "case range No.4 NG90\n");
			break;
		case 91 :
			confirm(4, "case range No.4 NG91\n");
			break;
		case 92 :
			confirm(4, "case range No.4 NG92\n");
			break;
		case 93 :
			confirm(4, "case range No.4 NG93\n");
			break;
		case 94 :
			confirm(4, "case range No.4 NG94\n");
			break;
		case 95 :
			confirm(4, "case range No.4 NG95\n");
			break;
		case 96 :
			confirm(4, "case range No.4 NG96\n");
			break;
		case 97 :
			confirm(4, "case range No.4 NG97\n");
			break;
		case 98 :
			confirm(4, "case range No.4 NG98\n");
			break;
		case 99 :
			confirm(4, "case range No.4 NG99\n");
			break;
		case 100 :
			confirm(4, "case range No.4 NG100\n");
			break;
		case 101 :
			confirm(4, "case range No.4 NG101\n");
			break;
		case 102 :
			confirm(4, "case range No.4 NG102\n");
			break;
		case 103 :
			confirm(4, "case range No.4 NG103\n");
			break;
		case 104 :
			confirm(4, "case range No.4 NG104\n");
			break;
		case 105 :
			confirm(4, "case range No.4 NG105\n");
			break;
		case 106 :
			confirm(4, "case range No.4 NG106\n");
			break;
		case 107 :
			confirm(4, "case range No.4 NG107\n");
			break;
		case 108 :
			confirm(4, "case range No.4 NG108\n");
			break;
		case 109 :
			confirm(4, "case range No.4 NG109\n");
			break;
		case 110 :
			confirm(4, "case range No.4 NG110\n");
			break;
		case 111 :
			confirm(4, "case range No.4 NG111\n");
			break;
		case 112 :
			confirm(4, "case range No.4 NG112\n");
			break;
		case 113 :
			confirm(4, "case range No.4 NG113\n");
			break;
		case 114 :
			confirm(4, "case range No.4 NG114\n");
			break;
		case 115 :
			confirm(4, "case range No.4 NG115\n");
			break;
		case 116 :
			confirm(4, "case range No.4 NG116\n");
			break;
		case 117 :
			confirm(4, "case range No.4 NG117\n");
			break;
		case 118 :
			confirm(4, "case range No.4 NG118\n");
			break;
		case 119 :
			confirm(4, "case range No.4 NG119\n");
			break;
		case 120 :
			confirm(4, "case range No.4 NG120\n");
			break;
		case 121 :
			confirm(4, "case range No.4 NG121\n");
			break;
		case 122 :
			confirm(4, "case range No.4 NG122\n");
			break;
		case 123 :
			confirm(4, "case range No.4 NG123\n");
			break;
		case 124 :
			confirm(4, "case range No.4 NG124\n");
			break;
		case 125 :
			confirm(4, "case range No.4 NG125\n");
			break;
		case 126 :
			confirm(4, "case range No.4 NG126\n");
			break;
		case 127 :
			confirm(4, "case range No.4 NG127\n");
			break;
		case 128 :
			confirm(4, "case range No.4 NG128\n");
			break;
		case 129 :
			confirm(4, "case range No.4 NG129\n");
			break;
		case 130 :
			confirm(4, "case range No.4 NG130\n");
			break;
		case 131 :
			confirm(4, "case range No.4 NG131\n");
			break;
		case 132 :
			confirm(4, "case range No.4 NG132\n");
			break;
		case 133 :
			confirm(4, "case range No.4 NG133\n");
			break;
		case 134 :
			confirm(4, "case range No.4 NG134\n");
			break;
		case 135 :
			confirm(4, "case range No.4 NG135\n");
			break;
		case 136 :
			confirm(4, "case range No.4 NG136\n");
			break;
		case 137 :
			confirm(4, "case range No.4 NG137\n");
			break;
		case 138 :
			confirm(4, "case range No.4 NG138\n");
			break;
		case 139 :
			confirm(4, "case range No.4 NG139\n");
			break;
		case 140 :
			confirm(4, "case range No.4 NG140\n");
			break;
		case 141 :
			confirm(4, "case range No.4 NG141\n");
			break;
		case 142 :
			confirm(4, "case range No.4 NG142\n");
			break;
		case 143 :
			confirm(4, "case range No.4 NG143\n");
			break;
		case 144 :
			confirm(4, "case range No.4 NG144\n");
			break;
		case 145 :
			confirm(4, "case range No.4 NG145\n");
			break;
		case 146 :
			confirm(4, "case range No.4 NG146\n");
			break;
		case 147 :
			confirm(4, "case range No.4 NG147\n");
			break;
		case 148 :
			confirm(4, "case range No.4 NG148\n");
			break;
		case 149 :
			confirm(4, "case range No.4 NG149\n");
			break;
		case 150 :
			confirm(4, "case range No.4 NG150\n");
			break;
		case 151 :
			confirm(4, "case range No.4 NG151\n");
			break;
		case 152 :
			confirm(4, "case range No.4 NG152\n");
			break;
		case 153 :
			confirm(4, "case range No.4 NG153\n");
			break;
		case 154 :
			confirm(4, "case range No.4 NG154\n");
			break;
		case 155 :
			confirm(4, "case range No.4 NG155\n");
			break;
		case 156 :
			confirm(4, "case range No.4 NG156\n");
			break;
		case 157 :
			confirm(4, "case range No.4 NG157\n");
			break;
		case 158 :
			confirm(4, "case range No.4 NG158\n");
			break;
		case 159 :
			confirm(4, "case range No.4 NG159\n");
			break;
		case 160 :
			confirm(4, "case range No.4 NG160\n");
			break;
		case 161 :
			confirm(4, "case range No.4 NG161\n");
			break;
		case 162 :
			confirm(4, "case range No.4 NG162\n");
			break;
		case 163 :
			confirm(4, "case range No.4 NG163\n");
			break;
		case 164 :
			confirm(4, "case range No.4 NG164\n");
			break;
		case 165 :
			confirm(4, "case range No.4 NG165\n");
			break;
		case 166 :
			confirm(4, "case range No.4 NG166\n");
			break;
		case 167 :
			confirm(4, "case range No.4 NG167\n");
			break;
		case 168 :
			confirm(4, "case range No.4 NG168\n");
			break;
		case 169 :
			confirm(4, "case range No.4 NG169\n");
			break;
		case 170 :
			confirm(4, "case range No.4 NG170\n");
			break;
		case 171 :
			confirm(4, "case range No.4 NG171\n");
			break;
		case 172 :
			confirm(4, "case range No.4 NG172\n");
			break;
		case 173 :
			confirm(4, "case range No.4 NG173\n");
			break;
		case 174 :
			confirm(4, "case range No.4 NG174\n");
			break;
		case 175 :
			confirm(4, "case range No.4 NG175\n");
			break;
		case 176 :
			confirm(4, "case range No.4 NG176\n");
			break;
		case 177 :
			confirm(4, "case range No.4 NG177\n");
			break;
		case 178 :
			confirm(4, "case range No.4 NG178\n");
			break;
		case 179 :
			confirm(4, "case range No.4 NG179\n");
			break;
		case 180 :
			confirm(4, "case range No.4 NG180\n");
			break;
		case 181 :
			confirm(4, "case range No.4 NG181\n");
			break;
		case 182 :
			confirm(4, "case range No.4 NG182\n");
			break;
		case 183 :
			confirm(4, "case range No.4 NG183\n");
			break;
		case 184 :
			confirm(4, "case range No.4 NG184\n");
			break;
		case 185 :
			confirm(4, "case range No.4 NG185\n");
			break;
		case 186 :
			confirm(4, "case range No.4 NG186\n");
			break;
		case 187 :
			confirm(4, "case range No.4 NG187\n");
			break;
		case 188 :
			confirm(4, "case range No.4 NG188\n");
			break;
		case 189 :
			confirm(4, "case range No.4 NG189\n");
			break;
		case 190 :
			confirm(4, "case range No.4 NG190\n");
			break;
		case 191 :
			confirm(4, "case range No.4 NG191\n");
			break;
		case 192 :
			confirm(4, "case range No.4 NG192\n");
			break;
		case 193 :
			confirm(4, "case range No.4 NG193\n");
			break;
		case 194 :
			confirm(4, "case range No.4 NG194\n");
			break;
		case 195 :
			confirm(4, "case range No.4 NG195\n");
			break;
		case 196 :
			confirm(4, "case range No.4 NG196\n");
			break;
		case 197 :
			confirm(4, "case range No.4 NG197\n");
			break;
		case 198 :
			confirm(4, "case range No.4 NG198\n");
			break;
		case 199 :
			confirm(4, "case range No.4 NG199\n");
			break;
		case 200 :
			confirm(4, "case range No.4 NG200\n");
			break;
		case 201 :
			confirm(4, "case range No.4 NG201\n");
			break;
		case 202 :
			confirm(4, "case range No.4 NG202\n");
			break;
		case 203 :
			confirm(4, "case range No.4 NG203\n");
			break;
		case 204 :
			confirm(4, "case range No.4 NG204\n");
			break;
		case 205 :
			confirm(4, "case range No.4 NG205\n");
			break;
		case 206 :
			confirm(4, "case range No.4 NG206\n");
			break;
		case 207 :
			confirm(4, "case range No.4 NG207\n");
			break;
		case 208 :
			confirm(4, "case range No.4 NG208\n");
			break;
		case 209 :
			confirm(4, "case range No.4 NG209\n");
			break;
		case 210 :
			confirm(4, "case range No.4 NG210\n");
			break;
		case 211 :
			confirm(4, "case range No.4 NG211\n");
			break;
		case 212 :
			confirm(4, "case range No.4 NG212\n");
			break;
		case 213 :
			confirm(4, "case range No.4 NG213\n");
			break;
		case 214 :
			confirm(4, "case range No.4 NG214\n");
			break;
		case 215 :
			confirm(4, "case range No.4 NG215\n");
			break;
		case 216 :
			confirm(4, "case range No.4 NG216\n");
			break;
		case 217 :
			confirm(4, "case range No.4 NG217\n");
			break;
		case 218 :
			confirm(4, "case range No.4 NG218\n");
			break;
		case 219 :
			confirm(4, "case range No.4 NG219\n");
			break;
		case 220 :
			confirm(4, "case range No.4 NG220\n");
			break;
		case 221 :
			confirm(4, "case range No.4 NG221\n");
			break;
		case 222 :
			confirm(4, "case range No.4 NG222\n");
			break;
		case 223 :
			confirm(4, "case range No.4 NG223\n");
			break;
		case 224 :
			confirm(4, "case range No.4 NG224\n");
			break;
		case 225 :
			confirm(4, "case range No.4 NG225\n");
			break;
		case 226 :
			confirm(4, "case range No.4 NG226\n");
			break;
		case 227 :
			confirm(4, "case range No.4 NG227\n");
			break;
		case 228 :
			confirm(4, "case range No.4 NG228\n");
			break;
		case 229 :
			confirm(4, "case range No.4 NG229\n");
			break;
		case 230 :
			confirm(4, "case range No.4 NG230\n");
			break;
		case 231 :
			confirm(4, "case range No.4 NG231\n");
			break;
		case 232 :
			confirm(4, "case range No.4 NG232\n");
			break;
		case 233 :
			confirm(4, "case range No.4 NG233\n");
			break;
		case 234 :
			confirm(4, "case range No.4 NG234\n");
			break;
		case 235 :
			confirm(4, "case range No.4 NG235\n");
			break;
		case 236 :
			confirm(4, "case range No.4 NG236\n");
			break;
		case 237 :
			confirm(4, "case range No.4 NG237\n");
			break;
		case 238 :
			confirm(4, "case range No.4 NG238\n");
			break;
		case 239 :
			confirm(4, "case range No.4 NG239\n");
			break;
		case 240 :
			confirm(4, "case range No.4 NG240\n");
			break;
		case 241 :
			confirm(4, "case range No.4 NG241\n");
			break;
		case 242 :
			confirm(4, "case range No.4 NG242\n");
			break;
		case 243 :
			confirm(4, "case range No.4 NG243\n");
			break;
		case 244 :
			confirm(4, "case range No.4 NG244\n");
			break;
		case 245 :
			confirm(4, "case range No.4 NG245\n");
			break;
		case 246 :
			confirm(4, "case range No.4 NG246\n");
			break;
		case 247 :
			confirm(4, "case range No.4 NG247\n");
			break;
		case 248 :
			confirm(4, "case range No.4 NG248\n");
			break;
		case 249 :
			confirm(4, "case range No.4 NG249\n");
			break;
		case 250 :
			confirm(4, "case range No.4 NG250\n");
			break;
		case 251 :
			confirm(4, "case range No.4 NG251\n");
			break;
		case 252 :
			confirm(4, "case range No.4 NG252\n");
			break;
		case 253 :
			confirm(4, "case range No.4 NG253\n");
			break;
		case 254 :
			confirm(4, "case range No.4 NG254\n");
			break;
		case 255 :
			confirm(4, "case range No.4 NG255\n");
			break;
		case 256 :
			confirm(4, "case range No.4 NG256\n");
			break;
		case 257 :
			confirm(4, "case range No.4 NG257\n");
			break;
		case 258 :
			confirm(4, "case range No.4 NG258\n");
			break;
	}
}

void test005() {
	const volatile _Bool bool_var = true;

	switch(bool_var){
		case true ... true:
			ichck(5, true, bool_var, "case range No.5 NG\n");
			break;
		case false:
			confirm(5, "case range No.5 NG\n");
	}
}

void test006() {
	const int int_var = 10;

	switch(int_var * 5){
		case -10 ... 10:
			confirm(6, "case range No.6 NG\n");
			break;
		case 11 ... 100:
			lichck(6, 50, int_var * 5, "case range No.6 NG\n");
			break;
		default:
			confirm(6, "case range No.6 NG\n");
	}
}

void test007(int n) {
	volatile int array[n];
	array[0] = 1;

	switch(array[0] - 1){
		case 1:
			confirm(7, "case range No.7 NG\n");
			break;
		case 2:
			confirm(7, "case range No.7 NG\n");
			break;
		default:
			ichck(7, 0, array[0] - 1, "case range No.7 NG\n");
	}
}

void test008() {
	short short_var = 1;

	switch(short_var){
		case -10  ... -1/2:
			confirm(8, "case range No.8 NG\n");
			break;
		default:
			sichck(8, 1, short_var, "case range No.8 NG\n");
	}
}

void test009() {
	volatile unsigned long long int llint_var = 'a';

	switch(llint_var){
		case 0 - 1:
			confirm(9, "case range No.9 NG\n");
			break;
		default:
			llichck(9, 'a', llint_var, "case range No.9 NG\n");
	}
}

void test011() {
	volatile char char_var = 100;

	switch(char_var / 100){
		case -10 ... 10 * 10:
			cchck(11, 1, char_var / 100, "case range No.11 NG\n");
			break;
		case 101:
			confirm(11, "case range No.11 NG\n");
	}
}

void test012() {
	volatile short short_var = 11;
	int int_var = 10;

	switch(short_var - int_var){
		case 1:
			ichck(12, 1, short_var - int_var, "case range No.12 NG\n");
			break;
		default:
			confirm(12, "case range No.12 NG\n");
	}
}

void test014() {
	const unsigned char char_var = 0;

	switch(char_var){
		case UCHAR_MAX:
			confirm(14, "case range No.14 NG\n");
			break;
		default:
			cchck(14, 0, char_var, "case range No.14 NG\n");
	}
}

void test015() {
	volatile unsigned short short_var = 'a';

	switch(short_var + 1){
		case 'b':
			cchck(15, 'b', short_var + 1, "case range No.15 NG\n");
			break;
	}
}

void test016() {
	volatile struct cr_struct struct_var;
	struct_var.int_var = 1;

	switch(struct_var.int_var * -1){
		case 10 / -10:
			ichck(16, -1, struct_var.int_var * -1, "case range No.16 NG\n");
			break;
		case 1:
			confirm(16, "case range No.16 NG\n");
			break;
		default:
			confirm(16, "case range No.16 NG\n");
	}
}

void test017() {
	signed char char_var = 99;

	switch(char_var / 99){
		case 0 + 1:
			ichck(17, 1, char_var / 99, "case range No.17 NG\n");
			break;
		case 99:
			confirm(17, "case range No.17 NG\n");
			break;
		default:
			confirm(17, "case range No.17 NG\n");
	}
}

void test018() {
	const volatile unsigned long long_var = 0;

	switch(long_var + 1){
		case 0 ... 10 * 3:
			lichck(18, 1, long_var + 1, "case range No.18 NG\n");
			break;
		default:
			confirm(18, "case range No.18 NG\n");
	}
}

void test019() {
	int int_var = 0;

	switch(int_var * 100){
		case 1 * -1:
			confirm(19, "case range No.19 NG\n");
			break;
		default:
			ichck(19, 0, int_var * 100, "case range No.19 NG\n");
	}
}

void test020() {
	const long long_var = 1;

	switch(long_var * -1){
		case 0 ... 10/2:
			confirm(20, "case range No.20 NG\n");
			break;
		case 10/2 + 1 ... 10:
			confirm(20, "case range No.20 NG\n");
			break;
		default:
			lichck(20, (long)-1, long_var * -1, "case range No.20 NG\n");
	}
}

void test021() {
	const int int_var = 10;

	switch(int_var - 9){
		case 'a' ... 'c' - 1:
			confirm(21, "case range No.21 NG\n");
			break;
		case 'd' ... 'z':
			confirm(21, "case range No.21 NG\n");
			break;
		default:
			ichck(21, 1, int_var - 9, "case range No.21 NG\n");
	}
}

void test023() {
	volatile union cr_union union_var;
	union_var.int_var1 = 'a';

	switch(union_var.int_var1){
		case CHAR_MIN:
			confirm(23, "case range No.23 NG\n");
			break;
		case CHAR_MAX:
			confirm(23, "case range No.23 NG\n");
			break;
		default:
			ichck(23, 'a', union_var.int_var1, "case range No.23 NG\n");
	}
}

void test024(int n) {
	int array[n];
	array[0] = -10;

	switch(array[0] + 9){
		case INT_MAX:
			confirm(24, "case range No.24 NG\n");
			break;
		case -1:
			ichck(24, -1, array[0] + 9, "case range No.24 NG\n");
			break;
		default:
			confirm(24, "case range No.24 NG\n");
	}
}

void test025() {
	const volatile unsigned int int_var = 25;

	switch(int_var / 25){
		case 1 ... 1:
			ichck(25, 1, int_var / 25, "case range No.25 NG\n");
	}
}

void test026(){
	const volatile enum eLang { FORTRAN = 1, C, CPLUS, Java} enum_var;
	int int_var = FORTRAN;

	switch(int_var){
		case FORTRAN - 1:
			confirm(26, "case range No.26 NG\n");
		default:
			ichck(26, 1, int_var, "case range No.26 NG\n");
	}
}

int main(){
	int int_array[10] ;
	int_array[0] = INT_MIN;

	header("GNU case","Gnu case ranges test");
	test001();
	test002();
	test003();
	test004();
	test005();
	test006();
	test007(10);
	test008();
	test009();
	test011();
	test012();
	test014();
	test015();
	test016();
	test017();
	test018();
	test019();
	test020();
	test021();
	test023();
	test024(10);
	test025();
	test026();
	header("GNU case","Gnu case ranges test");

}
