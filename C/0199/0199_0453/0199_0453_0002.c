#include <stdlib.h>
extern unsigned int v3 (signed int, unsigned short, unsigned short, unsigned int);
extern unsigned int (*v4) (signed int, unsigned short, unsigned short, unsigned int);
extern signed short v5 (signed char, signed int);
extern signed short (*v6) (signed char, signed int);
extern signed short v7 (signed int, signed int, unsigned int, unsigned int);
extern signed short (*v8) (signed int, signed int, unsigned int, unsigned int);
extern void v9 (signed int, unsigned short, signed int);
extern void (*v10) (signed int, unsigned short, signed int);
extern signed char v11 (signed int, unsigned short, signed short);
extern signed char (*v12) (signed int, unsigned short, signed short);
unsigned short v13 (unsigned int, signed short, signed short, unsigned char);
unsigned short (*v14) (unsigned int, signed short, signed short, unsigned char) = v13;
extern unsigned short v15 (unsigned char, unsigned char, unsigned short, unsigned short);
extern unsigned short (*v16) (unsigned char, unsigned char, unsigned short, unsigned short);
signed int v17 (signed char, unsigned char);
signed int (*v18) (signed char, unsigned char) = v17;
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
signed short v21 (signed int, unsigned int, unsigned char, unsigned int);
signed short (*v22) (signed int, unsigned int, unsigned char, unsigned int) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern signed short v25 (unsigned int, signed short, signed char, unsigned char);
extern signed short (*v26) (unsigned int, signed short, signed char, unsigned char);
extern unsigned char v27 (signed char, signed char);
extern unsigned char (*v28) (signed char, signed char);
extern unsigned short v29 (signed char, signed char, unsigned char);
extern unsigned short (*v30) (signed char, signed char, unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed int v99 = 3;
unsigned int v98 = 5U;
signed int v97 = 1;

signed short v21 (signed int v100, unsigned int v101, unsigned char v102, unsigned int v103)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
{
for (;;) {
signed char v106 = -1;
signed int v105 = 3;
signed char v104 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v17 (signed char v107, unsigned char v108)
{
history[history_index++] = (int)v107;
history[history_index++] = (int)v108;
{
for (;;) {
signed short v111 = -2;
signed char v110 = 1;
unsigned int v109 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v13 (unsigned int v112, signed short v113, signed short v114, unsigned char v115)
{
history[history_index++] = (int)v112;
history[history_index++] = (int)v113;
history[history_index++] = (int)v114;
history[history_index++] = (int)v115;
{
for (;;) {
unsigned short v118 = 3;
unsigned short v117 = 5;
unsigned char v116 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
