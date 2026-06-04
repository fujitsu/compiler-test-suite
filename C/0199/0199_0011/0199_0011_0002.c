#include <stdlib.h>
extern signed int v1 (unsigned int, unsigned short, signed int, unsigned int);
extern signed int (*v2) (unsigned int, unsigned short, signed int, unsigned int);
extern signed int v3 (signed char, unsigned int, unsigned short);
extern signed int (*v4) (signed char, unsigned int, unsigned short);
unsigned char v5 (signed short, signed short, signed int, unsigned short);
unsigned char (*v6) (signed short, signed short, signed int, unsigned short) = v5;
extern unsigned char v7 (signed char, signed short, signed int);
extern unsigned char (*v8) (signed char, signed short, signed int);
extern unsigned int v9 (signed char, signed int);
extern unsigned int (*v10) (signed char, signed int);
signed short v11 (signed short, signed char, signed char, unsigned int);
signed short (*v12) (signed short, signed char, signed char, unsigned int) = v11;
signed char v13 (void);
signed char (*v14) (void) = v13;
signed int v15 (signed int, signed short, unsigned char);
signed int (*v16) (signed int, signed short, unsigned char) = v15;
extern unsigned short v17 (unsigned int, unsigned short);
extern unsigned short (*v18) (unsigned int, unsigned short);
unsigned short v19 (signed int, unsigned char);
unsigned short (*v20) (signed int, unsigned char) = v19;
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern unsigned int v23 (unsigned int, signed char, unsigned int, signed short);
extern unsigned int (*v24) (unsigned int, signed char, unsigned int, signed short);
extern unsigned int v25 (void);
extern unsigned int (*v26) (void);
extern signed char v27 (signed short, signed int);
extern signed char (*v28) (signed short, signed int);
extern unsigned int v29 (unsigned int, signed char);
extern unsigned int (*v30) (unsigned int, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v81 = 7;
unsigned int v80 = 0U;
signed char v79 = -1;

unsigned short v19 (signed int v82, unsigned char v83)
{
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
unsigned char v86 = 7;
unsigned int v85 = 7U;
signed short v84 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v15 (signed int v87, signed short v88, unsigned char v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed char v92 = -4;
unsigned char v91 = 3;
signed int v90 = -3;
trace++;
switch (trace)
{
case 10: 
return v87;
default: abort ();
}
}
}
}

signed char v13 (void)
{
{
for (;;) {
signed short v95 = -2;
unsigned char v94 = 2;
signed short v93 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (signed short v96, signed char v97, signed char v98, unsigned int v99)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
history[history_index++] = (int)v99;
{
for (;;) {
signed char v102 = 0;
unsigned int v101 = 0U;
signed char v100 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (signed short v103, signed short v104, signed int v105, unsigned short v106)
{
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
history[history_index++] = (int)v105;
history[history_index++] = (int)v106;
{
for (;;) {
unsigned char v109 = 1;
unsigned int v108 = 4U;
unsigned short v107 = 0;
trace++;
switch (trace)
{
case 6: 
{
signed char v110;
signed int v111;
unsigned int v112;
v110 = -3 - 3;
v111 = 2 - -1;
v112 = v9 (v110, v111);
history[history_index++] = (int)v112;
}
break;
case 8: 
{
signed char v113;
signed int v114;
unsigned int v115;
v113 = 2 + 2;
v114 = v105 - 2;
v115 = v9 (v113, v114);
history[history_index++] = (int)v115;
}
break;
case 12: 
return v109;
default: abort ();
}
}
}
}
