#include <stdlib.h>
extern signed short v1 (signed short, unsigned int, signed int);
extern signed short (*v2) (signed short, unsigned int, signed int);
unsigned int v3 (void);
unsigned int (*v4) (void) = v3;
extern signed char v5 (void);
extern signed char (*v6) (void);
extern signed short v7 (void);
extern signed short (*v8) (void);
extern signed short v9 (unsigned short, unsigned char, signed int);
extern signed short (*v10) (unsigned short, unsigned char, signed int);
extern signed int v11 (unsigned short, signed short, signed char);
extern signed int (*v12) (unsigned short, signed short, signed char);
signed char v13 (signed char, signed char, signed short, unsigned char);
signed char (*v14) (signed char, signed char, signed short, unsigned char) = v13;
extern unsigned int v15 (unsigned short, signed int, unsigned char);
extern unsigned int (*v16) (unsigned short, signed int, unsigned char);
unsigned int v17 (unsigned short, signed char, unsigned short);
unsigned int (*v18) (unsigned short, signed char, unsigned short) = v17;
extern unsigned int v19 (signed short, unsigned short);
extern unsigned int (*v20) (signed short, unsigned short);
extern unsigned int v23 (signed int, unsigned int, unsigned int, signed short);
extern unsigned int (*v24) (signed int, unsigned int, unsigned int, signed short);
extern unsigned short v25 (signed short);
extern unsigned short (*v26) (signed short);
extern unsigned short v27 (void);
extern unsigned short (*v28) (void);
signed int v29 (void);
signed int (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed char v91 = 1;
signed int v90 = -3;
unsigned int v89 = 5U;

signed int v29 (void)
{
{
for (;;) {
signed short v94 = -3;
unsigned char v93 = 5;
unsigned char v92 = 2;
trace++;
switch (trace)
{
case 7: 
return 3;
default: abort ();
}
}
}
}

unsigned int v17 (unsigned short v95, signed char v96, unsigned short v97)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 7;
signed short v99 = -3;
signed char v98 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v13 (signed char v101, signed char v102, signed short v103, unsigned char v104)
{
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
unsigned int v107 = 4U;
unsigned int v106 = 2U;
signed char v105 = -3;
trace++;
switch (trace)
{
case 2: 
{
signed int v108;
unsigned int v109;
unsigned int v110;
signed short v111;
unsigned int v112;
v108 = -2 - -3;
v109 = 2U - v106;
v110 = v107 - 3U;
v111 = 3 + v103;
v112 = v23 (v108, v109, v110, v111);
history[history_index++] = (int)v112;
}
break;
case 14: 
return 2;
default: abort ();
}
}
}
}

unsigned int v3 (void)
{
{
for (;;) {
signed char v115 = -2;
signed char v114 = -1;
signed char v113 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
