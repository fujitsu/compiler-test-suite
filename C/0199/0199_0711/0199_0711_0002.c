#include <stdlib.h>
signed char v1 (signed short, unsigned char, signed char);
signed char (*v2) (signed short, unsigned char, signed char) = v1;
unsigned char v3 (signed int, unsigned char);
unsigned char (*v4) (signed int, unsigned char) = v3;
unsigned char v5 (unsigned short, signed short, signed char);
unsigned char (*v6) (unsigned short, signed short, signed char) = v5;
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern void v11 (signed int, signed short, unsigned short);
extern void (*v12) (signed int, signed short, unsigned short);
extern signed short v13 (void);
extern signed short (*v14) (void);
signed short v15 (signed char, signed short, unsigned char);
signed short (*v16) (signed char, signed short, unsigned char) = v15;
extern signed short v19 (unsigned short, signed char, signed char, unsigned int);
extern signed short (*v20) (unsigned short, signed char, signed char, unsigned int);
signed short v21 (signed char, signed int, unsigned char);
signed short (*v22) (signed char, signed int, unsigned char) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern void v25 (signed int);
extern void (*v26) (signed int);
extern signed short v27 (unsigned int);
extern signed short (*v28) (unsigned int);
extern signed char v29 (unsigned short, unsigned char, signed int);
extern signed char (*v30) (unsigned short, unsigned char, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v80 = 3;
unsigned short v79 = 0;
signed short v78 = -1;

signed short v21 (signed char v81, signed int v82, unsigned char v83)
{
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
history[history_index++] = (int)v83;
{
for (;;) {
signed short v86 = -1;
signed char v85 = 3;
signed int v84 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v15 (signed char v87, signed short v88, unsigned char v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
unsigned short v92 = 1;
signed int v91 = -4;
unsigned short v90 = 6;
trace++;
switch (trace)
{
case 6: 
{
unsigned int v93;
signed short v94;
v93 = 3U - 6U;
v94 = v27 (v93);
history[history_index++] = (int)v94;
}
break;
case 14: 
return 0;
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v95, signed short v96, signed char v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
signed char v100 = -4;
unsigned short v99 = 6;
signed short v98 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (signed int v101, unsigned char v102)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
{
for (;;) {
signed char v105 = 2;
signed char v104 = 2;
unsigned int v103 = 6U;
trace++;
switch (trace)
{
case 2: 
return v102;
default: abort ();
}
}
}
}

signed char v1 (signed short v106, unsigned char v107, signed char v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned short v111 = 5;
unsigned char v110 = 7;
unsigned char v109 = 7;
trace++;
switch (trace)
{
case 0: 
{
unsigned char v112;
v112 = v23 ();
history[history_index++] = (int)v112;
}
break;
case 4: 
{
signed int v113;
signed short v114;
unsigned short v115;
v113 = 3 + -1;
v114 = v106 - v106;
v115 = v111 - 2;
v11 (v113, v114, v115);
}
break;
case 16: 
return 3;
default: abort ();
}
}
}
}
