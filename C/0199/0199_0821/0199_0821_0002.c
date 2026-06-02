#include <stdlib.h>
extern signed char v1 (unsigned short, signed short);
extern signed char (*v2) (unsigned short, signed short);
unsigned char v3 (unsigned char);
unsigned char (*v4) (unsigned char) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned char v7 (void);
extern unsigned char (*v8) (void);
extern signed short v9 (signed char);
extern signed short (*v10) (signed char);
extern signed char v11 (signed int);
extern signed char (*v12) (signed int);
extern unsigned char v13 (unsigned char, signed short);
extern unsigned char (*v14) (unsigned char, signed short);
extern unsigned short v15 (signed short, unsigned char);
extern unsigned short (*v16) (signed short, unsigned char);
unsigned int v17 (signed short, unsigned int, signed int);
unsigned int (*v18) (signed short, unsigned int, signed int) = v17;
extern signed char v19 (unsigned char);
extern signed char (*v20) (unsigned char);
extern signed char v21 (signed int, signed char);
extern signed char (*v22) (signed int, signed char);
unsigned int v23 (unsigned char, signed short, signed char, unsigned int);
unsigned int (*v24) (unsigned char, signed short, signed char, unsigned int) = v23;
extern signed char v25 (signed short, signed short, unsigned int, signed short);
extern signed char (*v26) (signed short, signed short, unsigned int, signed short);
signed char v27 (unsigned int);
signed char (*v28) (unsigned int) = v27;
extern signed char v29 (unsigned int, signed short, unsigned int);
extern signed char (*v30) (unsigned int, signed short, unsigned int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v78 = 7;
unsigned short v77 = 4;
unsigned short v76 = 6;

signed char v27 (unsigned int v79)
{
history[history_index++] = (int)v79;
{
for (;;) {
unsigned char v82 = 6;
unsigned char v81 = 7;
signed char v80 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v23 (unsigned char v83, signed short v84, signed char v85, unsigned int v86)
{
history[history_index++] = (int)v83;
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
{
for (;;) {
signed short v89 = 0;
signed int v88 = -4;
signed char v87 = -4;
trace++;
switch (trace)
{
case 1: 
return 3U;
default: abort ();
}
}
}
}

unsigned int v17 (signed short v90, unsigned int v91, signed int v92)
{
history[history_index++] = (int)v90;
history[history_index++] = (int)v91;
history[history_index++] = (int)v92;
{
for (;;) {
unsigned int v95 = 5U;
signed char v94 = 3;
unsigned int v93 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v3 (unsigned char v96)
{
history[history_index++] = (int)v96;
{
for (;;) {
signed char v99 = 2;
unsigned int v98 = 6U;
unsigned char v97 = 3;
trace++;
switch (trace)
{
case 5: 
return 2;
default: abort ();
}
}
}
}
