#include <stdlib.h>
extern void v1 (unsigned short);
extern void (*v2) (unsigned short);
extern unsigned char v3 (signed char);
extern unsigned char (*v4) (signed char);
extern signed short v5 (unsigned char);
extern signed short (*v6) (unsigned char);
signed int v7 (unsigned char, signed char, signed char);
signed int (*v8) (unsigned char, signed char, signed char) = v7;
extern signed int v9 (void);
extern signed int (*v10) (void);
extern signed char v11 (unsigned int);
extern signed char (*v12) (unsigned int);
signed short v13 (signed int, unsigned char, unsigned char, signed int);
signed short (*v14) (signed int, unsigned char, unsigned char, signed int) = v13;
extern unsigned int v15 (unsigned int, unsigned short, signed int);
extern unsigned int (*v16) (unsigned int, unsigned short, signed int);
signed int v17 (signed int, signed int, unsigned short);
signed int (*v18) (signed int, signed int, unsigned short) = v17;
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed int v21 (unsigned char);
extern signed int (*v22) (unsigned char);
signed int v23 (void);
signed int (*v24) (void) = v23;
signed char v25 (void);
signed char (*v26) (void) = v25;
extern unsigned int v27 (void);
extern unsigned int (*v28) (void);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
signed char v99 = 2;
unsigned char v98 = 1;
signed char v97 = 0;

signed char v25 (void)
{
{
for (;;) {
unsigned short v102 = 2;
signed char v101 = -4;
signed int v100 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
unsigned short v105 = 6;
signed short v104 = 2;
signed char v103 = -1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed int v106, signed int v107, unsigned short v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
unsigned int v111 = 5U;
signed int v110 = -1;
signed short v109 = -4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v13 (signed int v112, unsigned char v113, unsigned char v114, signed int v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned int v118 = 0U;
signed char v117 = 0;
unsigned char v116 = 7;
trace++;
switch (trace)
{
case 4: 
return 1;
case 6: 
{
unsigned int v119;
v119 = v27 ();
history[history_index++] = (int)v119;
}
break;
case 8: 
{
unsigned int v120;
v120 = v27 ();
history[history_index++] = (int)v120;
}
break;
case 10: 
return 1;
default: abort ();
}
}
}
}

signed int v7 (unsigned char v121, signed char v122, signed char v123)
{
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
history[history_index++] = (int)v123;
{
for (;;) {
unsigned short v126 = 2;
signed char v125 = -1;
unsigned int v124 = 1U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
