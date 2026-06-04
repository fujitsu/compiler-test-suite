#include <stdlib.h>
extern unsigned char v3 (unsigned short, signed short, signed char);
extern unsigned char (*v4) (unsigned short, signed short, signed char);
signed short v5 (unsigned char, signed short, signed short, signed int);
signed short (*v6) (unsigned char, signed short, signed short, signed int) = v5;
extern unsigned char v7 (unsigned char, unsigned int);
extern unsigned char (*v8) (unsigned char, unsigned int);
extern signed short v9 (signed short, signed short, signed int);
extern signed short (*v10) (signed short, signed short, signed int);
extern unsigned short v11 (signed short, signed char, unsigned int);
extern unsigned short (*v12) (signed short, signed char, unsigned int);
extern unsigned short v13 (signed int, unsigned int, signed char, signed int);
extern unsigned short (*v14) (signed int, unsigned int, signed char, signed int);
unsigned short v15 (unsigned short, signed short, unsigned short, signed int);
unsigned short (*v16) (unsigned short, signed short, unsigned short, signed int) = v15;
signed int v17 (unsigned char, signed int, signed char);
signed int (*v18) (unsigned char, signed int, signed char) = v17;
extern unsigned short v19 (signed int, unsigned int, unsigned char);
extern unsigned short (*v20) (signed int, unsigned int, unsigned char);
extern signed short v21 (unsigned char, unsigned short);
extern signed short (*v22) (unsigned char, unsigned short);
extern unsigned char v23 (unsigned short, signed char, unsigned char);
extern unsigned char (*v24) (unsigned short, signed char, unsigned char);
signed int v25 (void);
signed int (*v26) (void) = v25;
extern signed char v27 (unsigned char, unsigned char);
extern signed char (*v28) (unsigned char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v102 = -4;
unsigned char v101 = 4;
signed char v100 = 1;

signed int v25 (void)
{
{
for (;;) {
unsigned short v105 = 2;
signed int v104 = 0;
unsigned char v103 = 2;
trace++;
switch (trace)
{
case 10: 
return 3;
default: abort ();
}
}
}
}

signed int v17 (unsigned char v106, signed int v107, signed char v108)
{
history[history_index++] = (int)v106;
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = -4;
signed int v110 = 2;
unsigned char v109 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v15 (unsigned short v112, signed short v113, unsigned short v114, signed int v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
signed int v118 = 1;
unsigned short v117 = 3;
unsigned char v116 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v5 (unsigned char v119, signed short v120, signed short v121, signed int v122)
{
history[history_index++] = (int)v119;
history[history_index++] = (int)v120;
history[history_index++] = (int)v121;
history[history_index++] = (int)v122;
{
for (;;) {
unsigned char v125 = 0;
unsigned short v124 = 0;
unsigned int v123 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
